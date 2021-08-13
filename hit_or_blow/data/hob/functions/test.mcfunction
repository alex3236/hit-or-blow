scoreboard players set min RAND 5
scoreboard players set max RAND 80
function fafik77:rng/rand
tellraw @a ["We got a random number: ", {"score":{"objective":"RAND","name":"number"}}]