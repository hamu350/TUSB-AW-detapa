#> asset:villager/0019.tatu/trade_info/2.trade_info

# まずデータを初期化します(これは消さないでね)
data remove storage asset: villager

# まずアイテムを持たせる防具立てを召喚します
# summon armor_stand -2000.0 0.0 0.0 {Tags:["ItemHolder"]}

# 交易品となるアイテムを持たせます(Mainhand→buy、Offhand→buyB、Head→sell)
# item replace entity @e[tag=ItemHolder,limit=1] weapon.mainhand with diamond 5
# item replace entity @e[tag=ItemHolder,limit=1] weapon.offhand with emerald 64
# item replace entity @e[tag=ItemHolder,limit=1] armor.head with diamond_block 1
# /loot版も用意しておきますね
# /lootでやる場合、個数を別コマンドで設定してあげる必要があります
# loot replace entity @e[tag=ItemHolder,limit=1] weapon.mainhand loot <path>
# data modify entity @e[tag=ItemHolder,limit=1] HandItems[0].Count set value 1
# loot replace entity @e[tag=ItemHolder,limit=1] weapon.offhand loot <path>
# data modify entity @e[tag=ItemHolder,limit=1] HandItems[1].Count set value 1
# loot replace entity @e[tag=ItemHolder,limit=1] armor.head loot <path>
# data modify entity @e[tag=ItemHolder,limit=1] ArmorItems[0].Count set value 1

# 持たせたアイテムを元にstorage上の取引を追加します
# data modify storage _: _ set from entity @e[tag=ItemHolder,limit=1]
# data modify storage asset: villager.Offers.Recipes set value {buy:{},buyB:{},sell:{}}
# data modify storage asset: villager.Offers.Recipes[-1].buy set from storage _: _.HandItems[0]
# data modify storage asset: villager.Offers.Recipes[-1].buyB set from storage _: _.HandItems[1]
# data modify storage asset: villager.Offers.Recipes[-1].sell set from storage _: _.ArmorItems[0]
# data remove storage _: _
# 他にも入れたい上方(xpや使用上限など)があれば各自設定します
# data modify storage asset: villager.Offers.Recipes[-1] merge value {xp:0,MaxUses:2147483637}

# 交易品を持たせるところから繰り返します。オフハンドを消したりするのは忘れずに

# 取引情報を設定し終わったら防具立てを処理する
# kill @e[tag=ItemHolder,limit=1]

# nbtなどはsummon側で設定します。ということで終了

