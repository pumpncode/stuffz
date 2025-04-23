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
            j_stfz_bigger_house = {
                name = "Bigger House",
        text = {
            "+1 permanent {C:attention}Joker{} slot",
            "every {C:attention}6 Full Houses{} played",
            "{C:inactive}#1# remaining{}"
        }
            },
            j_stfz_sad_face = {
                name = "Sad Face",
        text = {
            "{C:white,X:mult}X#1#{} Mult if played",
            "hand and hand don't",
            "contain any {C:attention}face{} cards"
        }
            },
            j_stfz_promatter = {
                name = "Promatter",
        text = {
            "This {C:attention}Joker{} gives {X:mult,C:white}X#1#{} Mult",
            "if it has an{C:dark_edition} edition"
        }
            },
            j_stfz_starry_night = {
                name = "Starry Night",
        text = {
            "{X:mult,C:white}X#1#{} Mult, loses {X:mult,C:white}X#2#{} Mult",
            "each round, gains",
            "{X:mult,C:white}X#3#{} Mult per card",
            "with {V:1}#4#{} or {V:2}#5#{} suit scored"
        }
            },
            j_stfz_coin_flip = {
                name = 'Coin Flip', 
        text = {
            "Gains {X:mult,C:white}X#1#{} Mult at end of round,",
            "{C:green}#2# in #3#{} chance this card",
            "is destroyed at end of round",
            "{C:inactive}(Currently {}{X:mult,C:white}X#4#{}{C:inactive} Mult)"
        }
            },
            j_stfz_sunny_day = {
                name = 'Sunny Day',
        text = {
            "{C:attention}Glass{} cards with {V:1}#1#{}",
            "suit give an extra {X:mult,C:white}X#2#{} Mult"
        }
            },
            j_stfz_sorcerer = {
                name = "Sorcerer",
        text = {
            "{C:chips}+#1#{} Chips per {C:attention}consumable{} card owned",
            "{C:inactive}(Currently {}{C:chips}+#2#{}{C:inactive} Chips)"
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
            j_stfz_jeffrey = {
                name = "Jeffrey",
                text = {
                    "{X:mult,C:white}X#1#{} Mult per",
                    '{C:attention}Queen{} in your deck',
                    "{C:inactive}(Currently {X:mult,C:white}X#2#{} {C:inactive}Mult)"
                }
            },
            j_stfz_mathurine = {
                name = "Mathurine",
                text = {
                    "Reduce required chips of",
                    '{C:attention}current blind{} by {C:attention}20%{}'
                }
            },
            j_stfz_debit_card = {
                name = "Debit Card",
                text = {
                    "Create a {C:spectral}Spectral{} card if hand",
                    "is played with {C:money}$0{} or less"
                }
            },
            j_stfz_i_love_you = {
                name = "I Love You",
                text = {
                    "If played hand contains a {C:attention}Flush{}",
                    "and a {V:1}#1#{} card, create",
                    "a {C:tarot}Lovers{} tarot card"
                }
            },
            j_stfz_price_tag = {
                name = "Price Tag",
                text = {
                    "Cards bought from the {C:attention}shop{} have",
                    "a {C:green}#1# in #2#{} chance to be discounted by {C:attention}75%{},",
                    "otherwise its cost is {C:attention}doubled{}",
                    "{s:0.8}(doesn't apply to vouchers and packs){}"
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
            j_stfz_censored_joker = {
                name = "Censored Joker",
                text = {
                    "All {C:attention}non-face{} cards ",
                    "have a {C:green}#1# in #2#{}",
                    "chance of being",
                    "considered a {C:attention}face{} card"
                }
            },
            j_stfz_instant_replay = {
                name = "Instant Replay",
                text = {
                    "{C:green}#1# in #2#{} chance for scored",
                    "cards to be retriggered"
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