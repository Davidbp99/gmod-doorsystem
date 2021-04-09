# gmod-doorsystem
Want to block a button of a gmod map so just a rank or darkrp job can press it? This is what this addon can do for you
## How do I get the button ID?
Look at the button or door and use this: lua_run Entity(1):ChatPrint(Entity(1):GetEyeTrace().Entity:MapCreationID())

if you are using ulx. Then this could also work: ulx luarun Entity(1):ChatPrint(Entity(1):GetEyeTrace().Entity:MapCreationID())
