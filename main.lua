-----------------------------------------------------------------------------------------
--
-- main.lua
--
-- Created by: Matsuru Hoshi
-- Created on Feb 15 2019
--
-- This file will add a function to an image
-----------------------------------------------------------------------------------------

-- 

display.setDefault( "background", 78/255, 92/255, 114/255)

local options =
{
	text = "Matsuru",
	x = 160,
	y = 100,
	width = 200,
	font = native.systemFont,
	fontSize = 50,
	align = "center"
}

local myText = display.newText( options )
myText:setFillColor( 0, 0, 0 )

local rhino = display.newImageRect( "MyAssets/rhino.png", 300, 136 )
rhino.x = 160
rhino.y = 300

local taz = display.newImageRect( "MyAssets/taz.png", 300, 205 )
taz.x = 500
taz.y = 1000

local function onObjectTouch( event )
	if ( event.phase == "began") then
		display.setDefault( "background", 1, 0, 0 )
		rhino.x = 500
		rhino.y = 1000
		taz.x = 160
		taz.y = 300
		print( "ALERT, YOU'VE AWAKEN TAZ!")

	end
	return true
end

rhino:addEventListener( "touch", onObjectTouch )