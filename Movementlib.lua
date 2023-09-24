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
