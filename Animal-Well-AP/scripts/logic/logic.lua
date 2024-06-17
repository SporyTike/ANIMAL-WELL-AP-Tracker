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

function taking_damage()
	return true
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

function fast_travel()
	return starting_area()
	or (bird_flute_chest()
		and activated_bird_fast_travel())
	or (fish_west()
		and activated_fish_fast_travel())
	or (frog_dark_room()
		and activated_frog_fast_travel())
	or (bear_middle_phone_room()
		and activated_bear_fast_travel())
	or (dog_fast_travel_room()
		and activated_dog_fast_travel())
	or (hippo_entry()
		and activated_hippo_fast_travel())
	or fast_travel_fish_teleport()
	or fast_travel_fake()
end

function fast_travel_fake()
	return starting_area()
		and has("animalflute")
end

function bunny_warp()
	return has("animalflute")
end

function activated_bear_fast_travel()
	return bear_middle_phone_room()
		and has("animalflute")
end

function activated_bird_fast_travel()
	return bird_flute_chest()
		and has("animalflute")
end

function activated_bonefish_fast_travel()
	return abyss_lower()
		and has("animalflute")
end

function activated_dog_fast_travel()
	return dog_fast_travel_room()
		and has("animalflute")
end

function activated_fish_fast_travel()
	return fish_west()
		and has("animalflute")
end

function activated_frog_fast_travel()
	return frog_bird_after_yoyo_2()
		and has("animalflute")
end

function activated_hippo_fast_travel()
	return hippo_entry()
		and has("animalflute")
end

function event_candle_bear()
	return bear_dark_maze()
		and ((has("bwand")
			and can_use_matches())
		or (has("disc")
			and can_use_matches()))
end

function event_candle_first()
	return starting_after_ghost()
		and (has("firecrackers")
			and can_use_matches())
end

function event_candle_frog()
	return frog_near_wombat()
		and can_use_matches()
end

function event_candle_dog_bat()
	return dog_bat_room()
		and can_use_matches()
end

function event_candle_dog_dark()
	return dog_area()
		and can_use_matches()
end

function event_candle_dog_disc_switches()
	return dog_upper_above_switch_lines()
		and ((has("disc")
			and can_use_matches())
		or (has("remote")
			and can_use_matches())
		or (has("top")
			and can_use_matches()))
end

function event_candle_dog_many_switches()
	return dog_many_switches()
		and can_use_matches()
end

function event_candle_dog_switch_box()
	return dog_upper_past_lake()
		and can_use_matches()
end

function event_candle_penguin()
	return fish_lower()
		and ((has("disc")
			and can_use_matches())
		or (has("bwand")
			and can_use_matches()))
end

function abyss()
	return fish_boss_2()
		and ((has("top")
			and has("emedal")
			and has("disc"))
		or (has("top")
			and has("emedal")
			and wheel_hop())
		or (has("top")
			and has("emedal")
			and has("bwand")))
end

function abyss_lower()
	return abyss()
	or (uv_lantern_spot()
		and activated_bonefish_fast_travel())
end

function b_ball_chest()
	return kangaroo_room()
end

function b_wand_chest()
	return fish_wand_pit()
end

function bb_wand_chest()
	return hippo_skull_room()
end

function bear_above_chameleon()
	return bear_upper_phone_room()
		and (has("yoyo")
			or (has("bball")
				and has("option_weird_tricks_on")))
end

function barcode_bunny()
	return (dog_upper_past_lake()
		and has("animalflute"))
	or (home()
		and has("animalflute"))
end

function bear_area_entry()
	return bird_area()
end

function bear_capybara_and_below()
	return (bear_area_entry()
		and (can_use_keys()
			or bubble_short()))
	or bear_connector_passage()
end

function bear_chameleon_room_1()
	return bear_dark_maze()
end

function bear_chameleon_room_2()
	return bear_above_chameleon()
		and ((has("yoyo")
			and has("slink")
			and has("flute"))
		or (has("yoyo")
			and has("slink")
			and has("firecrackers"))
		or (has("bball")
			and has("animalflute")
			and has("option_weird_tricks_on"))
		or (has("bball")
			and has("firecrackers")
			and has("option_weird_tricks_on")))
