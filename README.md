![](../../workflows/gds/badge.svg) ![](../../workflows/docs/badge.svg) ![](../../workflows/test/badge.svg) ![](../../workflows/fpga/badge.svg)

# Stimulus Generator (+Tile Growth Simulator) Project

Hi! This is my project for TinyTapeout. The Stimulus Generator is an ASIC to be taped out. This repository contains the hardware description and testbench for the Stimulus Generator. It interfaces with the Tile Growth Simulator which runs on an FPGA.

- [Read the documentation for the Stimulus Generator (ASIC)](docs/info.md)

## Tile Growth Simulator (on FPGA)

Tile Growth Simulator is an interactive cellular simulation displayed on a 16×16 LED matrix. On reset, the grid starts blank with a green cursor that can be moved using the directional buttons. The place button colors the tile at the cursor's current position, and the color select button cycles between red and blue. Once the game starts, placed tiles begin spreading outward randomly, growing in random directions at random intervals, filling blank spaces and competing against tiles of the opposing color. The simulation ends when no blank tiles remain. The grid can then be reset and the game played again.

Note: The Tile Growth Simulator is located in the repository linked below

[Tile Growth Simulator](https://github.com/NoahWilmot/Tile-Growth-Simulator)

## Stimulus Generator (on ASIC)

The Stimulus Generator is a peripheral designed to streamline the pre-game setup. Pressing the generate button populates the grid with a randomised pattern of red and blue tiles. The button can be pressed multiple times, layering new patterns on top of existing ones. The game can then be started as normal.

## Where 

Create a constraints file and hook up the inputs/outputs of the top module according to your FPGA. Wire the FPGA, ASIC, push buttons, and WS2812B 16x16 LED Matrix together and enjoy!

## Images


