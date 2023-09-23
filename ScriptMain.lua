game:GetService("ReplicatedStorage").JK.TR["1Too1l"]:InvokeServer("PickingTools",giveitem)
game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = setspeed
game.Players.LocalPlayer.Character.Humanoid.JumpPower = setjumppower
if cmd == "help" do
    print("[cmd] help: lists all cmds")
    print("[var] giveitem: gives an item")
    print("[var] setspeed: sets an speed")
    print("[var] setjumppower: sets an jump power")
    print("[cmd] infy: starts infinite yield")
