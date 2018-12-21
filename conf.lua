if love.filesystem.isFused() and love.filesystem.getInfo("OUTSIDE_ASSET", "file") then
	assert(love.filesystem.mount(love.filesystem.getSourceBaseDirectory(), ""), "failed to load game directory")
end

function love.conf(t)
	-- We need to use "DEPLS" identity to match with livesim2
	t.identity 	= "DEPLS"
	t.version  	= "11.0"
	t.console	= false
	
	t.window.title 	= "SIF Icon Builder"
	t.window.icon	= "assets/images/icon.png"
	t.window.width	= 560
	t.window.height = 400
	t.window.msaa = 0
	t.window.resizeable	= false
	t.window.fullscreen = false
	
    t.modules.audio = false
    t.modules.joystick = false
    t.modules.physics = false
    t.modules.sound = false
    t.modules.thread = false
    t.modules.touch = false
    t.modules.video = false
end