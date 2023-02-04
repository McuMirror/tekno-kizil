# This file is public domain, it can be freely copied without restrictions.
# SPDX-License-Identifier: CC0-1.0

import math
import os
from random import getrandbits
from typing import Any, Dict, List

import cocotb
from cocotb.binary import BinaryValue
from cocotb.clock import Clock
from cocotb.handle import SimHandleBase
from cocotb.queue import Queue
from cocotb.triggers import RisingEdge, FallingEdge, Edge

TIMEOUT = 1000

riscv_tests = {}
riscv_tests["auipc"] = {
    "TEST_FILE": "./data/rv32ui-p-auipc_static.hex",
    "fail_adr": 0x40000060,
    "pass_adr": 0x40000074,
    "buyruklar": []
}

@cocotb.coroutine
async def buyruklari_oku():
    for test in riscv_tests:
        with open(riscv_tests[test]["TEST_FILE"], 'r') as f:
            buyruklar = [line.rstrip('\n') for line in f]
        riscv_tests[test]["buyruklar"] = buyruklar

@cocotb.coroutine
async def anabellek(dut):
    timout = 0
    await RisingEdge(dut.clk_i)
    for test in riscv_tests:
        while(1):
            memidx = (dut.l1b_adres_o.value.integer-0x40000000) >> 2
            try:
                dut.l1b_deger_i.value = int(riscv_tests[test]["buyruklar"][memidx],16)
            except:
                print("Bos adres: {}".format(memidx))
            if(riscv_tests[test]["pass_adr"] == dut.l1b_adres_o.value.integer):
                print("[TEST] ", test, " passed")
                break
            if(riscv_tests[test]["fail_adr"] == dut.l1b_adres_o.value.integer):
                print("[TEST] ", test, " FAILED")
                assert 0
            await RisingEdge(dut.clk_i)
            timout = timout + 1
            if(timout > TIMEOUT):
                print("[TEST] ", test, " FAILED TIMOUT")
                assert 0
                break
        dut.rst_i.value = 1
        await RisingEdge(dut.clk_i)
        await RisingEdge(dut.clk_i)
        dut.rst_i.value = 0

@cocotb.test()
async def test_teknofest_wrapper(dut):
    await buyruklari_oku()

    await cocotb.start(Clock(dut.clk_i, 10, 'ns').start(start_high=False))

    dut.rst_i.value = 1
    await RisingEdge(dut.clk_i)
    await RisingEdge(dut.clk_i)
    blk = cocotb.start_soon(anabellek(dut))
    dut.rst_i.value = 0
    dut.l1b_bekle_i.value = 0
    await blk
