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

@test "Knitpy installed properly" {
    knitpy example.pymd
    C=$(md5sum /knitpy/example.html)
    [[ $C == "e099cb277456f58c1a669c6aada3794f /knitpy/example.html" ]]
}
