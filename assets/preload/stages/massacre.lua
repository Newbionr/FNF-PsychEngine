function onCreate()
	-- background shit
--stage1
	makeLuaSprite('stage', 'Bluehall', -200, -550);
	setLuaSpriteScrollFactor('stage', 1.0, 1.0);
	addLuaSprite('stage', false);
--stage2
	makeLuaSprite('stageback', 'Snow', -300, -800);
	setLuaSpriteScrollFactor('stageback', 0.9, 0.9);
	addLuaSprite('stageback', false);
        
        setProperty('stageback.visible', false);


end


function onEvent(name,value1,value2)
          if name == 'Play Animation'then

                    if value1 == '2' then
                               setProperty('stage.visible', false);
                               setProperty('stageback.visible', true);
                    end


                    if value1 == '1' then
                               setProperty('stageback.visible', false);
                               setProperty('stage.visible', true);
                    end


                    if value1 == '3' then
			    doTweenAlpha('hud', 'camHUD', 0, 1, 'linear')
		    end


		    if value1 == '4' then
			    doTweenAlpha('hud', 'camHUD', 1, 1, 'linear')
                    end

          end

end




	

