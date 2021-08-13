# 清除倒计时
schedule clear hob:timer/_wait_hit

# 传递成功
execute as @a[tag=taro] run function hob:action/taro_success

# 山芋传给自己
function hob:action/chosen
