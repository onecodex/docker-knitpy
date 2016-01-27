#!/usr/bin/env bats

@test "Python 2.7.X should be installed" {
    V=$(python --version 2>&1)
    [[ $V == Python\ 2.7* ]]
}

@test "Scientific Python modules should be installed" {
    R=$(pip freeze)
    [[ $R == *knitpy* ]]
    [[ $R == *pandas* ]]
    [[ $R == *numpy* ]]
}
