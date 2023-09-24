print("Loaded libary: movement")
function setspeed(input)
  if inlist("movement", ldl) then
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = input
  end
end
function setjumppower(input)
  if inlist("movement", ldl) then
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = input
  end
end
-- Define a function to teleport a player to a position
function gotopos(positionString)
    player = game.Players.LocalPlayer -- Change to the player you want to teleport
    
    -- Parse the position string into a Vector3
    positionValues = {}
    for value in string.gmatch(positionString, "%S+") do
        table.insert(positionValues, tonumber(value))
    end
    
    -- Check if the position string contains three values (x, y, z)
    if #positionValues == 3 then
        newPosition = Vector3.new(positionValues[1], positionValues[2], positionValues[3])
        
        -- Teleport the player to the specified position
        player.Character:SetPrimaryPartCFrame(CFrame.new(newPosition))
    else
        warn("Invalid position format. Please use 'x y z' format.")
    end
end

-- Example usage:
gotopos("0 0 0") -- Teleports the player to position (0, 0, 0)
