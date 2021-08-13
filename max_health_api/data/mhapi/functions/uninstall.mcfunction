### mhapi uninstall

# recover
scoreboard players set @a mhapi.set 20
function mhapi:run

# remove added scores
scoreboard objectives remove mhapi.set
scoreboard objectives remove mhapi.modify
scoreboard objectives remove mhapi.dtimer