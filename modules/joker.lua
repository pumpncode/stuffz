function round(n)
    return math.floor(n + 0.5)
end

function random_tag_thing(seed)
    local t = pseudorandom_element(G.P_CENTER_POOLS.Tag, pseudoseed(seed))
    if t.key == 'tag_orbital' then
        local hands = {}
        for k, hand in pairs(G.GAME.hands) do
            if hand.visible then
                hands[#hands + 1] = hand
            end
        end

        t.ability.orbital_hand = pseudorandom_element(hands, pseudoseed(seed .. '_orbital'))
    end
    return t.key
end

function random_consumeable_type(seed)
    local types = {}

    for _, i in pairs(SMODS.ConsumableTypes) do
        types[#types + 1] = i
    end

    return pseudorandom_element(types, pseudoseed(seed))
end

function removeDuplicates(t)
    local seen = {}
    local result = {}

    for _, value in ipairs(t) do
        if not seen[value] then
            table.insert(result, value)
            seen[value] = true
        end
    end

    return result
end

function hasValue(t, v)
    for _, i in t do
        if i == v then
            return true
        end
    end
    return false
end

SMODS.Joker {
    key = "i_love_you",
    pos = { x = 6, y = 1 },
    config = { extra = {} },
    blueprint_compat = true,
    atlas = "Jokers",
    rarity = 2,
    cost = 6,
    loc_vars = function(self, info_queue, card)
        info_queue[#info_queue + 1] = G.P_CENTERS['c_lovers']
        return { vars = { localize("Hearts", 'suits_singular'), colours = { G.C.SUITS["Hearts"] } } }
    end,
    calculate = function(self, card, context)
        if context.after and next(context.poker_hands['Flush']) then
            local trigger = false
            for _, card2 in ipairs(context.scoring_hand) do
                if card2:is_suit("Hearts") then
                    trigger = true
                end
            end
            if trigger then
                if #G.consumeables.cards ~= G.consumeables.config.card_limit then
                    local n_card = create_card(nil, G.consumeables, nil, nil, nil, nil, 'c_lovers')
                    n_card:add_to_deck()
                    G.consumeables:emplace(n_card)
                    G.GAME.consumeable_buffer = 0
                end
            end
        end
    end
}

SMODS.Joker {
    key = 'debit_card',
    pos = { x = 4, y = 1 },
    config = { extra = {} },
    blueprint_compat = true,
    atlas = "Jokers",
    rarity = 3,
    cost = 8,
    calculate = function(self, card, context)
        if context.before and G.GAME.dollars <= 0 then
            card:juice_up(0.3, 0.4)
            if #G.consumeables.cards ~= G.consumeables.config.card_limit then
                SMODS.add_card({ set = "Spectral", area = G.consumeables })
            end
        end
    end
}


SMODS.Joker {
    key = 'draw_two',
    config = { extra = { ctd = 2 } },
    blueprint_compat = true,
    cost = 6,
    atlas = "Jokers",
    rarity = 2,
    pos = { y = 3, x = 5 },
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.ctd } }
    end,
    calculate = function(self, card, context)
        if context.selling_self then
            for i = 1, math.min(card.ability.extra.ctd, G.consumeables.config.card_limit - #G.consumeables.cards) do
                local type = random_consumeable_type("draw_two").key
                SMODS.add_card({ set = type, area = G.consumeables })
            end
        end
    end
}






SMODS.Joker {
    key = 'sunny_day',
    pos = { x = 0, y = 1 },
    config = { extra = { xmult = 2 } },
    rarity = 1,
    atlas = 'Jokers',
    cost = 3,
    blueprint_compat = true,
    loc_vars = function(self, info_queue, center)
        info_queue[#info_queue + 1] = G.P_CENTERS['m_glass']
        return { vars = { localize("Hearts", 'suits_singular'), center.ability.extra.xmult, colours = { G.C.SUITS["Hearts"] } } }
    end,
    calculate = function(self, card, context)
        if context.cardarea == G.play and context.individual and not context.other_card.debuff and SMODS.in_scoring(context.other_card, context.scoring_hand) and context.other_card:is_suit("Hearts") and SMODS.has_enhancement(context.other_card, "m_glass") then
            return {
                Xmult = card.ability.extra.xmult
            }
        end
    end
}

SMODS.Joker {
    key = 'dozer',
    config = { extra = { xmult = 2 } },
    rarity = 1,
    cost = 5,
    atlas = "Jokers",
    pos = { x = 4, y = 4 },
    blueprint_compat = true,
    loc_vars = function(self, info_queue, card)
        return {
            vars = { card.ability.extra.xmult }
        }
    end,
    calculate = function(self, card, context)
        if context.joker_main and not G.GAME.blind.boss then
            return {
                Xmult = card.ability.extra.xmult
            }
        end
    end
}

SMODS.Joker {
    key = 'doombringer',
    config = { extra = { odds = 2 } },
    blueprint_compat = true,
    rarity = 1,
    cost = 5,
    atlas = "Jokers",
    pos = { x = 3, y = 4 },
    loc_vars = function(self, info_queue, card)
        return {
            vars = { G.GAME.probabilities.normal, card.ability.extra.odds }
        }
    end,
    calculate = function(self, card, context)
        if context.ending_shop then
            if pseudorandom('doombringer') < G.GAME.probabilities.normal / card.ability.extra.odds then
                add_tag(Tag(random_tag_thing('doombringer')))
                play_sound('generic1', 0.9 + math.random() * 0.1, 0.8)
                play_sound('holo1', 1.2 + math.random() * 0.1, 0.4)
                return {
                    message = "AAAH!!"
                }
            end
        end
    end

}

SMODS.Joker {
    key = 'slight',
    config = { extra = { odds = 7, mult = 6 } },
    blueprint_compat = true,
    rarity = 2,
    cost = 7,
    atlas = "Jokers",
    pos = { x = 0, y = 4 },
    loc_vars = function(self, info_queue, card)
        return { vars = { G.GAME.probabilities.normal, card.ability.extra.odds, card.ability.extra.mult } }
    end,
    calculate = function(self, card, context)
        if context.individual and context.cardarea == G.hand and (not context.end_of_round) and (context.other_card.facing == "front") and (not context.other_card.debuff) then
            return {
                mult = card.ability.extra.mult,
                card = card
            }
        end
    end
}

SMODS.Joker {
    key = 'heed',
    config = { extra = { odds = 7, xmult = 1.5 } },
    blueprint_compat = true,
    pos = { x = 2, y = 3 },
    rarity = 2,
    cost = 7,
    atlas = "Jokers",
    loc_vars = function(self, info_queue, card)
        return { vars = { G.GAME.probabilities.normal, card.ability.extra.odds, card.ability.extra.xmult } }
    end,
    calculate = function(self, card, context)
        if context.individual and context.cardarea == G.hand and (not context.end_of_round) and context.other_card.facing == "back" then
            return {
                Xmult = card.ability.extra.xmult,
                card = card
            }
        end
    end
}

SMODS.Joker {
    key = 'magic_8_ball',
    config = { extra = { repetitions = 2 } },
    pos = { y = 4, x = 1 },
    soul_pos = { y = 4, x = 2 },
    cost = 6,
    rarity = 2,
    atlas = "Jokers",
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.repetitions } }
    end,
    calculate = function(self, card, context)
        if context.cardarea == G.play and context.repetition and not context.repetition_only then
            if context.other_card:get_id() == 8 then
                return {
                    message = localize("k_again_ex"),
                    repetitions = card.ability.extra.repetitions,
                    card = card
                }
            end
        end
    end
}

SMODS.Joker {
    key = 'starry_night',
    config = { extra = {
        xmult = 1.5,
        perhand = 0.15,
        perclub = 0.05
    } },
    blueprint_compat = true,
    rarity = 2,
    cost = 6,
    pos = { x = 5, y = 0 },
    atlas = "Jokers",
    eternal_compat = false,
    loc_vars = function(self, info_queue, center)
        return {
            vars = { center.ability.extra.xmult, center.ability.extra.perhand, center.ability.extra.perclub, localize("Clubs", 'suits_singular'), localize("Diamonds", 'suits_singular'), colours = { G.C.SUITS["Clubs"], G.C.SUITS["Diamonds"] } }
        }
    end,
    calculate = function(self, card, context)
        if context.end_of_round and not context.repetition and context.game_over == false and not context.blueprint then
            card.ability.extra.xmult = card.ability.extra.xmult - card.ability.extra.perhand
            if card.ability.extra.xmult < 1.000001 then
                play_sound('tarot1')
                card.T.r = -0.2
                card:juice_up(0.3, 0.4)
                card.states.drag.is = true
                card.children.center.pinch.x = true

                G.E_MANAGER:add_event(Event({
                    trigger = 'after',
                    delay = 0.3,
                    blockable = false,
                    func = function()
                        G.jokers:remove_card(card)
                        card:remove()
                        card = nil
                        return true;
                    end
                }))
                return {
                    message = "Daytime!"
                }
            else
                return {
                    extra = { focus = card, message = "Downgrade!", colour = G.C.MULT }
                }
            end
        end


        if context.cardarea == G.play and context.individual and not context.other_card.debuff and SMODS.in_scoring(context.other_card, context.scoring_hand) and (context.other_card:is_suit("Clubs") or context.other_card:is_suit("Diamonds")) and not context.blueprint then
            card.ability.extra.xmult = card.ability.extra.xmult + card.ability.extra.perclub
            return {
                extra = { focus = card, message = localize("k_upgrade_ex"), colour = G.C.MULT }
            }
        end


        if context.joker_main then
            return {
                Xmult = card.ability.extra.xmult
            }
        end
    end
}



SMODS.Joker {
    key = 'promatter',
    config = { extra = { xmult = 2 } },
    cost = 3,
    rarity = 1,
    pos = { x = 4, y = 0 },
    atlas = "Jokers",
    loc_vars = function(self, info_queue, center)
        return { vars = { center.ability.extra.xmult } }
    end,
    calculate = function(self, card, context)
        if context.joker_main then
            if card.edition then
                return {
                    Xmult = card.ability.extra.xmult
                }
            end
        end
    end
}

SMODS.Joker {
    key = 'sad_face',
    blueprint_compat = true,
    rarity = 1,
    atlas = "Jokers",
    pos = { x = 3, y = 0 },
    cost = 4,

    config = { extra = { chipmod = 7, chips = 0 } },
    loc_vars = function(self, info_queue, center)
        return { vars = { center.ability.extra.chipmod, center.ability.extra.chips } }
    end,
    calculate = function(self, card, context)
        if context.before and not context.blueprint then
            local trigger = true
            for _, playing_card in ipairs(G.hand.cards) do
                if playing_card:is_face() then
                    trigger = false
                end
            end
            if trigger then
                card.ability.extra.chips = card.ability.extra.chips + card.ability.extra.chipmod
                return {
                    message = localize('k_upgrade_ex')
                }
            end
        end

        if context.joker_main and card.ability.extra.chips > 0 then
            return {
                chips = card.ability.extra.chips
            }
        end
    end
}



SMODS.Joker {
    key = 'overjoyed',
    blueprint_compat = true,
    config = { extra = { xmult = 3, trigger = true } },
    rarity = 2,
    atlas = "Jokers",
    pos = { x = 1, y = 0 },
    cost = 5,
    loc_vars = function(self, info_queue, center)
        return { vars = { center.ability.extra.xmult } }
    end,
    calculate = function(self, card, context)
        if context.joker_main then
            trigger_overjoyed = true
            for index, item in ipairs(G.play.cards) do
                if not item:is_face() then
                    trigger_overjoyed = false
                end
            end

            if trigger_overjoyed then
                return {
                    Xmult = card.ability.extra.xmult
                }
            end
        end
    end
}


SMODS.Joker {
    key = 'water',
    blueprint_compat = true,
    eternal_compat = false,
    atlas = 'Jokers',
    cost = 4,
    rarity = 1,
    pos = { x = 0, y = 0 },
    config = { extra = {
        xmult = 2, xmultmod = 0.25
    } },
    loc_vars = function(self, info_queue, center)
        return { vars = { center.ability.extra.xmult } }
    end,
    calculate = function(self, card, context)
        if context.joker_main then
            return {
                Xmult = card.ability.extra.xmult
            }
        end


        if context.cardarea == G.jokers and context.after and not context.blueprint then
            if (card.ability.extra.xmult - card.ability.extra.xmultmod <= 1.1) then
                play_sound('tarot1')
                card.T.r = -0.2
                card:juice_up(0.3, 0.4)
                card.states.drag.is = true
                card.children.center.pinch.x = true

                G.E_MANAGER:add_event(Event({
                    trigger = 'after',
                    delay = 0.3,
                    blockable = false,
                    func = function()
                        G.jokers:remove_card(card)
                        card:remove()
                        card = nil
                        return true;
                    end
                }))
                return {
                    message = "Drunk!"
                }
            else
                card.ability.extra.xmult = card.ability.extra.xmult - card.ability.extra.xmultmod
                return {
                    message = localize { type = 'variable', key = 'a_xmult_minus', vars = { card.ability.extra.xmultmod } },
                    colour = G.C.MULT
                }
            end
        end
    end
}

SMODS.Joker {
    key = 'nerdy_joker',
    cost = 7,
    atlas = "Jokers",
    blueprint_compat = true,
    config = { extra = {} },
    pos = { x = 4, y = 2 },
    rarity = 2,
    calculate = function(self, card, context)
        if context.joker_main then
            local sum = 0
            for _, played_card in ipairs(context.scoring_hand) do
                sum = sum + played_card.base.nominal
            end
            sum = round(sum / 2)
            if sum > 0 then
                return {
                    mult = sum
                }
            end
        end
    end
}

SMODS.Joker {
    key = 'inverted_joker',
    cost = 4,
    atlas = "Jokers",
    blueprint_compat = true,
    config = { extra = { mult = 20, diffsuits = 2 } },
    pos = { x = 3, y = 2 },
    rarity = 1,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.mult, card.ability.extra.diffsuits } }
    end,
    calculate = function(self, card, context)
        if context.joker_main then
            local card_suits = {}
            for _, playing_card in ipairs(context.scoring_hand) do
                table.insert(card_suits, playing_card.base.suit)
            end
            card_suits = removeDuplicates(card_suits)
            if #card_suits == card.ability.extra.diffsuits then
                return {
                    mult = card.ability.extra.mult
                }
            end
        end
    end
}