end

function bear_chinchilla_song_room()
	return fast_travel_fake()
end

function bear_connector_passage()
	return bear_hedgehog_square()
		and has("slink")
end

function bear_crow_rooms()
	return (bear_middle_phone_room()
		and (has("slink")
			or (has("bball")
				and has("option_weird_tricks_on"))))
	or bear_shadow_egg_spot()
end

function bear_dark_maze()
	return (bear_capybara_and_below()
		and (can_use_keys()
			or (bubble_short()
				and has("option_weird_tricks_on"))
			or (has("bball")
				and has("option_weird_tricks_on"))))
	or (bear_chameleon_room_1()
		and (has("bwand")
			or has("disc")))
	or bear_razzle_egg_spot()
end

function bear_future_egg_room()
	return bear_capybara_and_below()
	or (bear_chinchilla_song_room()
		and bunny_warp())
end

function bear_hedgehog_square()
	return bear_crow_rooms()
		and (has("slink")
			or (has("bball")
				and has("option_weird_tricks_on")))
end

function bear_kangaroo_waterfall()
	return (bear_area_entry()
		and (has("slink")
			or (has("top")
				and has("yoyo"))
			or (has("top")
				and has("bball"))
			or (has("yoyo")
				and has("bball")
				and has("option_weird_tricks_on"))))
	or bunny_warp()
	or bear_map_bunny_spot()
end

function bear_ladder_after_chameleon()
	return bear_chameleon_room_1()
	or bear_kangaroo_waterfall()
end

function bear_map_bunny_spot()
	return fast_travel_fake()
end

function bear_match_chest_spot()
	return (bear_middle_phone_room()
		and has("bball")
		and has("disc")
		and has("option_weird_tricks_on"))
	or (bear_connector_passage()
		and (has("slink")
			or (has("bwand")
				and tanking_damage())
			or (has("disc")
				and tanking_damage()
				and has("option_weird_tricks_on"))))
	or (dog_elevator_upper()
		and has("bwand"))
	or (chocolate_egg_spot()
		and bubble_long())
end

function bear_middle_phone_room()
	return (bear_kangaroo_waterfall()
		and has("slink"))
	or bear_connector_passage()
	or bear_chameleon_room_2()
	or behind_kangaroo()
end

function bear_razzle_egg_spot()
	return bear_area_entry()
		and ((defeated_chameleon()
			and bubble_short())
		or (defeated_chameleon()
			and disc_hop_hard()))
end

function bear_shadow_egg_spot()
	return (bear_crow_rooms()
		and (has("slink")
			or has("lantern")
			or taking_damage()))
	or bear_chameleon_room_2()
end

function bear_slink_room()
	return bear_ladder_after_chameleon()
end

function bear_shadow_egg_spot()
	return (bear_crow_rooms()
		and (has("slink")
			or has("lantern")
			or tanking_damage()))
	or (bear_above_chameleon()
		and ((has("yoyo")
			and has("slink")
			and has("animalflute"))
		or (has("yoyo")
			and has("slink")
			and has("firecrackers"))
		or (has("bball")
			and has("animalflute")
			and has("option_weird_tricks_on"))
		or (has("bball")
			and has("firecrackers")
			and has("option_weird_tricks_on"))))
end

function bear_transcendental()
	return (bear_area_entry()
		and (bubble_short()
			or disc_hop_hard()))
	or (bear_slink_room()
		and ((has("slink")
			and has("bwand"))
		or (has("top")
			and has("bwand"))
		or (has("slink")
			and disc_hop())
		or (has("top")
			and disc_hop())
		or (has("bball")
			and disc_hop())
		or (has("bball")
			and has("bwand"))))
end

function bear_truth_egg_spot()
	return (bird_area()
		and disc_hop_hard())
	or (bear_kangaroo_waterfall()
		and has("disc"))
end

function bear_upper_phone_room()
	return (bear_match_chest_spot()
		and ((has("slink")
			and has("yoyo"))
		or (has("slink")
			and has("bball")
			and has("option_weird_tricks_on"))
		or (has("yoyo")
			and has("bball")
			and has("option_weird_tricks_on"))))
	or bear_chameleon_room_2()
