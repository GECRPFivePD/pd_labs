Config = {}
--test
Config.Framework = "qb"     -- esx or qb
Config.devMode = false      -- true or false

Config.Creator = {          -- Creator of the lab
    Command = "clab",       -- Command to create the lab
    Job = "police",         -- Job of the creator
}

Config.LabCoat = {
    [0] = {
        ['torso_1'] = 67,
        ['torso_2'] = 0,
        ['shirt_1'] = 62,
        ['shirt_2'] = 0,
        ['arms'] = 38,
        ['arms_2'] = 0,
        ['pants_1'] = 40,
        ['pants_2'] = 0,
        ['shoes'] = 25,
        ['shoes_2'] = 0,
        ['accessory'] = 0,
        ['accessory_2'] = 0,
        ['bag'] = -1,
        ['bag_2'] = 0,
        ['hat'] = -1,
        ['hat_2'] = -1,
        ['glass'] = 0,
        ['glass_2'] = 0,
        ['mask'] = 46,
        ['mask_2'] = 0,
    }, 
    [1] = {
        ['torso_1'] = 67,
        ['torso_2'] = 0,
        ['shirt_1'] = 62,
        ['shirt_2'] = 0,
        ['arms'] = 38,
        ['arms_2'] = 0,
        ['pants_1'] = 40,
        ['pants_2'] = 0,
        ['shoes'] = 25,
        ['shoes_2'] = 0,
        ['accessory'] = 0,
        ['accessory_2'] = 0,
        ['bag'] = -1,
        ['bag_2'] = 0,
        ['hat'] = -1,
        ['hat_2'] = -1,
        ['glass'] = 0,
        ['glass_2'] = 0,
        ['mask'] = 46,
        ['mask_2'] = 0,
    }
}

Config.Labs = {             -- Labs
    ["meth"] = {
        enterPos = vector4(996.9384, -3200.6304, -36.6811, 274.55), -- entrance of the lab
        hosePos = vector4(1015.97, -3201.34, -38.99, 179.72), -- hose of the lab
        computerPos = vector4(1001.9596, -3194.8767, -38.9931, 3.0474), -- computer of the lab
        upgrades = {
            ['cctv'] = {
                price = 5000, -- price of the upgrade
                label = "OUTDOOR CCTV", -- label of the upgrade
                description = "This will allow you to monitor your plants from your computer.", -- description of the upgrade
                upgradeId = "cctv" -- (do not change)
            },
            ['water_pump'] = {
                price = 10000,
                label = "FILL WATER PUMP",
                description = "This will allow you to fill your water pump so you can turn off fires",
                upgradeId = "water_pump"
            },
            ['repair_machines'] = {
                price = 5000,
                label = "REPAIR MACHINES",
                description = "This will allow you to repair all of your broken lab machines.",
                upgradeId = "repair_machines"
            } 
        },
        store = { -- Computer store items
            {item = "drug_phone", label = "DOKIA PHONE", price = 1000}, 
            {item = "lab_coat", label = "LAB COAT", price = 600},
            {item = "hammer", label = "HAMMER", price = 300},
            {item = "empty_m_bag", label = "EMPTY BAG", price = 50},
        }
    },
    ["coke"] = {
        enterPos = vector4(1088.7224, -3187.4668, -38.9935, 6.4027),
        garagePos = vector4(1103.58, -3195.86, -38.99, 266.9),
        insideGaragePos = vector4(844.65, -3005.14, -44.4, 281.84),
        hosePos = vector4(854.7191, -3003.5603, -48.498, 264.6296),
        computerPos = vector4(1087.1608, -3194.3049, -38.9934, 87.5622),
        upgrades = {
            ['cctv'] = {
                price = 5000,
                label = "OUTDOOR CCTV",
                description = "This will allow you to monitor your plants from your computer.",
                upgradeId = "cctv"
            },
            ['water_pump'] = {
                price = 10000,
                label = "FILL WATER PUMP",
                description = "This will allow you to fill your water pump so you can turn off fires",
                upgradeId = "water_pump"
            },
            ['better_equipment'] = {
                price = 15000,
                label = "BETTER EQUIPMENTS",
                description = "This will allow you to reduce your cooking time by 20%",
                upgradeId = "better_equipment"
            } 
        },
        store = {
            {item = "drug_phone", label = "DOKIA PHONE", price = 1000},
            {item = "lab_coat", label = "LAB COAT", price = 600},
            {item = "microwave", label = "MICROWAVE", price = 700},
            {item = "coke_filter", label = "COKE FILTER", price = 1000},
        }
    },
    ["weed"] = {
        enterPos = vector4(1066.4232, -3183.6562, -39.4501, 95.18),
        computerPos = vector4(1044.6023, -3194.8518, -38.1579, 269.7234),
        upgrades = {
            ['cctv'] = {
                price = 5000,
                label = "OUTDOOR CCTV",
                description = "This will allow you to monitor your plants from your computer.",
                upgradeId = "cctv"
            },
            ['weed_light'] = {
                price = 15000,
                label = "WEED LIGHTS",
                description = "This will automatically increase the light percentage of 20% for each light.",
                upgradeId = "weed_light"
            },
            ['water_tank'] = {
                price = 7000,
                label = "WATER TANKS",
                description = "This will allow you to fill your spraying bottles directly from the water tanks.",
                upgradeId = "water_tank"
            }
        },
        store = {
            {item = "drug_phone", label = "DOKIA PHONE", price = 1000},
            {item = "standing_fan", label = "STANDING FAN", price = 600},
            {item = "small_fan", label = "SMALL FAN", price = 300},
            {item = "weed_light", label = "WEED LIGHT", price = 1500},
        }
    },
}

