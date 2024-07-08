-- put logic functions here using the Lua API: https://github.com/black-sliver/PopTracker/blob/master/doc/PACKS.md#lua-interface
-- don't be afraid to use custom logic functions. it will make many things a lot easier to maintain, for example by adding logging.
-- to see how this function gets called, check: locations/locations.json
-- example:

function can_defeat_ghost() 
	return has("firecrackers") 
		or has("lantern")
end

function can_distract_dogs()
	return has("disc") 
		or has("top") 
		or has("bball") 
		or has("wheel")
end

function can_open_flame()
	return has("animalflute") 
		or has("disc") 
		or has("yoyo") 
		or has("top") 
		or has("bball") 
		or has("wheel")
end

function can_break_spikes()
	return has("disc")
		or has("yoyo")
		or has("top")
		or has("bball")
		or has("wheel")
end

function can_break_spikes_below()
	return has("yoyo")
		or has("top")
		or has("bball")
		or has("wheel")
end

function tanking_damage()
	return has("option_weird_tricks_on")
end

function eggs_required(v)
	return has("egg", v)
end

function can_use_keys()
	return has("keyring") or has("key", 6)
end

function can_use_matches()
	return has("matchbox") or has("match", 9)
end

function bubble_short()
	return (has("bwand")
			and hasNot("option_bubble_jumping_off"))
		or has("bbwand")
end

function bubble_long()
	return has("bbwand")
	    or (has("bwand")
			and has("option_bubble_jumping_on"))
end

function disc_hop()
	return has("disc")
		and hasNot("option_disc_hopping_off")
end

function disc_hop_hard()
	return has("disc")
		and has("option_disc_hopping_on")
end

function wheel_hop()
	return has("wheel")
		and has("option_wheel_hopping_on")
end

function fast_travel_fake()
	return has("animalflute")
end

function bunny_warp()
	return has("animalflute")
end

function can_scare_hedgehog()
	return has("animalflute")
		or has("firecrackers")
end

function exclude_song_chests()
	return false
end

function not_in_logic()
	return false
end