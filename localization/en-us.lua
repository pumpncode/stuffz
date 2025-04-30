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
                    "{X:mult,C:white}X#1#{} Mult, loses {X:mult,C:white}X#2#{} Mult",
                    "each round, gains {X:mult,C:white}X#3#{} Mult",
                    "per card with {V:1}#4#{} or",
                    "{V:2}#5#{} suit scored"
                }
            },
            j_stfz_sunny_day = {
                name = 'Sunny Day',
                text = {
                    "{C:attention}Glass{} cards with {V:1}#1#{}",
                    "suit give an extra {X:mult,C:white}X#2#{} Mult"
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
                    "hand is played with {C:money}$0{} or less",
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
                    "If played hand contains a {C:attention}Flush{}",
                    "and a {V:1}#1#{} card, create",
                    "a {C:tarot}Lovers{} tarot card",
                    "{C:inactive}(Must have room)"
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
            j_stfz_inverted_joker = {
                name = "Inverted Joker",
                text = {
                    "{C:mult}+#1#{} Mult if played hand contains",
                    "exactly {C:attention}#2#{} different suits"
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