Config.Blips = {            -- Blips settings for lab owners
    Enabled = true,
    ["meth"] = {
        sprite = 51,
        scale = 0.8,
    },
    ["coke"] = {
        sprite = 51,
        scale = 0.8,
    },
    ["weed"] = {
        sprite = 140,
        scale = 0.8,
    },
}

Config.FireCoords = {
    ['coke'] = {
        ['spot1'] = vector3(849.9336, -2995.9673, -48.9999),
        ['spot2'] = vector3(853.0126, -2996.1091, -48.9999),
        ['spot3'] = vector3(852.9367, -2998.3823, -48.9999),
    },
    ['meth'] = {
        ['spot1'] = vector3(1003.5106, -3198.6299, -38.9931),
        ['spot2'] = vector3(1008.0775, -3199.9780, -38.9932),
    }
}

Config.Supplies = {          -- Drops that you get from the dokia phone
    ["meth"] = {
        contactName = "Simeon (Meth)",      -- Name of the supplier
        contactNumber = "+345009466",       -- Number of the supplier
        price = 5000,                       -- Price of the drop
        voiceLines = {                      -- Voice lines of the supplier
            requesting = {                  -- Voice lines when you request a drop (you can change or add more in web/public/voice_lines/meth)
                "calling1.mp3",
                "calling2.mp3",
                "calling3.mp3",
                -- Add more voice lines if needed
            },
            waiting = {                     -- Voice lines when you wait for the drop 
                "waiting_for_meth_1.mp3",
                "waiting_for_meth_2.mp3",
                "waiting_for_meth_3.mp3",
                -- Add more voice lines if needed
            }
        },
        dropItems = {                                   -- Items that you get from the drop
            {name = 'pseudoephedrine', amount = 20},    -- Name of the item and the amount
            {name = 'red_phosphorus', amount = 20},
            {name = 'hydrochloric_acid', amount = 20},
            {name = 'lithium', amount = 20},
            {name = 'anhydrous_ammonia', amount = 20},
        }
    },
    ["coke"] = {
        contactName = "Juan (Coke)",
        contactNumber = "+345009466",
        price = 5000,
        voiceLines = {
            requesting = {
                "calling1.mp3",
                "calling2.mp3",
                "calling3.mp3",
                "calling4.mp3",
                -- Add more voice lines as needed
            }
        },
        dropItems = {
            {name = "coca_leaves", amount = 50},
            {name = "weapon_petrolcan", amount = 10},
            {name = "water_lab_bottle", amount = 10},
        }
    },
    ["weed"] = {
        contactName = "Davie (Weed)",
        contactNumber = "+345009466",
        price = 5000,
        voiceLines = {
            requesting = {
                "calling1.mp3",
                "calling2.mp3",
                "calling3.mp3",
                -- Add more voice lines as needed
            }
        },
        dropItems = {
            {name = "empty_pot", amount = 30},
            {name = "dirt_bag", amount = 30},
            {name = "weed_fertilizer", amount = 30},
            {name = "weed_whitewidow_seed", amount = 10},
            {name = "weed_skunk_seed", amount = 10},
            {name = "weed_purplehaze_seed", amount = 10},
            {name = "weed_ogkush_seed", amount = 10},
            {name = "weed_amnesia_seed", amount = 10},
        }
    },
    ["equipment"] = {
        contactName = "Daniel (Equipment)",
        contactNumber = "+345009466",
        price = 0,
        voiceLines = {
            requesting = {
                "calling1.mp3",
                "calling2.mp3",
            }
        },
        dropItems = {
            
        }
    },
}

