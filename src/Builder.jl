using PiCraft

function buildArena(pos::Tuple{Real, Real, Real}, length, width, floornumber)
    if length < 10 || width < 10 || floornumber < 1
        post("The size doesn't make sense!!")
        return
    end

    initialBuild(pos, length, width, floornumber)
    fillArena(pos, length, width, floornumber)
end

function initialBuild(pos::Tuple{Real, Real, Real}, length, width, floornumber)
    height = (floornumber + 1) * 10

    #clean the area
    setBlocks(pos .+ (0, -1, 0), pos .+ (length, height - 1, width), PiCraft.AIR)

    #build the floor
    setBlocks(pos .+ (0, -1, 0), pos .+ (length, -1, width), PiCraft.STONE)
    #build the roof
    setBlocks(pos .+ (0, height - 1, 0), pos .+ (length, height - 1, width), PiCraft.STONE)

    #4 corners are needed to build the walls
    cor1 = pos
    cor2 = pos .+ (length, 0, width)
    #and upper corners:
    cor3 = pos .+ (length, height - 1, 0)
    cor4 = pos .+ (0, height - 1, width)

    #build the walls
    setBlocks(cor1, cor3, PiCraft.GLASS)
    setBlocks(cor1, cor4, PiCraft.GLASS)
    setBlocks(cor2, cor3, PiCraft.GLASS)
    setBlocks(cor2, cor4, PiCraft.GLASS)

    #place one bedrock so the arena can be easily refilled
    setBlock(pos .+ (-1, -1, -1), PiCraft.BEDROCK)
end

function fillArena(pos::Tuple{Real, Real, Real}, length, width, floornumber)
    for i = 1:floornumber
        cor1 = pos .+ (1, i * 10, 1)
        cor2 = pos .+ (length - 1, i * 10, width - 1)

        setBlocks(cor1, cor2, PiCraft.TNT)
        setBlocks(cor1 .+ (0, 1, 0), cor2 .+ (0, 1, 0), PiCraft.SAND)
    end
end
