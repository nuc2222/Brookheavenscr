print("loaded script hub!!!")
scripthub№ = {
  'loadstring(game:HttpGet("https://raw.githubusercontent.com/nuc2222/Brookheavenscr/main/ScriptMain.lua"))()',
  'loadstring(game:HttpGet("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source"))()',
  'loadstring(game:HttpGet(("https://raw.githubusercontent.com/JustAP1ayer/BABFTPLAYERHUB/main/BABFTV2.lua"),true))()',
}
function loadscript(number)
  load(scripthub№[number] .. "")()
