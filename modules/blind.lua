SMODS.Blind {
    key = 'the_tree',
    pos = { x = 0, y = 1 },
    boss = { min = 4, max = 10 },
    atlas = "Blinds",
    boss_colour = HEX("1eaa1e"),
    calculate = function(self, blind, context)
        if context.after then
            for _, _card in ipairs(context.scoring_hand) do
                if _card:is_face() then
                    local m = _card
                    G.E_MANAGER:add_event(Event({
                        trigger = 'after',
                        delay = 0.1,
                        func = function()
                            for i=1,#context.scoring_hand,1 do
                                if m.ability.set == 'Glass Card' then
                                    m:shatter()
                                else
                                    m:start_dissolve(nil, i~=#context.scoring_hand)
                                end
                                
                            end
                            return true
                        end
                    }))
                end
            end
        end
    end
}

SMODS.Blind {
    key = 'the_leech',
    boss = { min = 4, max = 10 },
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
