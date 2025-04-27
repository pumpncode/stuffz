SMODS.Blind {
    key = 'the_tree',
    pos = { x = 0, y = 1 },
    boss = { min = 6, max = 10 },
    atlas = "Blinds",
    boss_colour = HEX("1eaa1e"),
    calculate = function(self, blind, context)
        if context.destroy_card and context.cardarea == G.play then
            if context.destroy_card:is_face() then
                return {remove=true}
            end
        end
    end
}

SMODS.Blind {
    key = 'the_leech',
    boss = { min = 6, max = 10 },
    atlas = "Blinds",
    pos = { x = 0, y = 0 },
    boss_colour = HEX("6865f3"),
    set_blind = function(self)
        for _, card in ipairs(G.playing_cards) do
            if card.ability.set == 'Enhanced' then
                SMODS.debuff_card(card, true, "silent")
            end
        end
    end,

    disable = function(self)
        for _, card in ipairs(G.playing_cards) do
            if card.ability.set == 'Enhanced' then
                SMODS.debuff_card(card, false, "silent")
            end
        end
    end,

    defeat = function(self)
        for _, card in ipairs(G.playing_cards) do
            if card.ability.set == 'Enhanced' then
                SMODS.debuff_card(card, false, "silent")
            end
        end
    end
}
