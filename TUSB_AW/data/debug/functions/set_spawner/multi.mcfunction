#> debug:set_spawner/multi

# idを他のリストに移す
data modify storage _: AssetId set value []
data modify storage _: AssetId append from storage _: _.SpawnMob[].AssetId
data remove storage _: _.AssetId

# 再帰でSpawnPotentialsを作る
data modify storage _: __ set from storage _: _.SpawnMob
function debug:set_spawner/spawn_potentials

execute align xyz run summon armor_stand ~0.5 ~ ~0.5 {NoAI:true,Invisible:true,Invulnerable:true,Tags:["Spawner","SystemEntity"],Passengers:[{SpawnCount:0,id:"spawner_minecart",Invulnerable:true,Tags:["SystemEntity","Spawner","SpawnerCore","TypeCheacked","this"]}]}
data modify entity @e[limit=1,tag=this] {} merge from storage _: _
execute as @e[limit=1,tag=this] run function oh_my_dat:please
data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].id set from storage _: AssetId
scoreboard players set @e[limit=1,tag=this] SpawnerId -1
tag @e[limit=1,tag=this] remove this