end

function behind_kangaroo()
	return (dog_swordfish_lake_ledge()
		and has("slink"))
	or kangaroo_blocks()
end

function bird_area()
	return starting_after_ghost()
	or fish_boss_2()
	or dog_at_mock_disc()
	or frog_ostrich_attack()
end

function bird_below_mouse_statues()
	return bird_area()
		and can_break_spikes_below()
end

function bird_capybara_waterfall()
	return (bird_area()
		and (has("disc")
			or has("bubble_short")))
	or (frog_dark_room()
		and has("bwand"))
end

function bird_flute_chest()
	return (bird_area()
		and eggs_required(8))
	or activated_bird_fast_travel()
end

function bobcat_room()
	return (fish_lower()
		and has("top"))
	or (frog_elevator_and_ostrich_wheel()
		and has("top"))
end

function bulb_bunny_spot()
	return fast_travel_fake()
end

function bunny_barcode()
	return bardcode_bunny()
end

function bunny_chinchilla_vine()
	return bear_chinchilla_song_room()
end

function bunny_crow()
	return bear_crow_rooms()
		and has("animalflute")
end

function bunny_disc_spike()
	return dog_swordfish_lake_ledge()
		and (has("disc")
			or (bubble_long()
				and wheel_hop()
				and has("option_weird_tricks_on")))
end

function bunny_dream()
	return starting_area()
end

function bunny_duck()
	return bird_area()
		and has("animalflute")
end

function bunny_face()
	return starting_area()
		and has("animalflute")
end

function bunny_file_bud()
	return bunny_file_bud()
end

function bunny_fish()
	return fish_upper()
		and has("animalflute")
end

function bunny_ghost_dog()
	return bear_hedgehog_square()
		and has("mdisc")
		and has("animalflute")
		and activated_bear_fast_travel()
end

function bunny_lava()
	return dog_upper_past_lake()
		and (bubble_long()
			and has("remote"))
end

function bunny_map()
	return bear_map_bunny_spot()
end

function bunny_mural()
	return bird_area()
		and has("remote")
end

function bunny_water_spike()
	return water_spike_bunny_spot()
end

function bunny_tv()
	return home()
		and has("animalflute")
end

function bunny_uv()
	return bird_area()
		and has("uvlantern")
end

function candle_area()
	return starting_area()
		and event_candle_first()
		and event_candle_dog_dark()
		and event_candle_dog_switch_box()
		and event_candle_dog_many_switches()
		and event_candle_dog_disc_switches()
		and event_candle_dog_bat()
		and event_candle_penguin()
		and event_candle_frog()
		and event_candle_bear()
		and has("bwand")
end

function candle_bear()
	return bear_dark_maze()
		and ((has("bwand")
			and can_use_matches())
		or (has("disc")
			and can_use_matches()))
end

function candle_dog_bat()
	return dog_bat_room()
		and can_use_matches()
end

function candle_dog_dark()
	return dog_area()
		and can_use_matches()
end

function candle_dog_disc_switches()
	return dog_upper_above_switch_lines()
		and ((has("disc")
			and can_use_matches())
		or (has("remote")
			and can_use_matches())
		or (has("top")
			and can_use_matches()))
end

function candle_dog_many_switches()
	return dog_many_switches()
		and can_use_matches()
end

function candle_dog_switch_box()
	return dog_upper_past_lake()
		and can_use_matches()
end

function candle_fish()
	return fish_lower()
		and ((has("disc")
			and can_use_matches())
		or (has("bwand")
			and can_use_matches()))
end

function candle_first()
	return starting_after_ghost()
		and can_use_matches()
end

function candle_frog()
	return frog_near_wombat()
		and can_use_matches()
end

function chest_on_spikes_region()
	return (fish_boss_1()
		and bubble_short())
	or (bobcat_room()
		and has("wheel"))
end

function chocolate_egg_spot()
	return (bear_match_chest_spot()
		and has("bwand"))
	or (top_of_the_well()
		and has("bwand"))
end

function defeated_chameleon()
	return bear_chameleon_room_2()
end

function disc_spot()
	return dog_area()
		and has("mdisc")
end

