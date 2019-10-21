
local prefixes = {
	{
		name="Wood",
		icon="xp_rank_woodsword.png",
		color={r=255, g=255, b=255},
		base_xp=0,
		xp_modifier=100
	}, -- 0 - 1k
	{
		name="Stone",
		icon="xp_rank_stonesword.png",
		color={r=164, g=164, b=164},
		base_xp=2000,
		xp_modifier=200
	}, -- 2k - 4k
	{
		name="Steel",
		icon="xp_rank_steelsword.png",
		color={r=99, g=99, b=99},
		base_xp=5000,
		xp_modifier=500
	}, -- 5k - 10k
	{
		name="Bronze",
		icon="xp_rank_bronzesword.png",
		color={r=214, g=215, b=216},
		base_xp=20000,
		xp_modifier=6000
	}, -- 20k - 80k
	{
		name="Silver",
		icon="xp_rank_silversword.png",
		color={r=209, g=188, b=115},
		base_xp=100000,
		xp_modifier=10000
	}, -- 100k - 200k
	{
		name="Diamond",
		icon="xp_rank_diamondsword.png",
		color={r=196, g=162, b=39},
		base_xp=300000,
		xp_modifier=50000
	}, -- 300k - 800k
	{
		name="Mithril",
		icon="xp_rank_mithrilsword.png",
		color={r=85, g=210, b=252},
		base_xp=1000000,
		xp_modifier=80000
	}, -- 1000k - 1800k
	{
		name="Mese",
		icon="xp_rank_mesesword.png",
		color={r=238, g=252, b=85},
		base_xp=2000000,
		xp_modifier=300000
	} -- 2000k - 5000k
}

-- http://www.swordsmanship.ca/ranking-system/

local suffixes = {
	-- 4 suffixes
	{name="Initiate", xp_modifier=0},
	{name="Savant", xp_modifier=2},
	{name="Provost", xp_modifier=5},
	{name="Master", xp_modifier=10}
}


-- #suffixes x #prefixes
for _,prefix in pairs(prefixes) do
	for _,suffix in pairs(suffixes) do
		local xp = prefix.base_xp + (prefix.xp_modifier * suffix.xp_modifier)

		xp_redo.register_rank({
			name = prefix.name .. " " .. suffix.name,
			icon = prefix.icon,
			color = prefix.color,
			xp = xp
		})

	end
end
