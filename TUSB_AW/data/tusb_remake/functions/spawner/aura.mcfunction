#> tusb_remake:spawner/aura/
# オーラスポナーの毎tick処理

execute if block ~ ~ ~ air run tag @s remove AuraSpawner

execute on passengers run data modify entity @s[type=area_effect_cloud] Age set value 0
effect give @a[distance=..10] mining_fatigue 1 1