data modify storage asset: villager set value [{maxUses: 2147483647, buyB: {id: "minecraft:tripwire_hook", Count: 16b}, buy: {id: "minecraft:armor_stand", Count: 1b}, sell: {id: "minecraft:armor_stand", Count: 1b, tag: {EntityTag: {NoGravity: 0b, DisabledSlots: 1973790, Small: 0b, Pose: {LeftLeg: [0.0f, 0.0f, 30.0f], RightArm: [90.0f, 90.0f, 30.0f], RightLeg: [0.0f, 1.0f, 0.0f]}, ArmorItems: [{id: "minecraft:iron_boots", Count: 65b, tag: {Damage: 0}}, {}, {}, {}], NoBasePlate: 1b, id: "minecraft:armor_stand", ShowArms: 1b, Invisible: 1b, Marker: 0b, HandItems: [{id: "minecraft:wooden_sword", Count: 1b, tag: {Damage: 0, display: {Name: '{"text":"木刀"}'}}}, {}]}, RepairCost: -2147483648, display: {Lore: ['{"text":"§7剣§fや§6他のツール類§fを飾る事ができる台"}', '{"text":"§c※撤去する場合は奈落へ落として下さい"}'], Name: '{"text":"§f§l飾り台"}'}, Enchantments: []}}, xp: 1, uses: 0, priceMultiplier: 0.0f, specialPrice: 0, demand: 0, rewardExp: 0b}, {maxUses: 2147483647, buyB: {id: "minecraft:oak_log", Count: 16b}, buy: {id: "minecraft:oak_stairs", Count: 12b}, sell: {id: "minecraft:pig_spawn_egg", Count: 1b, tag: {EntityTag: {CustomName: '{"text":"椅子"}', Health: 0.01f, DeathTime: 19s, Attributes: [{Base: 0.01d, Name: "generic.max_health"}, {Base: 0.0d, Name: "generic.movement_speed"}], Silent: 1b, DeathLootTable: "empty", id: "minecraft:pig", NoAI: 1b, Tags: ["SystemEntity"], ActiveEffects: [{Duration: 100000000, Id: 14b, Amplifier: 0b, ShowParticles: 0b}], Age: -100000000, Saddle: 1b}, RepairCost: -2147483648, display: {Lore: ['{"text":"§d§n630万回§f§nの§d§nテスト§fにも耐えた§6設置型の椅子"}', '{"text":"§6人参棒§fを使う事で向きを変えられます"}', '{"text":"§c§l※使い方は正しく守ってください"}'], Name: '{"text":"§e§lPIG§9アームチェア"}'}, Enchantments: []}}, xp: 1, uses: 1, priceMultiplier: 0.0f, specialPrice: 0, demand: 0, rewardExp: 0b}, {maxUses: 2147483647, buyB: {id: "minecraft:oak_planks", Count: 8b}, buy: {id: "minecraft:ender_chest", Count: 1b}, sell: {id: "minecraft:chest", Count: 1b, tag: {RepairCost: -2147483648, HideFlags: 63, BlockEntityTag: {Items: [{Slot: 13b, id: "minecraft:chest", Count: 1b, tag: {BlockEntityTag: {Items: [{Slot: 11b, id: "minecraft:chest", Count: 1b, tag: {BlockEntityTag: {Items: [], id: "minecraft:chest", Lock: ""}, display: {Lore: ['{"text":"(+NBT)"}']}}}, {Slot: 15b, id: "minecraft:chest", Count: 1b, tag: {BlockEntityTag: {Items: [{Slot: 11b, id: "minecraft:chest", Count: 1b, tag: {BlockEntityTag: {Items: [], id: "minecraft:chest", Lock: ""}, display: {Lore: ['{"text":"(+NBT)"}']}}}, {Slot: 13b, id: "minecraft:chest", Count: 1b, tag: {BlockEntityTag: {Items: [], id: "minecraft:chest", Lock: ""}, display: {Lore: ['{"text":"(+NBT)"}']}}}, {Slot: 15b, id: "minecraft:chest", Count: 1b, tag: {BlockEntityTag: {Items: [{Slot: 13b, id: "minecraft:player_head", Count: 1b, tag: {SkullOwner: {Properties: {textures: [{Value: "eyJ0aW1lc3RhbXAiOjE0MTMwMjY1NjMxNTYsInByb2ZpbGVJZCI6IjczZDRlMDY4M2E2ZDRjOGI4Zjg1MzMyMzU0Njk1NWM0IiwicHJvZmlsZU5hbWUiOiJNSEZfQ2hlc3QiLCJpc1B1YmxpYyI6dHJ1ZSwidGV4dHVyZXMiOnsiU0tJTiI6eyJ1cmwiOiJodHRwOi8vdGV4dHVyZXMubWluZWNyYWZ0Lm5ldC90ZXh0dXJlLzZmNjhkNTA5YjVkMTY2OWI5NzFkZDFkNGRmMmU0N2UxOWJjYjFiMzNiZjFhN2ZmMWRkYTI5YmZjNmY5ZWJmIn19fQ==", Signature: "O3ioBL5NLmrpe/jDkT+A+FvJddEvArqt2uTf5xXtzRuorxYZNwtutooZ1eeQ9YaiNWGeMSxoJWEf4D+c50LyuSSC0Oi2qflJKQgx1/lbNCalvprMyJxnXr+JUzEfiELKhMiVmv2by14Jy0caz30tMEA+ms7FkkXBSRMPNWRqUetfCf5FsRZe7o4vy290hGx3vrDQD/8+OxKBEIZiyafjlGeywgPebCgJlecf3DxbTb+btqxWRCQmGTfXHy3Z55xfGdAHlIAPJ5kmkQK5oJmu+QgiCV1laOgZaI1S0Dppvynmr8HujjFj7FI+/U8FL1GmCQ6MKXllO1LxwuRfwunWAxxPJYH5Cdq+28EpjfYUcsEGjX6dduUd8MUIuy4KWBbWF7DI/9dX0aKzMGKJ/KlazXsLOsgeQ9LpvG1b/fjGvnL9Q8YDXyGqt+tb/0Fw8rpGTD2UXx7NfP2gQHZWjvnlwEZRpNw7x04FguAPKv08QST8GlB4fc6YeeeR1NHn7kd4bNpf41idjqdGosF/NmIkZiW4Ct4SN0C6aKM+1Mt5ne6EUFYa/b4U+Yd1irW1DAigQOopMVxE2UqwIgERL362jHvWSSnUs2jn9CcFsDXu/LOLaHuIlrIcgM51e+CqN1L1Ki8YdBGy7OkzH36ndbO0V7EmIKJEN+qUP9PzsbcGNjQ="}]}, Id: [I; 1943330920, 980241547, -1887096029, 1416189380], Name: "MHF_Chest"}, display: {Name: '{"text":"ﾐﾆﾁｪｽﾄ"}'}}}], id: "minecraft:chest", Lock: ""}, display: {Lore: ['{"text":"(+NBT)"}']}}}], id: "minecraft:chest", Lock: ""}, display: {Lore: ['{"text":"(+NBT)"}']}}}], id: "minecraft:chest", Lock: ""}, display: {Lore: ['{"text":"(+NBT)"}']}}}], id: "minecraft:chest", Lock: ""}, display: {Lore: ['{"text":"(+NBT)"}'], Name: '{"text":"§r§r§r§6§nﾁｪｽﾄﾘｮｰｼｶ"}'}, Enchantments: []}}, xp: 1, uses: 1, priceMultiplier: 0.0f, specialPrice: 0, demand: 0, rewardExp: 0b}, {maxUses: 2147483647, buyB: {id: "minecraft:fire_charge", Count: 16b}, buy: {id: "minecraft:furnace", Count: 1b}, sell: {id: "minecraft:furnace", Count: 1b, tag: {RepairCost: -2147483648, HideFlags: 63, BlockEntityTag: {BurnTime: 10000s, Items: [{Slot: 1b, id: "minecraft:red_stained_glass_pane", Count: 1b, tag: {RepairCost: -2147483648, display: {Name: '{"text":"§r§4§r§4灼熱の赤板"}'}, Enchantments: [{lvl: 2b, id: "minecraft:fire_aspect"}]}}], id: "minecraft:furnace", CustomName: '{"text":"熱を帯びた竈"}', RecipesUsed: {}}, display: {Lore: ['{"text":"§r§4溶岩一杯分§rの§c§l熱§rを持った§7§l竈"}', '{"text":"§r§5ｱｲﾃﾑ状態§rならば§c§l熱§rは保存され続けるが"}', '{"text":"§r設置した瞬間から、§c§l熱§rは逃げていく"}'], Name: '{"text":"§r§4§o§l熱を帯びた竈"}'}, Enchantments: []}}, xp: 1, uses: 0, priceMultiplier: 0.0f, specialPrice: 0, demand: 0, rewardExp: 0b}, {maxUses: 2147483647, buyB: {id: "minecraft:air", Count: 65b}, buy: {id: "minecraft:emerald", Count: 1b}, sell: {id: "minecraft:white_banner", Count: 1b}, xp: 1, uses: 0, priceMultiplier: 0.0f, specialPrice: 0, demand: 0, rewardExp: 0b}, {maxUses: 2147483647, buyB: {id: "minecraft:air", Count: 65b}, buy: {id: "minecraft:emerald", Count: 2b}, sell: {id: "minecraft:armor_stand", Count: 1b}, xp: 1, uses: 0, priceMultiplier: 0.0f, specialPrice: 0, demand: 0, rewardExp: 0b}, {maxUses: 2147483647, buyB: {id: "minecraft:air", Count: 65b}, buy: {id: "minecraft:emerald", Count: 3b}, sell: {id: "minecraft:oak_sign", Count: 1b}, xp: 1, uses: 0, priceMultiplier: 0.0f, specialPrice: 0, demand: 0, rewardExp: 0b}, {maxUses: 2147483647, buyB: {id: "minecraft:stick", Count: 7b}, buy: {id: "minecraft:glass_pane", Count: 2b}, sell: {id: "minecraft:white_banner", Count: 1b, tag: {RepairCost: -2147483648, HideFlags: 63, BlockEntityTag: {Patterns: [{Pattern: "gru", Color: 3}, {Pattern: "gru", Color: 3}, {Pattern: "gra", Color: 0}, {Pattern: "bo", Color: 15}, {Pattern: "ms", Color: 15}, {Pattern: "bo", Color: 12}, {Pattern: "ms", Color: 12}], id: "minecraft:banner"}, display: {Name: '{"text":"§r§r§r§r§r窓枠"}'}, Enchantments: []}}, xp: 1, uses: 0, priceMultiplier: 0.0f, specialPrice: 0, demand: 0, rewardExp: 0b}, {maxUses: 2147483647, buyB: {id: "minecraft:birch_door", Count: 1b}, buy: {id: "minecraft:dark_oak_door", Count: 1b}, sell: {id: "minecraft:light_gray_banner", Count: 1b, tag: {RepairCost: -2147483648, HideFlags: 63, BlockEntityTag: {Patterns: [{Pattern: "bri", Color: 0}, {Pattern: "hhb", Color: 12}, {Pattern: "sc", Color: 15}, {Pattern: "sc", Color: 12}, {Pattern: "bo", Color: 15}, {Pattern: "bo", Color: 12}], id: "minecraft:banner"}, display: {Name: '{"text":"§r§r§r§r§r開かずのドア"}'}, Enchantments: []}}, xp: 1, uses: 0, priceMultiplier: 0.0f, specialPrice: 0, demand: 0, rewardExp: 0b}, {maxUses: 2147483647, buyB: {id: "minecraft:torch", Count: 64b}, buy: {id: "minecraft:gunpowder", Count: 16b}, sell: {id: "minecraft:armor_stand", Count: 16b, tag: {EntityTag: {NoGravity: 0b, Motion: [0.0d, 2.0d, 0.0d], Small: 0b, Health: 1.0f, Attributes: [{Base: 1.0d, Name: "generic.max_health"}], Invulnerable: 1b, ShowArms: 0b, Marker: 1b, Glowing: 1b, DisabledSlots: 31, DeathTime: 0s, Pose: {Head: [0.0f, 0.0f, 180.0f]}, ArmorItems: [{}, {}, {}, {id: "minecraft:beacon", Count: 1b, tag: {AttributeModifiers: [{AttributeName: "generic.max_health", Operation: 0, UUID: [I; 0, 6, 0, 2], Amount: -1, Name: "minus"}]}}], NoBasePlate: 1b, Team: "Yellow", id: "minecraft:armor_stand", Invisible: 1b, ActiveEffects: [{Duration: 110, Id: 21b, Amplifier: 0b, ShowParticles: 0b}, {Duration: 100, Id: 25b, Amplifier: "128b", ShowParticles: 0b}]}, RepairCost: -2147483648, display: {Lore: ['{"text":"§f使用すると上空へ飛び出し"}', '{"text":"§f少しの間滞空して目印となる"}'], Name: '{"text":"§f§l凧風船"}'}, Enchantments: []}}, xp: 1, uses: 1, priceMultiplier: 0.0f, specialPrice: 0, demand: 0, rewardExp: 0b}, {maxUses: 2147483647, buyB: {id: "minecraft:packed_ice", Count: 1b}, buy: {id: "minecraft:ice", Count: 16b}, sell: {id: "minecraft:endermite_spawn_egg", Count: 4b, tag: {EntityTag: {Motion: [0.56d, -1.0d, 0.56d], Lifetime: 2398, ArmorItems: [{id: "minecraft:leather_boots", Count: 65b, tag: {Damage: 0, RepairCost: -2147483648, Enchantments: [{lvl: 1s, id: "minecraft:frost_walker"}]}}], id: "minecraft:endermite", NoAI: 1b, Glowing: 1b, ActiveEffects: [{Duration: 10, Id: 14b, Amplifier: 0b, ShowParticles: 0b}]}, RepairCost: -2147483648, HideFlags: 63, CanPlaceOn: ["minecraft:stone", "minecraft:grass_block", "minecraft:dirt", "minecraft:cobblestone", "minecraft:oak_planks", "minecraft:oak_sapling", "minecraft:bedrock", "minecraft:water", "minecraft:water", "minecraft:lava", "minecraft:lava", "minecraft:sand", "minecraft:gravel", "minecraft:gold_ore", "minecraft:iron_ore", "minecraft:coal_ore", "minecraft:oak_log", "minecraft:oak_leaves", "minecraft:sponge", "minecraft:glass", "minecraft:lapis_ore", "minecraft:lapis_block", "minecraft:dispenser", "minecraft:sandstone", "minecraft:note_block", "minecraft:red_bed", "minecraft:powered_rail", "minecraft:detector_rail", "minecraft:sticky_piston", "minecraft:cobweb", "minecraft:dead_bush", "minecraft:dead_bush", "minecraft:piston", "minecraft:piston_head", "minecraft:white_wool", "minecraft:moving_piston", "minecraft:dandelion", "minecraft:poppy", "minecraft:brown_mushroom", "minecraft:red_mushroom", "minecraft:gold_block", "minecraft:iron_block", "minecraft:smooth_stone_slab", "minecraft:smooth_stone_slab", "minecraft:bricks", "minecraft:tnt", "minecraft:bookshelf", "minecraft:mossy_cobblestone", "minecraft:obsidian", "minecraft:wall_torch", "minecraft:fire", "minecraft:oak_stairs", "minecraft:chest", "minecraft:redstone_wire", "minecraft:diamond_ore", "minecraft:diamond_block", "minecraft:crafting_table", "minecraft:wheat", "minecraft:farmland", "minecraft:furnace", "minecraft:furnace", "minecraft:oak_sign", "minecraft:oak_door", "minecraft:ladder", "minecraft:rail", "minecraft:cobblestone_stairs", "minecraft:oak_wall_sign", "minecraft:lever", "minecraft:stone_pressure_plate", "minecraft:iron_door", "minecraft:oak_pressure_plate", "minecraft:redstone_ore", "minecraft:redstone_ore", "minecraft:redstone_wall_torch", "minecraft:redstone_wall_torch", "minecraft:stone_button", "minecraft:snow", "minecraft:ice", "minecraft:snow_block", "minecraft:cactus", "minecraft:clay", "minecraft:sugar_cane", "minecraft:jukebox", "minecraft:oak_fence", "minecraft:carved_pumpkin", "minecraft:netherrack", "minecraft:soul_sand", "minecraft:glowstone", "minecraft:nether_portal", "minecraft:jack_o_lantern", "minecraft:cake", "minecraft:repeater", "minecraft:repeater", "minecraft:white_stained_glass", "minecraft:oak_trapdoor", "minecraft:infested_stone", "minecraft:stone_bricks", "minecraft:brown_mushroom_block", "minecraft:red_mushroom_block", "minecraft:iron_bars", "minecraft:glass_pane", "minecraft:melon", "minecraft:pumpkin_stem", "minecraft:melon_stem", "minecraft:vine", "minecraft:oak_fence_gate", "minecraft:brick_stairs", "minecraft:stone_brick_stairs", "minecraft:mycelium", "minecraft:lily_pad", "minecraft:nether_bricks", "minecraft:nether_brick_fence", "minecraft:nether_brick_stairs", "minecraft:nether_wart", "minecraft:enchanting_table", "minecraft:brewing_stand", "minecraft:cauldron", "minecraft:end_portal", "minecraft:end_portal_frame", "minecraft:end_stone", "minecraft:dragon_egg", "minecraft:redstone_lamp", "minecraft:redstone_lamp", "minecraft:oak_slab", "minecraft:oak_slab", "minecraft:cocoa", "minecraft:sandstone_stairs", "minecraft:emerald_ore", "minecraft:ender_chest", "minecraft:tripwire_hook", "minecraft:tripwire", "minecraft:emerald_block", "minecraft:spruce_stairs", "minecraft:birch_stairs", "minecraft:jungle_stairs", "minecraft:command_block", "minecraft:beacon", "minecraft:cobblestone_wall", "minecraft:potted_cactus", "minecraft:carrots", "minecraft:potatoes", "minecraft:oak_button", "%%FILTER_ME%%", "minecraft:anvil", "minecraft:trapped_chest", "minecraft:light_weighted_pressure_plate", "minecraft:heavy_weighted_pressure_plate", "minecraft:comparator", "minecraft:comparator", "minecraft:daylight_detector", "minecraft:redstone_block", "minecraft:nether_quartz_ore", "minecraft:hopper", "minecraft:quartz_block", "minecraft:quartz_stairs", "minecraft:activator_rail", "minecraft:dropper", "minecraft:white_terracotta", "minecraft:white_stained_glass_pane", "minecraft:acacia_leaves", "minecraft:acacia_log", "minecraft:acacia_stairs", "minecraft:dark_oak_stairs", "minecraft:slime_block", "minecraft:barrier", "minecraft:iron_trapdoor", "minecraft:prismarine", "minecraft:sea_lantern", "minecraft:hay_block", "minecraft:white_carpet", "minecraft:terracotta", "minecraft:coal_block", "minecraft:packed_ice", "minecraft:sunflower", "minecraft:white_banner", "minecraft:white_wall_banner", "minecraft:daylight_detector", "minecraft:red_sandstone", "minecraft:red_sandstone_stairs", "minecraft:red_sandstone_slab", "minecraft:red_sandstone_slab", "minecraft:spruce_fence_gate", "minecraft:birch_fence_gate", "minecraft:jungle_fence_gate", "minecraft:dark_oak_fence_gate", "minecraft:acacia_fence_gate", "minecraft:spruce_fence", "minecraft:birch_fence", "minecraft:jungle_fence", "minecraft:dark_oak_fence", "minecraft:acacia_fence", "minecraft:spruce_door", "minecraft:birch_door", "minecraft:jungle_door", "minecraft:acacia_door", "minecraft:dark_oak_door", "minecraft:end_rod", "minecraft:chorus_plant", "minecraft:chorus_flower", "minecraft:purpur_block", "minecraft:purpur_pillar", "minecraft:purpur_stairs", "minecraft:purpur_slab", "minecraft:purpur_slab", "minecraft:end_stone_bricks", "minecraft:dirt_path", "minecraft:end_gateway", "minecraft:structure_block"], display: {Lore: ['{"text":"§f使用した付近にある§9水§fを"}', '{"text":"§f一定時間§b凍らすことができる§f卵"}'], Name: '{"text":"§b§l氷結卵"}'}, Enchantments: []}}, xp: 1, uses: 4, priceMultiplier: 0.0f, specialPrice: 0, demand: 0, rewardExp: 0b}, {maxUses: 2147483647, buyB: {id: "minecraft:cookie", Count: 32b}, buy: {id: "minecraft:cake", Count: 1b}, sell: {id: "minecraft:villager_spawn_egg", Count: 1b, tag: {EntityTag: {Health: 1.0f, Attributes: [{Base: 1.0d, Name: "generic.max_health"}, {Base: 0.15d, Name: "generic.movement_speed"}, {Base: 0.0d, Name: "generic.knockback_resistance"}], Silent: 1b, Offers: {Recipes: []}, HandItems: [{}, {}], CustomName: '{"text":"Grumm"}', DeathTime: 19s, ArmorItems: [{}, {}, {}, {id: "minecraft:player_head", Count: 65b, tag: {SkullOwner: {Properties: {textures: [{Value: "eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOWY5YTNiZTcxOGZiMjRhYzI3ZWUxNTU3ZDkyZWU4ODdhNzM1NWI1YTdkYThlNmQ0ZjliZjRmYjRjNTY4In19fQ=="}]}, Id: [I; 1192530328, -1008188616, -1161891223, -1191506810]}}}], Xp: 0, VillagerData: {profession: "minecraft:farmer", type: "minecraft:plains", level: 1}, DeathLootTable: "empty", id: "minecraft:villager", Age: -1728000, ActiveEffects: [{Duration: 17280000, Id: 11b, Amplifier: 4b, ShowParticles: 0b}, {Duration: 17290000, Id: 14b, Amplifier: 127b, ShowParticles: 0b}, {Duration: 17290000, Id: 20b, Amplifier: 0b, ShowParticles: 0b}], Tags: ["SystemEntity"]}, RepairCost: -2147483648, display: {Lore: ['{"text":"§6村人§fの品種改良により完成した§c卵"}', '{"text":"§f繁殖力を犠牲に§c鬼の耐久力§fを持つ"}', '{"text":"§e§o大きくなるまで責任持って育ててね！"}'], Name: '{"text":"§f§lゆっくりの§c卵"}'}, Enchantments: []}}, xp: 1, uses: 1, priceMultiplier: 0.0f, specialPrice: 0, demand: 0, rewardExp: 0b}, {maxUses: 2147483647, buyB: {id: "minecraft:map", Count: 64b}, buy: {id: "minecraft:creeper_head", Count: 1b}, sell: {id: "minecraft:player_head", Count: 1b, tag: {SkullOwner: {Properties: {textures: [{Value: "eyJ0aW1lc3RhbXAiOjE0MTI1MDcxMTI4NzYsInByb2ZpbGVJZCI6IjYwNjYyNWRhNjcwNDQyZWNhZDJhMmNjOWJiNzlkYzg2IiwicHJvZmlsZU5hbWUiOiJ0YXRzdTAxMjMiLCJpc1B1YmxpYyI6dHJ1ZSwidGV4dHVyZXMiOnsiU0tJTiI6eyJ1cmwiOiJodHRwOi8vdGV4dHVyZXMubWluZWNyYWZ0Lm5ldC90ZXh0dXJlLzg4NjgxMmJmYmMyNDI0ZWMwMzEyZTVjNjg2ZDViYTdiMWViYzE0YmFhOGU5MzcwZGI3YjViZWQ0NDI2ZmMwIn19fQ==", Signature: "Tj+hN8EusByXfAXV1XUmpwgvs5jMxO4cePQwHZO3OC4gw5QgE06+jU5XgAfI2GGcRTG/io/B+TxQ+U7UWcnranzVVWw+8/vdJb2GVSKWp6L52VaRthkqCHj7d+q4g3EAWHJ1CWjZFNIQPtcsqbtPXAqGQ1lElfuFwf92DQSog6l0ejJ0dOOZZJvyqJsHqWhNBhhtH/fYFRqjkFv72ODVB14/fnl4yFWX23z9d5g5672floIpfLsELGy93E7t23fAkQAowM5eNia9QE8bKYxHzg9j3w1vlSVhqwlNQPVEsmoPXDNl2jGYiUGnYuWe5ov0A3q8B7HyXCpGlWwjM908IIszRdVTkcgmq1SOdTXvExWIPjWnflYENlv0++TsWkDO2LowfMoPArkl63QDz1o9VazvPZdZDnLud97RrUtpJTsCR3BvZ+94mFRP2OUxZ9GW2dr5di9f0tCkZicLVLKq1gVXlz7eO1VeQYyKhwllbAzjBqMqUvYDmZCyXGtTVdggEkRoCycBPdtLOJt5/kvt53FkerpUCTp2aLqaaD3fR8qHsHOqUWAy77SIwUHyRstio9sVh2B9IKXbyx+uboe36kRq2PjlCzjmfHcD7Rvg0n4yulzCvHDTP1wck4HvbsQRdBJv/hKzbgCciDC7KgJX1gvmWv4O4OmS5pSyccd8Pi8="}]}, Id: [I; 1617307098, 1728332524, -1389744951, -1149641594], Name: "tatsu0123"}, display: {Name: '{"text":"§2§lたつ"}'}}}, xp: 1, uses: 1, priceMultiplier: 0.0f, specialPrice: 0, demand: 0, rewardExp: 0b}]