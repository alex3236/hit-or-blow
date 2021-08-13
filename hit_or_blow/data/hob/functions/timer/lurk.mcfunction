
# 倒计时减一
scoreboard players operation #lurk hob.timer -= #int_one hob.timer

# 计划下一秒执行
schedule function hob:timer/lurk 1s

# 若倒计时结束
execute if score #lurk hob.timer matches ..-1 run function hob:timer/wait_hit