Config.Drops = {             -- Random drops locations for the supplies (feel free to change or add more)
    Pos = {
        vector4(-1040.53, -2378.76, 28.5, 327.96),
        vector4(-1309.27, -3379.72, 29.52, 332.13),
        vector4(-722.46, -2509.97, 23.43, 59.53),
        vector4(-1158.66, -2039.68, 13.22, 137.96),
        vector4(-402.95, -2279.87, 7.61, 358.27),
        vector4(-322.65, -2632.57, 19.6, 271.97),
        vector4(-92.14, -2364.74, 14.3, 192.91),
        vector4(289.94, -2481.96, 6.31, 186.53),
        vector4(1240.61, -2962.32, 12.16, 91.18),
        vector4(1613.43, -2243.72, 132.79, 162.44),
        vector4(1087.54, -2187.56, 31.22, 56.46),
        vector4(877.8, -1709.59, 41.23, 358.03),
        vector4(988.88, -1094.83, 31.45, 228.98),
        vector4(646.32, -1371.85, 9.73, 190.0),
        vector4(480.2, -921.26, 38.78, 170.78),
        vector4(384.51, -886.2, 39.16, 208.19),
        vector4(717.73, -843.27, 24.22, 94.33),
        vector4(330.75, -1110.85, 39.35, 91.57),
        vector4(447.38, -1374.35, 43.65, 53.39),
        vector4(528.04, -1637.47, 34.33, 140.0),
        vector4(345.85, -1859.18, 27.37, 153.94),
        vector4(50.17, -1753.06, 47.7, 49.92),
        vector4(-460.9, -1711.56, 18.69, 273.14),
        vector4(-1007.13, -1757.58, 6.55, 316.06),
        vector4(-811.96, -1402.01, 5.0, 348.26),
        vector4(-923.97, -1310.01, 16.9, 26.61),
        vector4(-1160.27, -1371.6, 18.83, 4.72),
        vector4(-1177.7, -1550.32, 21.38, 17.94),
        vector4(-1335.34, -1132.31, 21.93, 333.72),
        vector4(-967.06, -974.01, 3.87, 118.37),
        vector4(-1846.55, -1248.59, 8.61, 328.21),
        vector4(-1605.03, -822.08, 10.02, 50.18),
        vector4(-1840.07, -580.76, 19.46, 318.19),
        vector4(-2020.86, -352.84, 48.11, 325.69),
        vector4(-1580.53, -453.09, 48.71, 235.3),
        vector4(-2303.07, 217.56, 167.6, 202.63),
        vector4(-1735.17, 161.6, 64.37, 214.64),
        vector4(-1166.87, 105.74, 58.98, 235.28),
        vector4(-910.19, -724.19, 19.92, 175.23),
        vector4(-611.12, -682.5, 36.29, 64.92),
        vector4(69.2, -333.4, 67.2, 41.77),
        vector4(150.45, -230.93, 59.68, 335.15),
        vector4(115.61, 255.24, 125.15, 173.92),
        vector4(377.65, 331.63, 113.13, 168.39),
        vector4(350.55, 174.36, 127.76, 192.86),
        vector4(375.24, 37.12, 92.82, 96.29),
        vector4(702.68, -294.07, 59.18, 278.97),
        vector4(2219.9, 235.62, 258.7, 167.32),
        vector4(1584.62, 2169.78, 79.28, 121.73),
        vector4(833.65, 2140.66, 52.3, 14.16),
        vector4(822.63, 1311.97, 363.45, 120.54),
        vector4(-433.33, 1582.25, 357.4, 244.0),
        vector4(-89.28, 1173.97, 281.74, 177.7),
        vector4(-1032.19, 966.9, 163.84, 42.58),
        vector4(-3251.16, 974.72, 8.11, 295.26),
        vector4(-1603.92, 5244.76, 4.0, 25.03),
        vector4(-479.65, 5491.61, 82.26, 156.99),
        vector4(-615.62, 4980.65, 143.65, 315.26),
        vector4(-903.41, 6154.05, 4.67, 231.71),
        vector4(158.55, 6322.13, 31.47, 24.48),
        vector4(99.07, 6725.05, 41.26, 183.61),
        vector4(336.13, 6470.59, 30.08, 359.76),
        vector4(1289.58, 6408.47, 26.75, 348.5),
        vector4(1707.41, 6541.23, 49.83, 119.92),
        vector4(1459.02, 6321.27, 19.4, 314.96),
        vector4(2203.51, 5573.78, 53.72, 325.19),
        vector4(3406.11, 5005.05, 30.16, 137.4),
        vector4(3931.06, 4393.36, 16.41, 100.55),
        vector4(2862.84, 4632.88, 48.89, 107.4),
        vector4(2559.09, 4528.96, 36.36, 116.46),
        vector4(2466.35, 4910.96, 46.36, 41.34),
        vector4(1865.02, 4887.04, 44.56, 123.46),
        vector4(1361.29, 4437.55, 67.15, 113.7),
        vector4(713.88, 4109.95, 35.78, 358.42),
        vector4(-196.79, 3635.22, 64.45, 274.56),
        vector4(402.53, 3331.9, 65.74, 88.24),
        vector4(267.7, 2866.77, 74.17, 122.79),
        vector4(-67.04, 1906.24, 196.14, 10.85),
        vector4(735.83, 1293.67, 360.3, 211.96),
        vector4(1287.61, 1810.21, 85.36, 118.97),
        vector4(870.46, 2856.95, 56.95, 196.45),
        vector4(1775.68, 3054.22, 62.66, 277.56),
        vector4(2199.43, 3177.92, 53.07, 295.12),
        vector4(2499.37, 3267.62, 51.9, 250.94),
        vector4(2627.96, 3659.71, 101.35, 336.14),
        vector4(262.68, 6458.84, 31.34, 189.37),
        vector4(-768.09, 4317.01, 149.08, 182.28),
    },
    TimeToDrop = 5000,
    TimeAfterDespawn= 300000,
    TimeToShowArea = 1000*10,
    TimeToOpen = {
        Normal = 10000,
        Stolen = 50000
    }
}

