ldl = {}
logs = {}
ldll = {"movement","game","serverside","gui","chat","scripthub","sound","https","json","basic","","","","","","",""}
function addlog(input)
  
function inlist(item, list)
    for _, value in ipairs(list) do
        if value == item then
            return true
        end
    end
    return false
end
function giveitem(input)
  game:GetService("ReplicatedStorage").JK.TR["1Too1l"]:InvokeServer("PickingTools",input)
end
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
function loadlib(input)
  table.insert(ldl, input)
end
