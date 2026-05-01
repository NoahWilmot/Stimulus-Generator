# Stimulus Generator testbench

`test.py` contains the testbench for the Stimulus Generator. It runs three tests to ensure the functionality of the design.

## test_basic

`test_basic` presses gen and monitors the sweep. It checks that `wants_ctrl` is high for the proper amount of clock cycles. Additionally, it checks that `wr_data`, `wr_row`, and `wr_col` are always proper values.

## test_grids

`test_grids` presses `gen` and records the resulting pattern in the grid. It waits a few cycles and presses `gen` again, recording the resulting pattern in the grid once more. It then checks that the grid patterns are unique.

## test_passive

`test_passive` checks that `wants_ctrl` and `wr_en` are both low before a `gen` press. Then, it presses `gen` and waits for the sweep to complete. It then checks that `wants_ctrl` and `wr_en` are both low following the `gen` press. This ensures that Stimulus Generator is not driving the grid outside of an active sweep.