Config.Equipements = {       -- Equipments for the labs that you call from the dokia phone
    pedCoords = vector4(965.57, -3085.51, 5.9, 261.8), -- Ped coords
    containerCoords = vector4(958.6139, -3088.0815, 4.3371, 90.4399), -- Container coords
    containerPolyCoords = vector3(961.0923, -3087.9480, 5.9008), -- Container interaction point coords
    ForkliftCoords = vector3(965.4608, -3125.7117, 5.3528), -- Forklift coords
    MuleCoords = vector3(969.6259, -3127.1943, 6.1327), -- Mule coords
    MuleCoordsInt = vector3(969.5834, -3132.6577, 5.3398), -- Mule interaction point coords
    timeAfterDeletingContainer = 1000*60*15, -- Time after deleting the container in miliseconds
    catalogue = { -- Catalogue of the equipments
        ["meth"] = {
            drug = "meth", -- Drug of the equipment
            title = "METH LAB EQUIPMENTS", -- Title of the equipment
            price = 5000, -- Price of the equipment
            description = "This will fully equip your lab to produce pure methamphetamine. This contains all the necessary equipment to cook meth.", -- Description of the equipment
        },
        ["coke"] = {
            drug = "coke",
            title = "COCAINE LAB EQUIPMENTS",
            price = 5000,
            description = "This will fully equip your lab to produce pure cocaine. This contains all the necessary equipment to cook cocaine.",
        },
        ["weed"] = {
            drug = "weed",
            title = "WEED LAB EQUIPMENTS",
            price = 5000,
            description = "This will fully equip your lab to produce pure weed. This contains all the necessary equipment to grow weed.",
        },
    }
}

Config.MethCooking = {       -- Settings for the meth cooking
    [1] = { -- Step 1   
        coords = vector3(1005.80, -3200.40, -38.90), -- Coords of the interaction point
        coordsToCalibrate = vector4(1003.9509, -3200.3691, -38.9932, 183.0077), -- Coords of the calibration point
        intCoords = vector4(1005.7399, -3200.3726, -38.5193, 179.0989), -- Coords of the interaction point
        helpLabel = Translations['start_mixing'], -- Help label
        type = "heating", -- Type of the cooking
        heat = { -- Heat settings
            min = 90,
            max = 110
        },
        removeItems = { -- Items to remove
            {name = 'pseudoephedrine', amount = 10},
            {name = 'red_phosphorus', amount = 10},
            {name = 'lithium', amount = 10},
        },
        addItems = { -- Items to add
            {name = 'meth_oil', amount = 5},
        },
        animIndex = 3, -- (do not change)
        time = 5, -- Time of the heating in seconds
        fume = 15, -- Fume amount that gets added to the lab
        fireIndex = 'spot1'
    },
    [2] = {
        coords = vector4(1008.09, -3199.5, -38.99, 353.05),
        coordsToCalibrate = vector4(1010.68, -3199.91, -38.99, 353.66),
        intCoords = vector4(1007.9393, -3199.2166, -38.9932, 340.8227),
        helpLabel = Translations['start_solving'],
        type = "pressure",
        pressure = {
            min = 100,
            max = 150
        },
        removeItems = {
            {name = 'meth_oil', amount = 5},
            {name = 'anhydrous_ammonia', amount = 10},
        },
        addItems = {
            {name = 'methamphetamine_base', amount = 5},
        },
        anim = {
            dict = "amb@prop_human_bum_bin@idle_b",
            name = "idle_d",
            duration = 2
        },
        time = 10,
        event = "pd_labs:reducingMeth",
        fume = 10,
        fireIndex = 'spot2'
    },
    [3] = {
        coords = vector4(1004.25, -3196.56, -38.99, 174.87),
        intCoords = vector4(1004.1861, -3197.1943, -38.99, 174.87),
        type = "ph",
        event = "pd_labs:purifyingMeth",
        duration = 15000,
        helpLabel = Translations['start_purifying'],
        ph = {
            min = 6,
            max = 8
        },
        anim = {
            dict = "amb@prop_human_bum_bin@idle_b",
            name = "idle_d",
            duration = 2
        },
        removeItems = {
            {name = 'methamphetamine_base', amount = 5},
            {name = 'hydrochloric_acid', amount = 10},
        },
        addItems = {
            {name = 'methamphetamine_hydrochloride', amount = 5},
        },
        event = "pd_labs:purifyingMeth",
        fume = 10
    },
    [4] = {
        intCoords = vector4(1012.1942, -3194.8823, -39.3931, 359.6484),
        coords = vector4(1012.1942, -3194.8823, -38.9931, 359.6484),
        helpLabel = Translations['break_meth_trays'],
        event = "pd_labs:breakMethTrays",
        removeItems = {
            {name = 'methamphetamine_hydrochloride', amount = 1},
            {name = 'hammer' , amount = 1, notRemove = true},
        },
        addItems = {
            {name = 'unpackaged_meth', amount = 5},
        },
    },
    [5] = {
        intCoords = vector4(1013.4387, -3194.8831, -39.3931, 355.6455),
        coords = vector4(1013.4387, -3194.8831, -38.9931, 355.8955),
        helpLabel = Translations['package_meth'],
        event = "pd_labs:packageMeth",
        removeItems = {
            {name = 'empty_m_bag', amount = 5},
            {name = 'unpackaged_meth', amount = 1},
        },
        addItems = {
            {name = 'meth_baggy', amount = 3},
        },
    },
    FumeInterval = 1000*60*5, -- For every interval, the fume level will decrease by the FumeDecrease amount
    FumeDecrease = 5 -- Fume level decrease amount
}

