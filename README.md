![](../../workflows/gds/badge.svg) ![](../../workflows/docs/badge.svg) ![](../../workflows/test/badge.svg) ![](../../workflows/fpga/badge.svg)

# Stimulus Generator (+Tile Growth Simulator) Project

Hi! This is my project for TinyTapeout. The Stimulus Generator is an ASIC to be taped out. This repository contains the hardware description and testbench for the Stimulus Generator. It interfaces with the Tile Growth Simulator which runs on an FPGA.

## Tile Growth Simulator (on FPGA)

Tile Growth Simulator is an interactive cellular simulation displayed on a 16×16 LED matrix. On reset, the grid starts blank with a green cursor that can be moved using the directional buttons. The place button colors the tile at the cursor's current position, and the color select button cycles between red and blue. Once the game starts, placed tiles begin spreading outward randomly, growing in random directions at random intervals, filling blank spaces and competing against tiles of the opposing color. The simulation ends when no blank tiles remain. The grid can then be reset and the game played again.

The Tile Growth Simulator is located in the repository linked here: [Tile Growth Simulator](https://github.com/NoahWilmot/Tile-Growth-Simulator)

The repository linked above contains information on configuring the entire system (Tile Growth Simulator + Stimulus Generator).

## Stimulus Generator (on ASIC)

The Stimulus Generator is a peripheral designed to streamline the pre-game setup. Pressing the generate button populates the grid with a randomised pattern of red and blue tiles. The button can be pressed multiple times, layering new patterns on top of existing ones. The game can then be started as normal.

- [Read the documentation for the Stimulus Generator (ASIC)](docs/info.md)

Please explore the rest of the repository for a look at the hardware description of the Stimulus Generator and the testbench used to ensure its functionality.


