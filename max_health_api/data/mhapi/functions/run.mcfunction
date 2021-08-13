execute unless score @s mhapi.modify matches -2147483648..2147483647 run scoreboard players set @s mhapi.modify 0
execute unless score @s mhapi.set matches -2147483648..2147483647 run scoreboard players set @s mhapi.set 20
scoreboard players operation @s mhapi.set += @s mhapi.modify
function mhapi:action/set
tag @s add need_health
execute unless score @s mhapi.set matches 20 run effect give @s poison 1 1 true
schedule function mhapi:action/need_health 2s
scoreboard players set @s mhapi.modify 0