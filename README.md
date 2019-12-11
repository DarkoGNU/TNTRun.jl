# TNTRun

[![Build Status](https://travis-ci.com/DarkoGNU/TNTRun.jl.svg?branch=master)](https://travis-ci.com/DarkoGNU/TNTRun.jl)
[![Build Status](https://ci.appveyor.com/api/projects/status/github/DarkoGNU/TNTRun.jl?svg=true)](https://ci.appveyor.com/project/DarkoGNU/TNTRun-jl)
[![Codecov](https://codecov.io/gh/DarkoGNU/TNTRun.jl/branch/master/graph/badge.svg)](https://codecov.io/gh/DarkoGNU/TNTRun.jl)

TNT Run minigame in PiCraft.jl

Example usage:
buildArena(getPos(), 20, 25, 3) - build an arena in position of the player, 20 length, 25 width, 3 floors
fillArena(getPos(), 20, 25, 3) - refill the area created above (you must stand on that bedrock)
runMode() - make the sand and TNT disappear under your feet!

Multiplayer - it should work, but it probably isn't. We need to repair this.

Sorry if this repo is a mess, but I'm a newbie :)
