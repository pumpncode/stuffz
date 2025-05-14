SMODS.Blind {
    key = 'the_tree',
    pos = { x = 0, y = 1 },
    boss = { min = 6, max = 10 },
    atlas = "Blinds",
    boss_colour = HEX("1eaa1e"),
    calculate = function(self, blind, context)
        if context.destroy_card and context.cardarea == G.play then
            if context.destroy_card:is_face() then
                return { remove = true }
            end
        end
    end
}