function dog_area()
	return bird_area()
	or dog_upside_down_egg_spot()
	or dog_at_mock_disc()
end

function dog_above_fast_travel()
	return dog_fast_travel_room()
		and (has("slink")
			or bubble_short())
end

function dog_at_mock_disc()
	return dog_area()
end

function dog_bat_room()
	return dog_many_switches()
	or kangaroo_room()
end

function dog_chinchilla_skull()
	return dog_area()
		and (has("bwand")
			or has("remote")
			or has("disc")
			or has("bball")
			or (has("top")
				and has("option_weird_tricks_on")))
end

function dog_elevator()
	return dog_upper_east()
		and has("slink")
end

function dog_elevator_upper()
	return dog_elevator()
		and dog_wheel_flip()
end

function dog_fast_travel_room()
	return (dog_under_fast_travel_room()
		and (can_distract_dogs()
			or bubble_long()
			or has("wheel")))
	or dog_above_fast_travel()
	or (dog_swordfish_lake_ledge()
		and has("disc"))
end

function dog_many_switches()
	return (dog_upper_past_lake()
		and (has("bball")
			or has("yoyo")
			or has("disc")
			or (has("wheel")
				and has("bwand"))
			or wheel_hop()
			or has("top")))
	or (dog_upside_down_egg_spot()
		and has("remote"))
end

function dog_mock_disc_shrine()
	return dog_fast_travel_room()
		and (has("slink")
			or wheel_hop()
			or (has("top")
				and has("option_weird_tricks_on")))
end

function dog_swordfish_lake_ledge()
	return dog_fast_travel_room()
		and (has("disc")
			or bubble_long())
end

function dog_under_fast_travel_room()
	return (dog_upper_past_lake()
		and (switch_next_to_bat_room()
			or bubble_short()
			or disc_hop()))
	or dog_fast_travel_room()
end

function dog_upper()
	return bird_area()
	or dog_upper_east()
end

function dog_upper_above_switch_lines()
	return (dog_upper()
		and (has("disc")
			or has("remote")
			or has("top")))
	or (dog_upper_past_lake()
		and (can_distract_dogs()
			or tanking_damage()))
end

function dog_upper_above_switch_lines_to_upper_east()
	return (dog_upper_above_switch_lines()
		and (has("disc")
			or has("remote")
			or has("top")))
	or (dog_upper_east()
		and bubble_short())
end

function dog_upper_east()
	return dog_upper_above_switch_lines_to_upper_east()
end

function dog_upper_past_lake()
	return (dog_upper()
		and (disc_hop()
			or bubble_long()))
	or (dog_under_fast_travel_room()
		and bubble_short())
	or (dog_fast_travel_room()
		and has("bwand"))
	or (dog_upper_above_switch_lines()
		and ((has("disc")
			and has("top"))
		or (has("remote")
			and can_distract_dogs())
		or (has("remote")
			and tanking_damage())))
end

function dog_upside_down_egg_spot()
	return (dog_many_switches()
		and (has("remote")
			or has("disc")
			or has("top")))
	or (dog_area()
		and bubble_short())
end

function dog_wheel()
	return dog_elevator()
		and has("remote")
end

function dog_wheel_flip()
	return dog_wheel()
		and has("yoyo")
end

function egg_65()
	return bird_area()
		and (has("bwand")
			or has("disc")
			or wheel_hop())
		and eggs_required(64)
end

function egg_ancient()
	return fish_west()
		and (bubble_short()
		or disc_hop_hard()
		or (has("bwand")
			and has("disc")))
end

function egg_big()
	return dog_elevator_upper()
end

function egg_brick()
	return fish_boss_1()
		and has("disc")
		and has("wheel")
end

function egg_brown()
	return dog_above_fast_travel()
		and has("slink")
end

function egg_bubble()
	return frog_under_ostrich_statue()
		and (has("bwand")
			or has("disc"))
end

function egg_chaos()
	return bear_middle_phone_room()
end

function egg_chocolate()
	return chocolate_egg_spot()
end

function egg_clover()
	return starting_area()
end

