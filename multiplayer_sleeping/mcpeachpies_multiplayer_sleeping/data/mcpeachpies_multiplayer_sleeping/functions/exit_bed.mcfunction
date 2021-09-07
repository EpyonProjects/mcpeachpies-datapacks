# player with sleep_since_rest score above zero
# @s = player out of bed
# run from clock

execute if predicate mcpeachpies_multiplayer_sleeping:morning_check run function mcpeachpies_multiplayer_sleeping:advancement_count

function mcpeachpies_24_hour_days:multiplayer_sleeping/gamerule_set_false
tag @s remove mpp_in_bed
function mcpeachpies_multiplayer_sleeping:player_count

execute if predicate mcpeachpies_multiplayer_sleeping:night_check run tellraw @a[tag=mpp_in_bed] ["",{"selector":"@s"},{"text":" is no longer sleeping (","color":"gray"},{"score":{"name":"value_sleepers","objective":"mpp_sleep_count"}},{"text":"/","color":"gray"},{"score":{"name":"value_required","objective":"mpp_sleep_count"}},{"text":")","color":"gray"}]
