return {
    descriptions = {
        Joker = {
            j_stfz_water = {
                name = 'Water',
                text = {
                    '{X:mult,C:white}X#1#{} Mult, loses',
                    '{X:mult,C:white}X0.25{} Mult per hand played'
                }
            },
            j_stfz_overjoyed = {
                name = 'Overjoyed',
                text = {
                    "{X:mult,C:white}X#1#{} Mult if",
                    "played hand only",
                    "contains {C:attention}face{} cards"
                }
            },
            j_stfz_sad_face = {
                name = "Sad Face",
                text = {
                    "Gains {C:chips}+#1#{} Chips if there are no",
                    "{C:attention}face{} cards held in hand",
                    "{C:inactive}(Currently {}{C:chips}+#2#{}{C:inactive} Chips)"
                }
            },
            j_stfz_heed = {
                name = "Vainglory",
                text = {
                    "{C:green}#1# in #2#{} cards are drawn {C:attention}face{}",
                    "{C:attention}down{}, face down cards held",
                    "in hand give {X:mult,C:white}X#3#{} Mult each"
                }
            },
            j_stfz_slugfish = {
                name = "Slugfish",
                text = {
                    "If the {C:attention}first hand{} of round contains",
                    "{C:attention}#1#{} or more cards, destroy all cards",
                    "in played hand except for the leftmost",
                    "and rightmost card"
                }
            },
            j_stfz_four_leaf_clover = {
                name = "Four Leaf Clover",
                text = {
                    'Each played {C:attention}7{} has a {C:green}#1# in #2#{}',
                    'chance to give {C:mult}+#3#{} Mult when',
                    'scored'
                }
            },
            j_stfz_promatter = {
                name = "Promatter",
                text = {
                    "This Joker gives {X:mult,C:white}X#1#{} Mult",
                    "if it has an{C:dark_edition} edition"
                }
            },
            j_stfz_starry_night = {
                name = "Starry Night",
                text = {
                    'This Joker loses {X:mult,C:white}X#1#{} Mult at',
                    'end of round and gains {X:mult,C:white}X#2#{}',
                    'Mult when a {V:1}#3#{} card is scored',
                    '{C:inactive}(Currently {X:mult,C:white}X#4#{}{C:inactive} Mult)'
                }
            },
            j_stfz_hole_in_one = {
                name = "Hole In One",
                text = {
                    'Earn {C:money}$#1#{} at end of round if',
                    'blind is defeated in one hand'
                }
            },
            j_stfz_exam = {
                name = "Exam",
                text = {
                    'This Joker gains {C:mult}+#1#{} Mult',
                    'per {C:attention}#2#{} scored, resets and',
                    'changes required rank',
                    'after defeating {C:attention}Boss Blind{}',
                    '{C:inactive}(Currently {C:mult}+#3#{}{C:inactive} Mult)'
                }
            },
            j_stfz_neutral_face = {
                name = "Numbered Face",
                text = {
                    'Played {C:attention}numbered{} cards give',
                    '{C:chips}+#1#{} Chips and {C:attention}face{} cards',
                    'give {C:mult}+#2#{} Mult when scored'
                }
            },
            j_stfz_sunny_day = {
                name = 'Sunny Day',
                text = {
                    '{C:attention}Glass{} cards with {V:1}#1#{}',
                    'suit are retriggered'
                }
            },
            j_stfz_big_joker = {
                name = "Large Joker",
                text = {
                    "This Joker gains {C:chips}+#1#{} Chips",
                    "when each played {C:attention}8{} is scored",
                    "{C:inactive}(Currently {C:chips}+#2#{}{C:inactive} Chips)"
                }
            },
            j_stfz_debit_card = {
                name = "Debit Card",
                text = {
                    "Create a random {C:spectral}Spectral{} card if",
                    "blind is defeated with {C:money}$0{} or less",
                    "{C:inactive}(Must have room)"
                }
            },
            j_stfz_price_tag = {
                name = "Price Tag",
                text = {
                    "Cards in the {C:attention}shop{}",
                    "cost {C:money}$#1#{} at max"
                }
            },
            j_stfz_i_love_you = {
                name = "I Love You",
                text = {
                    'Create a {C:tarot}Lovers{} card if',
                    'played hand contains a {V:1}#1#{}',
                    'card and a {C:attention}Flush{}',
                    '{C:inactive}(Must have room){}'
                }
            },
            j_stfz_slight = {
                name = "Slight",
                text = {
                    "{C:green}#1# in #2#{} cards are",
                    "drawn {C:attention}face down{}, face",
                    "up cards held in hand",
                    "give {C:mult}+#3#{} Mult each"
                }
            },
            j_stfz_doombringer = {
                name = "Doombringer",
                text = {
                    "{C:green}#1# in #2#{} chance to",
                    "create a random {C:attention}tag{}",
                    "at end of {C:attention}shop{}"
                }
            },
            j_stfz_dozer = {
                name = "Dozer",
                text = {
                    "{X:mult,C:white}X#1#{} Mult in {C:attention}Small Blind{}",
                    "and {C:attention}Big Blind{}"
                }
            },

            j_stfz_asterisk = {
                name = "Asterisk",
                text = {
                    'Each scored {C:attention}10{} gives {X:mult,C:white}X#1#{}',
                    'Mult if played hand',
                    'contains three or more {C:attention}10s{}'
                }
            },
            j_stfz_magic_8_ball = {
                name = "Magical 8 Ball",
                text = {
                    'Each played {C:attention}8{} is',
                    'retriggered {C:attention}#1#{} times when',
                    'scored'
                }
            },
            j_stfz_draw_two = {
                name = "Draw Two",
                text = {
                    "Sell this card to",
                    "create {C:attention}#1#{} random",
                    "consumables",
                    "{C:inactive}(Must have room)"
                }
            },
            j_stfz_wild_joker = {
                name = "Wild Joker",
                text = {
                    'Sell this card to {C:attention}destroy{}',
                    'all {V:1}#1#{} cards held in hand,',
                    'suit changes at end of round',
                }
            },
            j_stfz_prime_simon = {
                name = "Prime Simon",
                text = {
                    'Each played {C:attention}2{}, {C:attention}3{}, {C:attention}5{}, {C:attention}7{} or',
                    '{C:attention}Ace{} gives {C:chips}+#1#{} Chips when',
                    'scored'
                }
            },
            j_stfz_mobile_chicken = {
                name = "Mobile Chicken",
                text = {
                    'Create a {C:tarot}Chariot{} card if',
                    'all cards in played hand',
                    'are {V:1}#1#{} or {V:2}#2#{}',
                    '{C:inactive}(Must have room)'
                }
            },
            j_stfz_exit_8 = {
                name = "Exit 8",
                text = {
                    'This Joker gains {C:mult}+#1#{} Mult if',
                    'played hand contains a {C:attention}2{}',
                    'and a {C:attention}Straight Flush{}',
                    '{C:inactive}(Currently {C:mult}+#2#{}{C:inactive} Mult)'
                }
            },
            j_stfz_sorrow = {
                name = "Sorrow",
                text = {
                    'Enhances non-enhanced',
                    'cards held in hand on',
                    '{C:attention}final hand{} of round into',
                    '{C:attention}Mult Cards{}'
                }
            },
            j_stfz_inverted_joker = {
                name = "Inverted Joker",
                text = {
                    '{C:mult}+#1#{} Mult if played hand contains',
                    'exactly {C:attention}#2#{} unique suits'
                }
            },
            j_stfz_painting = {
                name = "Painting",
                text = {
                    'The {C:attention}sell value{} of this', 'card is {C:attention}random{}'
                }
            },
            j_stfz_nerdy_joker = {
                name = "Nerdy Joker",
                text = {
                    "Adds half the {C:attention}total rank{}",
                    "of scored cards to Mult"
                }
            },
            j_stfz_instant_replay = {
                name = "Instant Replay",
                text = {
                    "{C:green}#1# in #2#{} cards are",
                    "retriggered"
                }
            }
        },
        Blind = {
            bl_stfz_the_leech = {
                name = "The Leech",
                text = {
                    "All enhanced cards",
                    "are debuffed"
                }
            },
            bl_stfz_the_tree = {
                name = "The Tree",
                text = {
                    "Destroys all",
                    "scored face cards"
                }
            }
        }
    }
}