function egg_crystal()
	return dog_above_fast_travel()
		and ((has("top")
			and has("bball")
			and has("remote")
			and has("wheel")
			and has("slink"))
		or (has("top")
			and has("bball")
			and has("remote")
			and has("wheel")
			and has("disc")
			and has("option_weird_tricks_on")))
end

function egg_dazzle()
	return fish_upper()
		and (has("bwand")
			or (has("disc")
				and has("wheel")))
end

function egg_depraved()
	return dog_upper_above_switch_lines()
		and ((has("disc")
			and can_defeat_ghost())
		or (has("remote")
			and can_defeat_ghost())
		or (has("top")
			and can_defeat_ghost())
		or (has("disc")
			and event_candle_dog_disc_switches())
		or (has("remote")
			and event_candle_dog_disc_switches())
		or (has("top")
			and event_candle_dog_disc_switches()))
end

function egg_desert()
	return frog_elevator_and_ostrich_wheel()
end

function egg_dream()
	return frog_ostrich_attack()
end

function egg_evil()
	return dog_upper()
		and has("animalflute")
end

function egg_fire()
	return frog_worm_shaft_top()
		and (has("disc")
			or bubble_short())
end

function egg_forbidden()
	return dog_swordfish_lake_ledge()
		and (has("disc")
			or bubble_long())
end

function egg_friendship()
	return fish_tube_room()
end

function egg_future()
	return bear_future_egg_room()
end

function egg_galaxy()
	return fish_west()
		and has("remote")
		and has("disc")
end

function egg_golden()
	return frog_elevator_and_ostrich_wheel()
		and has("wheel")
end

function egg_goodnight()
	return fish_lower()
		and (can_defeat_ghost()
			or event_candle_penguin())
end

function egg_gorgeous()
	return starting_after_ghost()
		and (has("firecrackers")
			or has("lantern")
			or event_candle_first())
end

function egg_great()
	return fish_upper()
		and (has("bwand")
			or disc_hop()
			or wheel_hop())
end

function egg_holiday()
	return bird_area()
		and (has("bwand")
			or disc_hop())
end

function egg_ice()
	return s_disc_area()
		and (has("remote")
			or bubble_long())
end

function egg_iridescent()
	return s_disc_area()
		and has("remote")
end

function egg_jade()
	return frog_dark_room()
end

function egg_lf()
	return bear_dark_maze()
		and ((has("firecrackers")
			and has("bwand"))
		or (has("firecrackers")
			and has("disc"))
		or (has("firecrackers")
			and wheel_hop()))
end

function egg_magic()
	return fish_tube_room()
end

function egg_moon()
	return frog_near_wombat()
		and ((has("disc")
			and has("lantern"))
		or (has("bwand")
			and has("lantern")))
end

function egg_mystic()
	return fish_upper()
end

function egg_neon()
	return s_disc_area()
		and has("remote")
		and has("bball")
end

function egg_normal()
	return fish_upper()
end

function egg_obsidian()
	return frog_elevator_and_ostrich_wheel()
		and (has("disc")
			or (bubble_short()
				and has("option_weird_tricks_on")))
end

function egg_orange()
	return dog_area()
		and has("top")
end

function egg_pickled()
	return top_of_the_well()
end

function egg_planet()
	return bird_capybara_waterfall()
		and can_break_spikes_below()
end

function egg_plant()
	return behind_kangaroo()
		and has("disc")
		and has("slink")
end

function egg_post_modern()
	return bear_kangaroo_waterfall()
		and has("top")
		and switch_for_post_modern_egg()
end

function egg_promise()
	return frog_near_wombat()
		and (can_break_spikes_below()
			or (has("disc")
				and has("option_weird_tricks_on")))
end

function egg_rain()
	return bird_area()
		and has("top")
end

function egg_raw()
	return dog_mock_disc_shrine()
		and ((has("slink")
			and disc_hop_hard())
		or (has("slink")
			and bubble_short())
		or (has("slink")
			and can_use_keys()))
end

function egg_razzle()
	return bear_razzle_egg_spot()
end

function egg_red()
	return dog_chinchilla_skull()
		and (has("firecrackers")
			or has("disc"))
end

function egg_reference()
	return dog_above_fast_travel()
		and has("slink")
		and has("disc")
end

function egg_ruby()
	return frog_ruby_egg_ledge()
