# 显示数据包信息
title @a times 10 20 10
title @a title {"text": "Hit or Blow","color": "gray","bold": true}
title @a subtitle {"text": "Game disabled."}
title @a actionbar {"text": "Thanks for playing! :)","color": "aqua","bold": true}

# 记分板
function hob:scoreboard/show

# 最大生命值
scoreboard players set @a mhapi.set 20
function mhapi:run_all

# 清理
schedule clear hob:timer/lurk
schedule clear hob:timer/_wait_hit
tag @a remove taro