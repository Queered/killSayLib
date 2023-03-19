local sayMessage = function(msg, target) replicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(msg, target or "ALL") end

local random_sentence = loadstring(game:HttpGet("https://raw.githubusercontent.com/Queered/killSayLib/main/lib.lua"))()

-- gen a random sentence using custom parts
local custom_parts = {
  {name = "adjective", options = {"big", "small", "red"}},
  {name = "noun", options = {"cat", "dog", "bird"}},
  {name = "verb", options = {"runs", "jumps", "flies"}},
  {name = "preposition", options = {"over", "under", "through"}},
  {name = "article", options = {"the", "a"}}
}

local function RandomSay() -- randomsay func
  sayMessage(random_sentence.generate(custom_parts))
 end

while wait(1)
RandomSay()
end