end

function egg_rust()
	return frog_dark_room()
end

function egg_sapphire()
	return frog_bird_after_yoyo_1()
		and has("lantern")
end

function egg_scarlet()
	return chest_on_spikes_region()
		and has("wheel")
end

function egg_service()
	return dog_bat_room()
end

function egg_shadow()
	return bear_shadow_egg_spot()
end

function egg_sour()
	return dog_at_mock_disc()
end

function egg_sunset()
	return fish_upper()
		and (has("bball")
			or has("yoyo")
			or has("top")
			or (has("wheel")
				and has("disc"))
			or (has("disc")
				and has("option_weird_tricks_on"))
			or (has("wheel")
				and has("option_weird_tricks_on")))
end

function egg_swan()
	return bear_above_chameleon()
		and (has("animalflute")
		or has("firecrackers"))
end

function egg_sweet()
	return bird_capybara_waterfall()
end

function egg_transcendental()
	return bear_transcendental()
end

function egg_travel()
	return frog_travel_egg_spot()
end

function egg_truth()
	return bear_truth_egg_spot()
end

function egg_universal()
	return bear_capybara_and_below()
		and ((has("bwand")
			and has("yoyo"))
		or (has("bwand")
			and has("wheel"))
		or (has("bwand")
			and has("firecrackers"))
		or has("disc")
		or wheel_hop())
end

function egg_upside_down()
	return dog_upside_down_egg_spot()
end

function egg_value()
	return bear_capybara_and_below()
		and (bubble_short()
			or has("disc"))
end

function egg_vanity()
	return kangaroo_blocks()
end

function egg_virtual()
	return bird_area()
end

function egg_zen()
	return bear_capybara_and_below()
		and (has("bwand")
			or has("disc")
			or wheel_hop())
end

function fanny_pack_chest()
	return home()
end

function fast_travel_fish_teleport()
	return fast_travel_fake()
end

function fish_boss_1()
	return fish_lower()
		and has("disc")
end

function fish_boss_1()
	return fish_lower()
		and has("disc")
end

function fish_boss_2()
	return fish_boss_1()
	or chest_on_spikes_region()
end

function fish_lower()
	return (fish_west()
		and (has("bwand")
			and has("remote")
			and can_break_spikes())
		or (has("bwand")
			and has("remote")
			and has("wheel"))
		or (has("bwand")
			and has("disc")))
	or (bobcat_room()
		and has("top"))
end

function fish_tube_room()
	return fish_upper()
		and has("bwand")
end

function fish_upper()
	return bird_area()
end

function fish_wand_pit()
	return fish_upper()
end

function fish_west()
	return (fish_wand_pit()
		and (has("bwand")
			or has("disc")
			or (has("wheel")
				and has("option_weird_tricks_on"))))
	or (fish_lower()
		and has("bwand"))
end

function flame_blue()
	return fish_boss_2()
		and can_open_flame()
end

function flame_green()
	return frog_elevator_and_ostrich_wheel()
		and can_open_flame()
end

function flame_pink()
	return dog_mock_disc_shrine()
		and has("mdisc")
		and can_open_flame()
end

function flame_violet()
	return bear_chameleon_room_2()
		and can_open_flame()
end

function flute_chest()
	return bird_flute_chest()
end

function frog_bird_after_yoyo_1()
	return frog_worm_shaft_bottom()
		and (has("yoyo")
			or (bubble_long()
				and has("lantern"))
			or (has("bball")
				and has("option_weird_tricks_on"))
			or (bubble_long()
				and has("option_weird_tricks_on")))
end

function frog_bird_after_yoyo_2()
	return (frog_bird_after_yoyo_1()
		and (has("yoyo")
			or bubble_long()
			or (has("bball")
				and has("option_weird_tricks_on"))))
	or (frog_dark_room()
		and (has("lantern")
			or has("yoyo")))
end

function frog_dark_room()
	return (dog_upper_east()
		and has("bwand"))
	or (frog_bird_after_yoyo_2()
		and (has("yoyo")
			or has("lantern")
			or has("bball")))
end

function frog_east_of_fast_travel()
	return frog_bird_after_yoyo_2()
		and (has("yoyo")
			or  has("bball"))
