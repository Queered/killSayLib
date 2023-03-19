local random_sentence = loadstring(game:HttpGet("https://raw.githubusercontent.com/Queered/killSayLib/main/lib.lua"))()

-- gen a random sentence using the default parts table
local sentence1 = random_sentence.generate()
print(sentence1)

-- gen a random sentence using custom parts
local custom_parts = {
  {name = "adjective", options = {"big", "small", "red"}},
  {name = "noun", options = {"cat", "dog", "bird"}},
  {name = "verb", options = {"runs", "jumps", "flies"}},
  {name = "preposition", options = {"over", "under", "through"}},
  {name = "article", options = {"the", "a"}}
}
local sentence2 = random_sentence.generate(custom_parts)
print(sentence2)
