# 重置记分板
scoreboard players reset @a hob.fail_count

# 显示数据包信息
title @a times 10 40 10
title @a title {"text": "Hit or Blow","color": "yellow","bold": true}
title @a subtitle {"text": "Hitting someoone, or blowing up."}
title @a actionbar {"text": "Made by Alex3236 with love :)","color": "aqua","bold": true}

# 重置最大生命值
scoreboard players set @a mhapi.set 20
function mhapi:run_all

# 看啥，这还看不懂？
function hob:action/title_chosen