Config.CokeCooking = {       -- Settings for the coke cooking
    FumeInterval = 1000*60*5, -- For every interval, the fume level will decrease by the FumeDecrease amount
    FumeDecrease = 5, -- Fume level decrease amount
    Grinding = { -- Grinding settings
        remove = {},
        add = {
            {name = "coca_leaf_powder", min = 5, max = 10},
        },
        duration = 5000, -- Duration of the grinding
        fume = 10 -- Fume amount that gets added to the lab
    },
    Barrel = { -- Barrel settings
        ['add_coca_leaves'] = { -- Adding coca leaves
            remove = { -- Items to remove
                {name = "coca_leaf_powder", amount = 10},
            },
            duration = 10000 -- Duration of the adding coca leaves
        },
        ['add_gasoline'] = { -- Adding gasoline
            remove = { -- Items to remove
                {name = "weapon_petrolcan", amount = 1},
            },
            duration = 10000 -- Duration of the adding gasoline
        },
        ['add_water'] = { -- Adding water
            remove = { -- Items to remove
                {name = "water_lab_bottle", amount = 1},
            },
            duration = 10000 -- Duration of the adding water
        },
        ['mixing'] = { -- Mixing settings
            duration = 10000, -- Duration of the mixing
            add = { -- Items to add
                {name = "coca_gaso_infused", amount = 10},
            },
            fume = 10
        }
    },
    Microwave = { -- Microwave settings
        remove = { -- Items to remove   
            {name = "coca_gaso_infused", amount = 5},
        },
        add = {
            {name = "coca_infused_liquid",amount = 3},
        },
        duration = 10000, -- Duration of the heating
        heat = { -- Heat settings
            min = 90,
            max = 130,
            duration = 10000
        },
        fume = 10
    },
    Filter = { -- Filter settings
            remove = { -- Items to remove
            {name = "coca_infused_liquid", amount = 5},
        },
        add = {
            {name = "coke_brick",amount = 5},
        },
        duration = 10000, -- Duration of the heating
        heat = { -- Heat settings
            min = 90,
            max = 130,
            duration = 10000
        },
        fume = 10
    },
    Tables = { -- Coke brick processing tables (do not change only adjust for animation purposes)
        {coords = vector4(1090.3427, -3196.5693, -38.9935, 5.8229)},
        {coords = vector4(1092.8979, -3194.9048, -38.9935, 179.6015)},
        {coords = vector4(1095.3961, -3194.9146, -38.9935, 181.9359)},
        {coords = vector4(1099.5439, -3194.1521, -38.9935, 92.5176)},
    },
    Unpacking = { -- Unpacking settings
        remove = { -- Items to remove
            {name = "coke_brick", amount = 5},
        },
        duration = 10000
    },
    Processing = { -- Processing settings
        add = { -- Items to add
            {name = "coca_powder", amount = 10},
        },
        duration = 15000
    },
    Bagging = { -- Bagging settings
        coords = vector4(1100.7322, -3199.7351, -39.0, 181.1790), -- Coords of the interaction point
        posCoords = vector3(1101.245, -3198.82, -39.60), -- Coords of the interaction point
        remove = { -- Items to remove
            {name = "coca_powder", amount = 5},
        },
        add = {
            {name = "coke_baggy", amount = 10},
        }
    }
}

