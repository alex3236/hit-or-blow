### fafik77 init

 #	add scores
scoreboard objectives add RAND dummy "Random NumGen"
scoreboard objectives add RAND_rp minecraft.custom:minecraft.walk_one_cm "Random NumGen-walk"


 #	set initial scores
execute unless score #const2 RAND matches 1.. run scoreboard players set #const2 RAND 3
scoreboard players add #prev_number RAND 0
scoreboard players set #m1 RAND -1
scoreboard players add #clock_time RAND 1
 #	other scores: { clock_time, prev_number, number, max & min }
