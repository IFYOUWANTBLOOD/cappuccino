local m,d,url = math.random(1,100),math.random(1,100),''
if m == d then
    url = 'https://raw.githubusercontent.com/boop71/cappuccino/main/v3/keyui/cyberpunk%20easter%20egg.lua'
else
    url = 'https://raw.githubusercontent.com/boop71/cappuccino/main/v3/keyui/default.lua'
end
loadstring(game:HttpGet(url))()
