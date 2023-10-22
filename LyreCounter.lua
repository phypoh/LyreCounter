if ModUtil ~= nil then

	ModUtil.Mod.Register("LyreCounter")

	local mod = "LyreCounter"
    
    --Zeus Duo extra function
	ModUtil.Path.Wrap("UseLyre",
		function(baseFunc, usee, args)
			thread(InCombatTextArgs,
			{ TargetId = CurrentRun.Hero.ObjectId, Text = "LyreCounterText", Duration = 1, LuaKey = "TempTextData",
				LuaValue = { Amount = GameState.ItemInteractions.HouseLyre01 +1 } })
			baseFunc(usee, args)
		end)
end 