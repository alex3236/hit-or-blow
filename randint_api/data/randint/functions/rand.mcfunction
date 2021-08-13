### fafik77 :: on call rand() uses `RAND::min`, `RAND::max`

# { clock_time, prev_number, number, max }	const2

 # load last number to new
scoreboard players operation number RAND = #prev_number RAND
scoreboard players operation number RAND -= #const2 RAND
scoreboard players operation number RAND *= #clock_time RAND
execute store result score #moreRand RAND run data get entity @e[limit=1,sort=random] {}
scoreboard players operation #moreRand RAND *= #clock_time RAND_rp
scoreboard players operation number RAND -= #moreRand RAND_rp
scoreboard players operation #number2 RAND = number RAND_rp
scoreboard players operation #number2 RAND *= #const2 RAND_rp
scoreboard players operation #number2 RAND /= #clock_time RAND_rp
scoreboard players operation #number2 RAND %= #clock_time RAND_rp
scoreboard players operation number RAND -= #number2 RAND_rp
# scoreboard players operation number RAND /= #const2 RAND_rp
# scoreboard players operation number RAND *= #clock_time RAND_rp
scoreboard players operation number RAND += @r RAND_rp
scoreboard players operation number RAND += #prev_number RAND


 # make not negative
execute if score number RAND matches ..0 run scoreboard players operation number RAND *= #m1 RAND
 # save new number to last
scoreboard players operation #prev_number RAND = number RAND
scoreboard players operation #prev_number RAND -= #clock_time RAND
scoreboard players operation #prev_number RAND /= #const2 RAND

 # trim new number to <`min`, `max`>
scoreboard players operation max RAND > min RAND
scoreboard players operation #max2 RAND = max RAND
execute if score #max2 RAND matches 1.. run scoreboard players add #max2 RAND 1
scoreboard players operation #max2 RAND -= min RAND
execute if score max RAND matches 1.. run scoreboard players operation number RAND %= #max2 RAND
scoreboard players operation number RAND += min RAND

 # reset it back to 0
scoreboard players set max RAND 0
scoreboard players set min RAND 0