Config.WeedCooking = {       -- Settings for the weed cooking 
    PercentagePerFan = 30, -- Percentage of the plant growth per fan
    FanDistance = 4.0, -- how far the fan can be from the plant to be effective
    LightDistance = 3.0, -- how far the light can be from the plant to be effective
    FanAngle = 0.8,
    LimitPerPlantZone = 6,
    FanProps = { -- Fan props
        {
            item = "small_fan", -- Item name for the fan
            model = 'v_res_fa_fan', -- Model of the fan (prop name)
            addition = 10, -- Percentage of ventillation added per fan
            installDuration = 10000, -- Duration of the installation
            anim = { -- Animation of the installation (do not change)
                dict = "int_residential",
                name = "v_res_fa_fan"
            },
            forceGround = true -- If true, the fan will be placed on the ground by force
        },
        {
            item = "standing_fan",
            model = "bkr_prop_weed_fan_floor_01a",
            addition = 30,
            installDuration = 10000,
            forceGround = true,
            anim = {
                dict = "bkr_mp_biker_weed",
                name = "bkr_prop_weed_fan_floor_01a"
            },
            offset = {
                target = vector3(0.0, 0.0, 0.9),
                label = vector3(0.0, 0.0, 0.9)
            }
        }
    },
    LightProps = { -- Light props
        {
            item = "weed_light", -- Item name for the light
            model = "bzzz_plants_weed_light", -- Model of the light (prop name)
            addition = 40, -- Percentage of light added per light
            installDuration = 10000, -- Duration of the installation
        }
    },
    SeedItems = { -- Seed items
        ['whitewidow'] = {name = 'weed_whitewidow_seed', label = 'White Widow Seed'},
        ['skunk'] = {name = 'weed_skunk_seed', label = 'Skunk Seed'},
        ['purplehaze'] = {name = 'weed_purplehaze_seed', label = 'Purple Haze Seed'},
        ['ogkush'] = {name = 'weed_ogkush_seed', label = 'OG Kush Seed'},
        ['amnesia'] = {name = 'weed_amnesia_seed', label = 'Amnesia Seed'},
    },
    Dirt = { -- Dirt settings
        duration = 5000, -- Duration of adding dirt
        remove = { -- Items to remove
            {name = "dirt_bag", amount = 1},
        },
    },
    Seed = { -- Seed settings
        duration = 7000 -- Duration of planting seeds
    },
    Water = { -- Water settings
        duration = 7000, -- Duration of filling the spray bottles
        add = { -- Items to add
            {name = "weed_spray_bottle", amount = 10},
        }
    },
    Watering = { -- Watering settings
        duration = 7000, -- Duration of watering
        percentagePerWaterSpray = 60, -- Percentage of growth added per water spray
        remove = { -- Items to remove
            {name = "weed_spray_bottle", amount = 1},
        },
    },
    Fertilizing = { -- Fertilizing settings
        duration = 7000, -- Duration of fertilizing
        percentagePerFertilizer = 60, -- Percentage of growth added per fertilizer
        remove = { -- Items to remove
            {name = "weed_fertilizer", amount = 1},
        },
    },
    Growing = { -- Growing settings
        minutesToCheckForGrowth = 0.5, -- Minutes interval to check for growth
        minHealthToGrow = 50, -- Minimum health to grow to the next stage
        minFan = 30, -- Minimum ventillation level to grow to the next stage
    },
    LevelsDecrease = { -- Levels decrease settings  
        minutesToRemoveLevel = 5, -- Minutes interval to decrease plant levels  
        fertilizer = { -- Each interval, a random amount between min and max will be removed    
            min = 1, max = 3
        },
        water = { -- Each interval, a random amount between min and max will be removed
            min = 1, max = 3
        },
    },
    Harvesting = { -- Harvesting settings
        duration = 10000, -- Duration of the harvesting
        [4] = { -- when the plant is at 4th stage
            add = {
                {name = "weed_leaf_", amount = 5}, -- adds seed type. ex: weed_leaf_whitewidow
            }
        },
        [5] = { -- when the plant is at 5th stage
            add = {
                {name = "weed_leaf_", amount = 10},
            }
        }
    },
    Drying = { -- Drying settings
        attachingDuration = 10000, -- Duration of attaching the leaves to the drying rack
        LeafsItems = { -- Leafs items
            ['whitewidow'] = {name = 'weed_leaf_whitewidow', label = 'White Widow leaf'},
            ['skunk'] = {name = 'weed_leaf_skunk', label = 'Skunk leaf'},
            ['purplehaze'] = {name = 'weed_leaf_purplehaze', label = 'Purple Haze leaf'},
            ['ogkush'] = {name = 'weed_leaf_ogkush', label = 'OG Kush leaf'},
            ['amnesia'] = {name = 'weed_leaf_amnesia', label = 'Amnesia leaf'},
        },
        Thread = {
            minLight = 30, -- Minimum light level to dry the leaves
            minFan = 30, -- Minimum ventillation level to dry the leaves
            minutesToCheck = 0.5, -- Minutes interval to check the drying level
            idealAdditionPerCheck = 10, -- if the average between the fan and light = 100, then it will add 10% to the drying level, else it will add less depending on the average
        },
        add = { -- Items to add
            {name = "weed_dried_leaf_", amount = 5}, -- ex: weed_dried_leaf_whitewidow  
        },
        collectingDuration = 10000 -- Duration of collecting the dried leaves
    },
    DryingProps = { -- Drying props
        ['bzzz_weed_dry_natur_01'] = { -- Prop name
            name = 'bzzz_weed_dry_natur_01', -- Item name
            offset = vector3(0.0, 0.0, -.87),
        },
        ['bzzz_weed_dry_natur_02'] = {
            name = 'bzzz_weed_dry_natur_02',
            offset = vector3(0.0, 0.0, -1.17),
        }
    },
    Treatement = { -- Processing settings
        duration = 10000, -- Duration of the processing
        anim = { -- Animation of the processing (do not change)
            animDict = "anim@amb@business@weed@weed_sorting_seated@",
            animName = "sorter_right_sort_v3_sorter02",
        },
        coords = { -- Coords of the processing (do not change)
            [1] = vector4(1039.324, -3205.918, -38.15, 98.707),
            [2] = vector4(1037.5243, -3205.9574, -38.1702, 269.60),
            [3] = vector4(1034.5476, -3206.2, -38.1765, 87.4354),
            [4] = vector4(1032.9828, -3205.9998, -38.1803, 275.3716)
        },
        add = { -- Items to add 
            {name = "weed_baggy", amount = 10},
        },
        remove = { -- Items to remove
            {name = "weed_dried_leaf_", label = "Dried leaf", amount = 5},
        }
    }
}

