--[[
    Creator(s): WeAreDevs
    Source: https://wearedevs.net/scripts/d/6228f370e85d26dd94af7537/Infinite%20Jump
    Statuses:
        - [2023-04-22]
        	- Working | I2rys#0663 | Sirhurt
		- [2023-04-25]
            - Working | I2rys#0663 | Private Exploit (Uses WrdAPI)
]]

--Toggles the infinite jump between on or off on every script run
_G.infinjump = not _G.infinjump

if _G.infinJumpStarted == nil then
	--Ensures this only runs once to save resources
	_G.infinJumpStarted = true
	
	--Notifies readiness
	game.StarterGui:SetCore("SendNotification", {Title="WeAreDevs.net"; Text="The WeAreDevs Infinite Jump exploit is ready!"; Duration=5;})

	--The actual infinite jump
	local plr = game:GetService('Players').LocalPlayer
	local m = plr:GetMouse()
	m.KeyDown:connect(function(k)
		if _G.infinjump then
			if k:byte() == 32 then
			humanoid = game:GetService'Players'.LocalPlayer.Character:FindFirstChildOfClass('Humanoid')
			humanoid:ChangeState('Jumping')
			wait()
			humanoid:ChangeState('Seated')
			end
		end
	end)
end