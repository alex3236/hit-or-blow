execute unless entity @s[tag=taro] if score #lurk hob.timer matches -1 run function hob:action/_hit_success
# 重置成就
advancement revoke @s only hob:hit_success