Config.WeedProps = {         -- Weed props in the lab (do not change only add)
    {
        coords = vector4(1057.323, -3200.744, -40.31806, 78.07417), -- Coords of the water tank
        rot = vector3(0, 0, 78.07417), -- Rotation of the water tank
        prop = "xm3_prop_xm3_tank_water_01a", -- Prop name of the water tank
        waterTank = true -- If true, the prop will act as water tank
    },
    {
        coords = vector4(1057.452, -3199.306, -40.3213, -97.0961),
        rot = vector3(0, -0, -97.0961),
        prop = "xm3_prop_xm3_tank_water_01a",
        waterTank = true
    },
    {
        coords = vector4(1050.638, -3198.512, -40.11522, 92.08699),
        rot = vector3(0, -0, 92.08699),
        prop = "bzzz_weed_dry_rack_b",
        hangingPos = {
            vector4(1051.064, -3190.164, -38.38533, 0),
            vector4(1051.144, -3190.752, -38.39641, 0),
            vector4(1051.163, -3191.422, -38.39348, 0),
            vector4(1051.202, -3192.145, -38.39005, 0)
        },
        dryingRack = true
    },
    {
        coords = vector4(1050.581, -3194.918, -40.14898, 86.5519),
        rot = vector3(0, 0, 86.5519),
        prop = "bzzz_weed_dry_rack_b",
        hangingPos = {
            vector4(1050.995, -3194.029, -38.42395, 0),
            vector4(1050.942, -3194.691, -38.42193, 0),
            vector4(1050.907, -3195.339, -38.42444, 0),
            vector4(1050.882, -3195.917, -38.4295, 0)
        },
        dryingRack = true
    },
    {
        coords = vector4(1050.79, -3191.214, -40.11624, -86.07387),
        rot = vector3(-0, -0, -86.07387),
        prop = "bzzz_weed_dry_rack_b",
        hangingPos = {
            vector4(1050.952, -3197.576, -38.39578, 0),
            vector4(1050.989, -3198.244, -38.39708, 0),
            vector4(1051.002, -3198.837, -38.38615, 0),
            vector4(1051.031, -3199.487, -38.39447, 0)
        },
        dryingRack = true
    },
}

Config.CokeGarageProps = {   -- Coke garage props (do not change only add)
    {
        coords = vector4(849.7176, -2994.793, -49.9994, 0), -- Coords of the prop
        rot = vector3(0, 0, 0), -- Rotation of the prop
        prop = "prop_yacht_table_03" -- Prop name
    },
    {
        coords = vector4(852.8784, -2994.785, -49.9994, 0),
        rot = vector3(0, 0, 0),
        prop = "prop_yacht_table_03"
    },
    {
        coords =  vector4(854.3298, -2998.394, -49.9994, -90.11307),
        rot =  vector3(0, -0, -90.11307),
        prop = "prop_yacht_table_03"
    },
    {
        coords =  vector4(845.9506, -3002.636, -49.9942, 0),
        rot =  vector3(0, -0, 0),
        prop = "m23_2_prop_m32_heli_tarp_01a"
    },
    {
        coords =  vector4(851.1357, -3002.803, -49.9942, -7.971935),
        rot =  vector3(-0, -0, -7.971935),
        prop = "m23_2_prop_m32_heli_tarp_01a"
    },
    {
        coords =  vector4(849.528, -2995.231, -49.06875, -36.48515),
        rot =  vector3(-0, -0, -36.48515),
        prop = "bkr_prop_coke_spatula_04"
    },
    {
        coords =  vector4(853.1172, -2994.828, -49.99474, -2.983734),
        rot =  vector3(-0, -0, -2.983734),
        prop = "bkr_prop_coke_doll_bigbox"
    },
    {
        coords =  vector4(854.0186, -2998.625, -49.06558, -98.75452),
        rot =  vector3(-0, -0, -98.75452),
        prop = "bkr_prop_coke_scale_01"
    },
    {
        coords =  vector4(854.6322, -3000.97, -50.00024, 88.05808),
        rot =  vector3(-0, -0, 88.05808),
        prop = "bkr_prop_coke_press_01b"
    },
    {
        coords =  vector4(850.5567, -2994.37, -49.06591, 44.37773),
        rot =  vector3(-0, -0, 44.37773),
        prop = "bkr_prop_coke_boxeddoll"
    },
    {
        coords =  vector4(854.0679, -2998.647, -48.95454, 0),
        rot =  vector3(-0, -0, 0),
        prop = "tr_prop_tr_coke_powder_01a"
    },
    {
        coords =  vector4(852.7602, -2994.681, -49.06591, 0),
        rot =  vector3(-0, -0, 0),
        prop = "h4_prop_h4_coke_mixtube_02"
    },
    {
        coords =  vector4(854.5264, -2994.896, -49.9867, 9.089169),
        rot =  vector3(-0, -0, 9.089169),
        prop = "prop_rub_boxpile_09"
    },
    {
        coords =  vector4(849.415, -2994.691, -49.99987, 0),
        rot =  vector3(-0, -0, 0),
        prop = "prop_cardbordbox_05a"
    },
    {
        coords =  vector4(850.1662, -2994.77, -49.99987, 4.524986),
        rot =  vector3(-0, -0,  4.524986),
        prop = "prop_cardbordbox_05a"
    },
    {
        coords =  vector4(848.1941, -2996.936, -49.55737, 0),
        rot =  vector3(-0, -0,  0),
        prop = "prop_bin_beach_01d",
        place = true,
        barrel = true
    },
    {
        coords =  vector4(854.4084, -2996.823, -49.55737, 0),
        rot =  vector3(-0, -0,  0),
        prop = "prop_bin_beach_01d",
        place = true,
        barrel = true
    },
    {
        coords =  vector4(854.908, -3003.544, -49.00936, -87.65034),
        rot =  vector3(-0, -0,  -87.65034),
        prop = "prop_fire_hosebox_01",
    },
    {
        coords =  vector4(850.2935, -2994.787, -48.67115, 0),
        rot =  vector3(-0, -0,  0),
        prop = "prop_tea_urn",
        installId = "filter1",
        place = true,
        item = "coke_filter",
        filter = true,
        fireIndex = 'spot1'
    },
    {
        coords =  vector4(853.5518, -2994.721, -48.67115, 0),
        rot =  vector3(-0, -0,  0),
        prop = "prop_tea_urn",
        installId = "filter2",
        place = true,
        item = "coke_filter",
        filter = true,
        fireIndex = 'spot2'
    },
    {
        coords =  vector4(854.4, -2999.042, -48.67115, -83.17644),
        rot =  vector3(-0, -0,  -83.176),
        prop = "prop_tea_urn",
        installId = "filter3",
        place = true,
        item = "coke_filter",
        filter = true,
        fireIndex = 'spot3'
    },
    {
        coords =  vector4(849.1595, -2994.663, -49.06591, 0),
        rot =  vector3(-0, -0,  0),
        prop = "prop_microwave_1",
        installId = "micro1",
        place = true,
        item = "microwave",
        microwave = true,
        fireIndex = 'spot1'
    },
    {
        coords =  vector4(852.343, -2994.697, -49.06591, 0),
        rot =  vector3(-0, -0,  0),
        prop = "prop_microwave_1",
        installId = "micro2",
        place = true,
        item = "microwave",
        microwave = true,
        fireIndex = 'spot2'
    },
    {
        coords =  vector4(854.3741, -2997.852, -49.06591, -91.01445),
        rot =  vector3(-0, -0,  -91.01),
        prop = "prop_microwave_1",
        installId = "micro3",
        place = true,
        item = "microwave",
        microwave = true,
        fireIndex = 'spot3'
    },
}

