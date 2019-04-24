-----------------------------------------------------------------------------------------
--
-- Created On: Wajd Mariam
-- Created On: April 24, 2019
-----------------------------------------------------------------------------------------
display.setDefault( "background", 147/255, 252/555, 244/255 )

local  EnterButton = display.newImageRect ("assets/sprites/enterbutton.png" , 175, 75)
EnterButton.x = 160
EnterButton.y = 425
EnterButton.id = "Enter Button"


local input1 = native.newTextField ( display.contentCenterX, display.contentCenterY + 25, 225, 40 )
input1.id = "Input 1 "


local input2 = native.newTextField ( display.contentCenterX, display.contentCenterY + 75, 225, 40)
input2.id = "input 2"


local ResponseText = display.newText ( "Answer:" , 160 , 130, native.systemFont, 20)
ResponseText: setFillColor ( 255,255,255 )


multiplicationText = display.newText( "X", 160, 185, native.systemFont, 50 )
multiplicationText:setFillColor( 255/255, 255/255, 255/255 )


local function EnterButtonTouch( event )
	number1 = tonumber (input1.text)
    number2 = tonumber (input2.text)
    addFunction = 1

	answer = number1

	repeat 

		while addFunction < number2 do

			addFunction = addFunction + 1

			answer = answer + number1

		end
     
     until

	addFunction == number2

		print (answer)

		ResponseText.text = "The answer is ".. answer



	end




EnterButton:addEventListener ( "touch" , EnterButtonTouch )  









