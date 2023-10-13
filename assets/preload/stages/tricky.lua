function onCreate()
	--background boi
--stage1
	makeLuaSprite('stageback', 'tricky/ground', -750, -700);
	setLuaSpriteScrollFactor('stageback', 0.9, 0.9);
	scaleObject('stageback', 2.0, 2.0);
                 addLuaSprite('stageback', false);
--stage2
	makeLuaSprite( 'stageback2', 'stageback2', 0, 0);
	setLuaSpriteScrollFactor('stageback2', 0.6, 0.6);
                 addLuaSprite('stageback2', false);

	setProperty('stageback2.visible', false);
--stage3
	makeLuaSprite( 'stageback3', 'stageback3', 0, 0);
	setLuaSpriteScrollFactor('stageback3', 0.6, 0.6);
                 addLuaSprite('stageback3', false);
	setProperty('stageback3.visible', false);


end

function onEvent(name,value1,value2)
	if name == 'Play Animation' then 
		
		if value1 == '2' then
			setProperty('stageback.visible', false);
			setProperty('stageback2.visible', true);
			setProperty('stageback3.visible', false);
		end

		if value1 == '3' then
			setProperty('stageback.visible', false);
			setProperty('stageback2.visible', false);
			setProperty('stageback3.visible', true);
		end
	
		if value1 == '1' then
			setProperty('stageback2.visible', false);
			setProperty('stageback.visible', true);
			setProperty('stageback3.visible', false);
		end
	end
end
