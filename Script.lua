--[[
The following functions have been exposed to lua:
setBackground(string aPath) sets the background to the texture in the folder textures.
createButton(string area name which the player enters, string context); adds a button to the current screen
createTextfield(string context); adds a textfield to the top of the screen.
CLS(); clears the screen.
exitGame(); exits the game.
playSound(string path to sound)
]]--


gopad1 = false;
gopad2 = false;
gohouse1 = false;
gohouse2 = false;

function story(aName)
	if(aName == "start") then
	    CLS();
		setBackground("posters-twee-paden.JPG")
		createTextfield("Quick!! You have to run from the monster.\n Which pad do you take??")
		createButton("pad2", "Second pad.")
		createButton("pad1", "First pad")
	end

	if(aName == "pad1") then
	if(gopad1 == false) then
		   CLS();
           playSound("footstep.wav")
			gopad1 = true;
		   setBackground("cave.JPG");
		   createTextfield("The monster says something, remember it for later... \n You should go back")
		   createButton("start", "Go back");
		   createButton("car2", "Go in the car")
	  end
  end

  if(aName == "car2") then
           CLS();
		   setBackground("bos.JPG");
		   createTextfield("You got in the flying car, he flies away \n You got ??? ending")
		   createButton("fly" , "Fly away")
	end

	if(aName == "pad2") then
	if(gopad2 == false) then
	       CLS();
           playSound("footstep.wav")
			gopad2 = true;
		   setBackground("huizen.JPG");
		   createTextfield("Which house would you like to enter?")
		   createButton("house2" , "Go in the second house")
		   createButton("house1" , "Go in the first house")

       end
	end
	 if(aName == "house1") then
		CLS();
		setBackground("huis1.JPG");
		playSound("footstep.wav")
		createTextfield("The flying car got you... You're dead \n You got random ending")
		createButton("car3", "Let the flying car run you over")
	end

	if(aName == "house2") then
	if(gohouse2 == false) then
		CLS()
		playSound("footstep.wav")
		gohouse2 = true;
		setBackground("huistwee.jpg")
		createTextfield("The monster got you!! \n Unless you know the right sentence...")
		createButton("idk" , "idk")
		createButton("idk" , "idk")
		createButton("good" , "good")
		createButton("idk" , "idk")
		end
	end

	if(aName == "good") then
		CLS()
		createTextfield("Congrats, you got good ending!! :D")
		createButton("exit" , "Exit")
	end

	if(aName == "idk") then
	    CLS()
		createTextfield("You got it wrong... The monster kills you \n You got bad ending :(")
		createButton("die" , "Get eaten by monster")
	end

	if(aName == "fly") then
	   exitGame();
	end

	if(aName == "car3") then
	    exitGame();
	end

	if(aName == "exit") then
		exitGame();
	end

	if(aName == "die") then
	   exitGame();
	end
end