Config.Plantable = {         -- Plantable zones (feel free to change or add more)
    ["coke"] = { -- Coords for the coke planting inside the coke garage
        vector4(852.9123, -3004.519, -50.08381, 0), -- Coords of the planting zone
        vector4(851.5505, -3004.357, -50.08316, 0.3863621),
        vector4(850.5689, -3004.484, -50.06028, -0.2080815),
        vector4(849.5505, -3004.624, -50.06456, 0),
        vector4(848.679, -3004.678, -50.09193, 0),
        vector4(847.516, -3004.773, -50.06903, -0.5003505),
        vector4(846.6522, -3004.736, -50.06196, -0.3347572),
        vector4(845.6992, -3004.759, -49.97194, -0.1789464),
        vector4(845.7877, -3002.924, -49.95397, 0.09019607),
        vector4(846.8945, -3002.878, -49.98773, -0.09237108),
        vector4(848.2067, -3003.023, -50.08641, 0),
        vector4(849.5068, -3002.92, -50.01607, 0.2627801),
        vector4(850.6345, -3002.827, -49.96563, 0.05322903),
        vector4(851.7084, -3002.804, -49.95866, -0.09911719),
        vector4(852.7753, -3002.925, -50.09314, 0),
    },
    ["weed"] = { -- Polyzones for the weed planting zones inside the lab
        {
            vector2(1060.4921875, -3191.5737304688),
            vector2(1064.8408203125, -3191.3764648438),
            vector2(1064.8254394531, -3195.646484375),
            vector2(1060.7073974609, -3195.529296875)
        },
        {
            vector2(1061.2125244141, -3196.0415039062),
            vector2(1064.8782958984, -3195.8891601562),
            vector2(1064.8668212891, -3200.1325683594),
            vector2(1061.0986328125, -3200.2001953125)
        },
        {
            vector2(1059.9354248047, -3207.5822753906),
            vector2(1060.283203125, -3203.4187011719),
            vector2(1054.6118164062, -3203.3955078125),
            vector2(1054.2564697266, -3207.4680175781)
        },
        {
            vector2(1060.7224121094, -3201.5424804688),
            vector2(1064.8568115234, -3201.15234375),
            vector2(1064.8864746094, -3206.466796875),
            vector2(1061.4456787109, -3206.7446289062)
        },
        {
            vector2(1053.4624023438, -3203.4553222656),
            vector2(1053.8195800781, -3207.462890625),
            vector2(1049.4401855469, -3207.3752441406),
            vector2(1049.6125488281, -3203.3325195312)
        }
    }
}
