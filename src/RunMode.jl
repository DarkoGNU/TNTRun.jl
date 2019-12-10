function runMode()
    while true
        b1 = getTile() .+ (0, -1, 0) #first block under the player
        b2 = b1 .+ (0, -1, 0) #second block under the player

        sleep(0.05) #Don't overload the API & wait before removal
           if getBlock(b1) == PiCraft.SAND && getBlock(b2) == PiCraft.TNT
            setBlock(b1, PiCraft.AIR)
            setBlock(b2, PiCraft.AIR)
        end
    end
end