SMODS.Joker {
    key = 'instant_replay',
    cost = 8,
    atlas = "Jokers",
    config = { extra = { odds = 3, repetitions = 1 } },
    rarity = 3,
    pos = { x = 6, y = 2 },
    blueprint_compat = true,
    loc_vars = function(self, info_queue, card)
        return { vars = { G.GAME.probabilities.normal, card.ability.extra.odds } }
    end,
    calculate = function(self, card, context)
        if context.cardarea == G.play and context.repetition and not context.repetition_only then
            if pseudorandom('instant_replay') < G.GAME.probabilities.normal / card.ability.extra.odds then
                return {
                    message = localize("k_again_ex"),
                    repetitions = card.ability.extra.repetitions,
                    card = card
                }
            end
        end
    end
}

SMODS.Joker {
    display_size = { w = 106.5, h = 142.5 },
    key = 'big_joker',
    cost = 3,
    atlas = "Jokers",
    config = { extra = { chipmod = 2, chips = 0 } },
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.chipmod, card.ability.extra.chips } }
    end,
    blueprint_compat = true,
    rarity = 1,
    pos = { x = 0, y = 3 },
    calculate = function(self, card, context)
        if context.cardarea == G.play and context.individual and not context.other_card.debuff and (context.other_card:get_id() == 8) and not context.blueprint then
            card.ability.extra.chips = card.ability.extra.chips + card.ability.extra.chipmod
            return {
                extra = { focus = card, message = localize('k_upgrade_ex') },
                card = card,
                colour = G.C.CHIPS
            }
        end

        if context.joker_main then
            return {
                chips = card.ability.extra.chips,
                colour = G.C.CHIPS
            }
        end
    end
}


local stayflippedref = Blind.stay_flipped
function Blind.stay_flipped(self, area, card)
    if area == G.hand then
        local _, heed = next(SMODS.find_card('j_stfz_heed'))
        local _, slight = next(SMODS.find_card('j_stfz_slight'))
        if heed and pseudorandom('heed') < G.GAME.probabilities.normal / heed.ability.extra.odds then
            return true
        end
        if slight and pseudorandom('heed') < G.GAME.probabilities.normal / slight.ability.extra.odds then
            return true
        end
    end

    return stayflippedref(self, area, card)
end

SMODS.Joker {
    key = 'price_tag',
    config = { extra = { new_cost = 5 } },
    pos = { x = 4, y = 3 },
    atlas = "Jokers",
    cost = 5,
    rarity = 2,
    blueprint_compat = false,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.new_cost } }
    end,
    calculate = function(self, card, context)
        if context.starting_shop or context.reroll_shop then
            for _, shop_card in ipairs(G.shop_jokers.cards) do
                if shop_card.cost > card.ability.extra.new_cost then
                    shop_card.cost = card.ability.extra.new_cost
                end
            end
        end
    end
}