end

function frog_elevator_and_ostrich_wheel()
	return (frog_dark_room()
		and has("yoyo")
		and has("bwand"))
	or (frog_east_of_fast_travel()
		and has("yoyo")
		and has("bwand"))
end

function frog_near_wombat()
	return bird_area()
	or (frog_travel_egg_spot()
		and can_use_keys())
	or (frog_under_ostrich_statue())
end

function frog_ostrich_attack()
	return (frog_travel_egg_spot()
		and (has("yoyo")
			or has("bball")))
	or frog_pre_ostrich_attack()
end

function frog_pre_ostrich_attack()
	return (frog_near_wombat()
		and has("top"))
	or frog_under_ostrich_statue()
	or (frog_bird_after_yoyo_2()
		and can_use_keys())
end

function frog_ruby_egg_ledge()
	return (frog_bird_after_yoyo_2()
		and has("lantern"))
	or (frog_dark_room()
		and (bubble_short()
			or has("disc")
			or (has("top")
				and has("animalflute"))))
end

function frog_travel_egg_spot()
	return (bird_below_mouse_statues()
		and has("top"))
	or (frog_near_wombat()
		and can_use_keys())
end

function frog_under_ostrich_statue()
	return frog_near_wombat()
end

function frog_worm_shaft_bottom()
	return frog_worm_shaft_top()
	or (frog_bird_after_yoyo_1()
		and (has("option_weird_tricks_on")
			or has("lantern")))
end

function frog_worm_shaft_top()
	return frog_ostrich_attack()
	or (frog_worm_shaft_bottom()
		and bubble_long())
end

function hippo_entry()
	return bird_area()
		and has("blue_flame")
		and has("green_flame")
		and has("pink_flame")
		and has("violet_flame")
end

function hippo_fireworks()
	return (hippo_manticore_room()
		and ((has("slink")
			and has("yoyo")
			and has("disc"))
		or (has("slink")
			and has("yoyo")
			and has("bwand"))))
	or (home()
		and has("house_key"))
end

function hippo_manticore_room()
	return hippo_entry()
		and ((has("lantern")
			and has("yoyo")
			and has("disc"))
		or (has("lantern")
			and has("yoyo")
			and wheel_hop()
			and tanking_damage())
		or (has("lantern")
			and has("yoyo")
			and has("bwand")
			and tanking_damage())
		or (has("lantern")
			and has("bball")
			and wheel_hop()
			and has("option_weird_tricks_on"))
		or (has("lantern")
			and has("bball")
			and has("bwand")
			and has("option_weird_tricks_on"))
		or (has("lantern")
			and has("bball")
			and has("disc")
			and has("option_weird_tricks_on"))
		or (has("lantern")
			and has("bball")
			and wheel_hop()
			and has("yoyo"))
		or (has("lantern")
			and has("bball")
			and has("bwand")
			and has("yoyo")))
end

function hippo_skull_room()
	return hippo_entry()
		and ((has("slink")
			and has("yoyo")
			and has("disc"))
		or (has("slink")
			and has("yoyo")
			and has("bwand")))
	or (hippo_fireworks()
		and (bubble_short()
			or disc_hop_hard()))
end

function home()
	return (hippo_fireworks()
		and has("housekey"))
	or (top_of_the_well()
		and has("lantern"))
end

function kangaroo_blocks()
	return (kangaroo_room()
		and ((has("bball")
			and has("disc"))
		or (has("bball")
			and has("bwand"))))
	or (behind_kangaroo()
		and has("bball"))
end

function kangaroo_first_spot()
	return frog_east_of_fast_travel()
end

function kangaroo_room()
	return (dog_bat_room()
		and has("kmedal"))
	or kangaroo_blocks()
end

function key_bear_lower()
	return bear_area_entry()
end

function key_bear_upper()
	return bear_capybara_and_below()
end

function key_chest_mouse_head_lever()
	return frog_ostrich_attack()
end

function key_dog()
	return dog_bat_room()
end

function key_frog_guard_room_east()
	return frog_bird_after_yoyo_2()
		and (has("yoyo")
			or (has("bwand")
				and has("animalflute")
			or has("bball")
			or (has("animalflute")
				and has("option_weird_tricks_on"))))
