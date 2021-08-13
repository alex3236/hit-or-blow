# 重置倒计时
schedule clear hob:timer/_wait_hit

# 标题
title @a times 10 40 10
title @s title {"text": "你没了","color": "red"}
title @s subtitle {"text": "你因诅咒而死"}

# 修改最大生命值
execute if score @s mhapi.set matches 7.. run scoreboard players remove @s mhapi.modify 2
function mhapi:run

# 炸
execute at @s run summon minecraft:tnt ~ ~ ~
execute at @s run summon minecraft:tnt ~ ~ ~ 

# 记分板
execute if score @s hob.fail_count matches 0.. run scoreboard players add @s hob.fail_count 1
execute unless score @s hob.fail_count matches 0.. run scoreboard players set @s hob.fail_count 1
function hob:scoreboard/show
schedule function hob:scoreboard/hide 3s

# 两秒后下一轮
schedule function hob:action/choose 2s