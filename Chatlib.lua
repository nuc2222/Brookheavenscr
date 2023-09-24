print("loaded libary: chat")
chatlogNames = {}
chatlogMessages = {}
shouldLogChat = false
function sendemessage(input)
  game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(input,"All")
end
function onPlayerChat(player, message)
    if shouldLogChat then
        -- Add the message owner's name to the chatlogNames table
        table.insert(chatlogNames, player.Name)
        
        -- Add the message content to the chatlogMessages table
        table.insert(chatlogMessages, message)
        
        -- You can also print the message to the console if needed
        print(player.Name .. " said: " .. message)
    end
end

-- Function to toggle chat logging
function logchat(enableLogging)
    shouldLogChat = enableLogging
end

-- Connect the function to the PlayerChatted event
game.Players.PlayerAdded:Connect(function(player)
    player.Chatted:Connect(function(message)
        onPlayerChat(player, message)
    end)
end)