end

function key_frog_guard_room_west()
	return frog_bird_after_yoyo_2()
		and (has("yoyo")
			or has("animalflute")
			or has("bball"))
end

function key_house()
	return hippo_fireworks()
end

function key_office()
	return bird_area()
		and ((bubble_short()
			and has("animalflute"))
		or (has("disc")
			and has("animalflute"))
		or (has("bwand")
			and wheel_hop()
			and has("animalflute")))
end

function lantern_chest()
	return hippo_entry()
		and ((has("slink")
			and has("disc")
			and has("yoyo"))
		or has("lantern")
		or (has("bball")
			and has("slink")
			and has("option_weird_tricks_on")))
end

function mama_cha()
	return dog_upper_past_lake()
		and has("animalflute")
end

function map_chest()
	return starting_after_ghost()
end

function match_above_egg_room()
	return dog_elevator()
	or (bird_area()
		and (has("disc")
			or bubble_short()
			or (has("bball")
				and has("option_weird_tricks_on")
				and has("yoyo"))
			or (has("top")
				and has("option_weird_tricks_on"))))
end

function match_bear()
	return bear_match_chest_spot()
end

function match_center_well_spot()
	return bear_match_chest_spot()
	or top_of_the_well()
	or (chocolate_egg_spot()
		and ((has("disc")
			and has("remote")
		or (bubble_short()
			and has("remote")))))
end

function match_dog_switch_bounce()
	return dog_upper_above_switch_lines()
		and (has("disc")
			or has("remote")
			or has("top"))
end

function match_dog_upper_east()
	return dog_upper_east()
end

function match_fish_mural()
	return fish_upper()
end

function match_guard_room()
	return frog_bird_after_yoyo_2()
		and (has("yoyo")
			or has("animalflute")
			or disc_hop()
			or has("bwand")
			or has("bball"))
end

function match_start_ceiling()
	return starting_area()
end

function match_under_mouse_statue()
	return bird_below_mouse_statues()
end

function medal_e()
	return candle_area()
end

function medal_s()
	return bear_chameleon_room_1()
		and defeated_chameleon()
end

function mock_disc_chest()
	return dog_at_mock_disc()
end

function pencil_chest()
	return bird_area()
		and (has("bwand")
			or has("disc")
			or wheel_hop())
		and eggs_required(16)
end

function remote_chest()
	return s_disc_area()
end

function s_disc_area()
	return starting_area()
		and ((has("smedal")
			and has("bwand"))
		or (has("smedal")
			and disc_hop())
		or (has("smedal")
			and wheel_hop()))
end

function slink_room()
	return bear_slink_room()
end

function stamp_chest()
	return bird_area()
end

function starting_after_ghost()
	return (starting_area()
		and (has("firecrackers")
			or has("lantern")
			or event_candle_first()
			or has("option_weird_tricks_on")))
	or water_spike_bunny_spot()
end

function starting_area()
	return true
	or (starting_after_ghost()
		and (has("firecrackers")
			or has("lantern")
			or event_candle_first()))
end

function switch_for_post_modern_egg()
	return dog_elevator()
end

function switch_next_to_bat_room()
	return dog_bat_room()
end

function top_chest()
	return bird_area()
		and (has("bwand")
			or has("disc")
			or wheel_hop())
		and eggs_required(32)
end

function top_of_the_well()
	return (home()
		and has("lantern"))
	or (match_center_well_spot()
		and bubble_long())
	or fast_travel_fake()
end

function uv_lantern_spot()
	return (abyss_lower()
		and ((has("animalflute")
			and has("disc"))
		or (has("animalflute")
			and bubble_short())))
	or (fast_travel_fish_teleport()
		and (has("bwand")
			or has("disc")
			or wheel_hop()))
end

function uv_lantern_chest()
	return uv_lantern_spot()
end

function water_spike_bunny_spot()
	return fish_upper()
		and bubble_long()
end

function wheel_chest()
	return bobcat_room()
		and has("animalflute")
end

function yoyo_chest()
	return frog_worm_shaft_bottom()
end

function not_in_logic()
	return false
end
