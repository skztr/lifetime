# must run as a specific entity

# Keep track of playtime
execute unless score @s lt_ticks matches 0.. run scoreboard players set @s lt_ticks 0
execute unless score @s lt_seconds matches 0.. run scoreboard players set @s lt_seconds 0
execute unless score @s lt_minutes matches 0.. run scoreboard players set @s lt_minutes 0
execute unless score @s lt_hours matches 0.. run scoreboard players set @s lt_hours 0
scoreboard players add @s lt_ticks 1

execute if score @s lt_ticks >= #lifetime_global lt_tickrate run scoreboard players add @s lt_seconds 1
execute if score @s lt_ticks >= #lifetime_global lt_tickrate run scoreboard players set @s lt_ticks 0
scoreboard players add @s[scores={lt_seconds=60..}] lt_minutes 1
scoreboard players set @s[scores={lt_seconds=60..}] lt_seconds 0
scoreboard players add @s[scores={lt_minutes=60..}] lt_hours 1
scoreboard players set @s[scores={lt_minutes=60..}] lt_minutes 0

# generate a "quick view" of the playtime. Not well-formatted, but easily visible from a scoreboard
scoreboard players set @s lt_pad 100
scoreboard players operation @s lt_quick = @s lt_hours
scoreboard players operation @s lt_quick *= @s lt_pad
scoreboard players operation @s lt_quick += @s lt_minutes
scoreboard players operation @s lt_quick *= @s lt_pad
scoreboard players operation @s lt_quick += @s lt_seconds
