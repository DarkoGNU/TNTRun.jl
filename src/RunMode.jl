function runMode()
    players = getPlayerIds()

    while true
        sleep(0.05) #Don't overload the API & wait before removal
        for pl in players
            b1 = getTile(pl) .+ (0, -1, 0) #first block under the player
            b2 = b1 .+ (0, -1, 0) #second block under the player

            if getBlock(b1) == PiCraft.SAND && getBlock(b2) == PiCraft.TNT
                setBlock(b1, PiCraft.AIR)
                setBlock(b2, PiCraft.AIR)
            end
        end
    end
end
