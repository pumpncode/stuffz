SMODS.Mods.Stuffz.credits_tab = function()
	return {
		n = G.UIT.ROOT,
		config = {
			r = 0.1,
			minw = 5,
			align = "cm",
			padding = 2.5,
			colour = G.C.BLACK,
		},
		nodes = {
			{
				n = G.UIT.R,
				config = {
					padding = 1,
					align = "cm",
				},
				nodes = {
					{
						n = G.UIT.T,
						config = {
							text = "Owner - Mini\nArtists - QUAEZAR (Overjoyed) & Mini\nDevelopers - Mini",
							shadow = true,
							scale = 0.5,
							colour = G.C.UI.TEXT_LIGHT,
						},
					},
				},
			},
		},
	}
end
