local sayMessage = function(msg, target) game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(msg, target or "ALL") end

local random_sentence = loadstring(game:HttpGet("https://raw.githubusercontent.com/Queered/killSayLib/main/lib.lua"))()

-- gen a random sentence using custom parts
local custom_parts = {
  {name = "adjective", options = {"buy", "cop", "get"}},
  {name = "noun", options = {"genechair", "chairgene", "geneware"}},
  {name = "verb", options = {"because", "cus", "bcs"}},
  {name = "preposition", options = {"it is best", "it is coolest", "it is hot"}},
  {name = "article", options = {"💯", "💀","😇","😍"}}
}

local function RandomSay() -- randomsay func
  sayMessage(random_sentence.generate(custom_parts))
 end

while wait(1) do
RandomSay()
end
