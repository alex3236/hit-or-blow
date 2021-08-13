# 建计分板
scoreboard objectives add hob.timer dummy
scoreboard objectives add hob.fail_count dummy "§c失败次数"

# 来个1方便做算术（
scoreboard players set #int_one hob.timer 1

# 设置为已安装
data merge storage hob.info {Installed:true}