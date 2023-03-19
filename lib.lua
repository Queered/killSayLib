local random_sentence = {}

random_sentence.parts = {
  {name = "ware", options = {"kidware", "lolware", "noobware"}},
  {name = "bad", options = {"is so bad", "is terrible", "is awful"}},
  {name = "buy", options = {"buy", "get", "acquire"}},
  {name = "yware", options = {"proware", "xdware", "lalaware"}},
  {name = "emoji", options = {"\u{1F601}", "\u{1F602}", "\u{1F603}"}}
}

function random_sentence.generate(parts)
  parts = parts or random_sentence.parts
  local selected = {}
  for i, part in ipairs(parts) do
    local options = part.options
    local option = options[math.random(#options)]
    selected[i] = option
  end
  return table.concat(selected, " ")
end

return random_sentence
