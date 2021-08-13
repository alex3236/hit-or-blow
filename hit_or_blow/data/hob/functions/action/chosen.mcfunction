# 计算随机潜伏时间
function hob:action/get_randint

# 提示音 [DEBUG ONLY]
# execute at @s run playsound minecraft:entity.player.hurt_on_fire player @s ~ ~ ~

# 山芋换人
tag @a[tag=taro] remove taro
tag @s add taro

# 设置倒计时时间
scoreboard players operation #lurk hob.timer = number RAND

# 开始倒计时
function hob:timer/lurk