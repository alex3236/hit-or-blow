# 提示音
playsound minecraft:entity.arrow.hit_player player @s ~ ~ ~

# 标题
title @s times 10 40 10
title @s title [{"text": "你安全了！","color": "green","bold": true},{"text": "暂时是这样...","color": "green","bold": false}]
title @s subtitle {"text": "成功将诅咒传给他人"}

# 生命值恢复
execute if score @s mhapi.set matches ..19 run scoreboard players add @s mhapi.modify 2
function mhapi:run