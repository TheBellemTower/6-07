-----------------------------------------------------------------------------------------
--
-- main.lua
--
--created by Ethan Bellem
--created on April 2018
-----------------------------------------------------------------------------------------

display.setStatusBar(display.HiddenStatusBar)
--setting age 

local age = 15
local ageEntered
local instructions = display.newText( 'Guess my age:', 550, 200, native.systemFont, 128 )
instructions.id = "instructions"
-- making textfield
local ageTextField = native.newTextField( 1550, 200, 750, 128 )
ageTextField.id = "enter day of the week"


local enterButton = display.newImageRect( './assets/sprites/enterButton.png', 650, 300 )
enterButton.x = display.contentCenterX
enterButton.y = 500
enterButton.id = "Enter Button"
-- to work the code
local function onEnterClicked( event )
	ageEntered = tonumber(ageTextField.text)
	repeat
	    if ageEntered == age then
	    	local rightText = display.newText( 'You got it right!', display.contentCenterX, 900, native.systemFont, 128 )

	    elseif ageEntered > age then
	    	local highText = display.newText( 'You are too high. Try again.', display.contentCenterX, 900, native.systemFont, 128 )
	    
	    else
	    	local lowText = display.newText( 'You are too low. Try again.', display.contentCenterX, 900, native.systemFont, 128 )
	    end
	until( ageEntered == age )
end

enterButton:addEventListener( 'touch', onEnterClicked)