local pos1a = Vector3.new(-117, 107, -204)
local pos1b = Vector3.new(-96, 107, -309)

local pos2a = Vector3.new(183, 58, 44)
local pos2b = Vector3.new(201, 58, -61)

local pos3a = Vector3.new(22, 64, -62)
local pos3b = Vector3.new(86, 64, 51)

local pos4a = Vector3.new(-193, 50, 292)
local pos4b = Vector3.new(-225, 63, 144)

local pos5a = Vector3.new(-168, 156, 78)
local pos5b = Vector3.new(-155, 156, -67)

local maxDiff = 35

local TP = {}

local function isCloseEnough(position1, position2)
    return (math.abs(position1.X - position2.X) <= maxDiff) and 
           (math.abs(position1.Y - position2.Y) <= maxDiff) and 
           (math.abs(position1.Z - position2.Z) <= maxDiff)
end

function TP:checkAndMovePlayer()
    local player = game.Players.LocalPlayer
    local playerPosition = player.Character.HumanoidRootPart.Position

    if isCloseEnough(playerPosition, pos1a) then
        player.Character:MoveTo(pos1b)
    elseif isCloseEnough(playerPosition, pos1b) then
        player.Character:MoveTo(pos1a)
    end

    if isCloseEnough(playerPosition, pos2a) then
        player.Character:MoveTo(pos2b)
    elseif isCloseEnough(playerPosition, pos2b) then
        player.Character:MoveTo(pos2a)
    end

    if isCloseEnough(playerPosition, pos3a) then
        player.Character:MoveTo(pos3b)
    elseif isCloseEnough(playerPosition, pos3b) then
        player.Character:MoveTo(pos3a)
    end

    if isCloseEnough(playerPosition, pos4a) then
        player.Character:MoveTo(pos4b)
    elseif isCloseEnough(playerPosition, pos4b) then
        player.Character:MoveTo(pos4a)
    end

    if isCloseEnough(playerPosition, pos5a) then
        player.Character:MoveTo(pos5b)
    elseif isCloseEnough(playerPosition, pos5b) then
        player.Character:MoveTo(pos5a)
    end
end

return TP
