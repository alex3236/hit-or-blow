# 计划下一秒执行
schedule function hob:timer/_wait_hit 0.25s

# 设置为无动画
title @a times 0 25 0

# 标题
title @a[tag=taro] title {"text": "\u4f60\u9700\u8981\u653b\u51fb\u4ed6\u4eba","color": "red"}

# 穷举进度条
execute if score #hit hob.timer matches 20 run title @a[tag=taro] subtitle ["[",{"text": "||||||||||||||||||||","color": "green","bold": true},{"text": "","color": "gray","bold": true},"]"]
execute if score #hit hob.timer matches 19 run title @a[tag=taro] subtitle ["[",{"text": "|||||||||||||||||||","color": "green","bold": true},{"text": "|","color": "gray","bold": true},"]"]
execute if score #hit hob.timer matches 18 run title @a[tag=taro] subtitle ["[",{"text": "||||||||||||||||||","color": "green","bold": true},{"text": "||","color": "gray","bold": true},"]"]
execute if score #hit hob.timer matches 17 run title @a[tag=taro] subtitle ["[",{"text": "|||||||||||||||||","color": "green","bold": true},{"text": "|||","color": "gray","bold": true},"]"]
execute if score #hit hob.timer matches 16 run title @a[tag=taro] subtitle ["[",{"text": "||||||||||||||||","color": "green","bold": true},{"text": "||||","color": "gray","bold": true},"]"]
execute if score #hit hob.timer matches 15 run title @a[tag=taro] subtitle ["[",{"text": "|||||||||||||||","color": "green","bold": true},{"text": "|||||","color": "gray","bold": true},"]"]
execute if score #hit hob.timer matches 14 run title @a[tag=taro] subtitle ["[",{"text": "||||||||||||||","color": "green","bold": true},{"text": "||||||","color": "gray","bold": true},"]"]
execute if score #hit hob.timer matches 13 run title @a[tag=taro] subtitle ["[",{"text": "|||||||||||||","color": "green","bold": true},{"text": "|||||||","color": "gray","bold": true},"]"]
execute if score #hit hob.timer matches 12 run title @a[tag=taro] subtitle ["[",{"text": "||||||||||||","color": "green","bold": true},{"text": "||||||||","color": "gray","bold": true},"]"]
execute if score #hit hob.timer matches 11 run title @a[tag=taro] subtitle ["[",{"text": "|||||||||||","color": "green","bold": true},{"text": "|||||||||","color": "gray","bold": true},"]"]
execute if score #hit hob.timer matches 10 run title @a[tag=taro] subtitle ["[",{"text": "||||||||||","color": "gold","bold": true},{"text": "||||||||||","color": "gray","bold": true},"]"]
execute if score #hit hob.timer matches 9 run title @a[tag=taro] subtitle ["[",{"text": "|||||||||","color": "gold","bold": true},{"text": "|||||||||||","color": "gray","bold": true},"]"]
execute if score #hit hob.timer matches 8 run title @a[tag=taro] subtitle ["[",{"text": "||||||||","color": "gold","bold": true},{"text": "||||||||||||","color": "gray","bold": true},"]"]
execute if score #hit hob.timer matches 7 run title @a[tag=taro] subtitle ["[",{"text": "|||||||","color": "gold","bold": true},{"text": "|||||||||||||","color": "gray","bold": true},"]"]
execute if score #hit hob.timer matches 6 run title @a[tag=taro] subtitle ["[",{"text": "||||||","color": "gold","bold": true},{"text": "||||||||||||||","color": "gray","bold": true},"]"]
execute if score #hit hob.timer matches 5 run title @a[tag=taro] subtitle ["[",{"text": "|||||","color": "gold","bold": true},{"text": "|||||||||||||||","color": "gray","bold": true},"]"]
execute if score #hit hob.timer matches 4 run title @a[tag=taro] subtitle ["[",{"text": "||||","color": "red","bold": true},{"text": "||||||||||||||||","color": "gray","bold": true},"]"]
execute if score #hit hob.timer matches 3 run title @a[tag=taro] subtitle ["[",{"text": "|||","color": "red","bold": true},{"text": "|||||||||||||||||","color": "gray","bold": true},"]"]
execute if score #hit hob.timer matches 2 run title @a[tag=taro] subtitle ["[",{"text": "||","color": "red","bold": true},{"text": "||||||||||||||||||","color": "gray","bold": true},"]"]
execute if score #hit hob.timer matches 1 run title @a[tag=taro] subtitle ["[",{"text": "|","color": "red","bold": true},{"text": "|||||||||||||||||||","color": "gray","bold": true},"]"]
execute if score #hit hob.timer matches 0 run title @a[tag=taro] subtitle ["[",{"text": "","color": "red","bold": true},{"text": "||||||||||||||||||||","color": "gray","bold": true},"]"]

# 提示音
# execute at @a[tag=taro] if score #hit hob.timer matches 20 run playsound minecraft:block.dispenser.fail player @a[tag=taro] ~ ~ ~
execute at @a[tag=taro] run playsound minecraft:block.dispenser.fail player @a[tag=taro] ~ ~ ~

# 倒计时减一
scoreboard players operation #hit hob.timer -= #int_one hob.timer

# 若倒计时结束
execute if score #hit hob.timer matches ..-1 as @a[tag=taro] run function hob:action/hit_failed