:::::::::::::::::  Version 1.5 relased!  :::::::::::::::::
:: added the version selction[1.8 to 1.13] and replaced ::
::            in the facing setting / with |            ::
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
@echo off
set pass8=,Riding:{id:MinecartCommandBlock,Command:"
set pass9={id:MinecartCommandBlock,Command:"
set pass11={id:commandblock_minecart,Command:"
echo (When setting up following options press "ENTER" to conferme them)
echo.
set line1= 
set line2= 
set /p version=Version[1.8+]: 
set /p facing=Facing of sign[N^|E^|S^|W]: 
set /p value=Scoreboard name: 
set /p line1=1st line: 
set /p line2=2nd line: 
echo.
echo Copy and paste the code saved in "code.txt" in your command block under the sign and set it on always active
if %facing%==N goto n
if %facing%==n goto n
if %facing%==E goto e
if %facing%==e goto e
if %facing%==S goto s
if %facing%==s goto s
if %facing%==W goto w
if %facing%==w goto w
:n
set z0=-1
set z1=1
set z2=-2
set z3=3
set z4=2
set z5=-1
set z6=1
goto version
:e
set x0=1
set x1=-1
set x2=2
set x3=-3
set x4=-2
set x5=1
set x6=-1
goto version
:s
set z0=1
set z1=-1
set z2=2
set z3=-3
set z4=-2
set z5=1
set z6=-1
goto version
:w
set x0=-1
set x1=1
set x2=-2
set x3=3
set x4=2
set x5=-1
set x6=1
:version
if %version:~,3%==1.8 goto 1.8
if %version:~,3%==1.9 goto 1.9
if %version:~,4%==1.10 goto 1.9
if %version:~,4%==1.11 goto 1.11
if %version:~,4%==1.12 goto 1.11
if %version:~,4%==1.13 goto 1.13
:1.8
echo summon MinecartCommandBlock ~%x0% ~2 ~%z0% {Command:"kill @e[type=MinecartCommandBlock,r=1]"%pass8%summon FallingSand ~%x5% ~ ~%z5% {TileID:152,Time:1,Riding:{id:FallingSand,TileID:137,Time:1,TileEntityData:{Command:\"fill ~ ~ ~ ~%x6% ~1 ~%z6% minecraft:air\"}}}"%pass8%scoreboard players set @e[type=ArmorStand,name=%value%] %value% 0"%pass8%summon ArmorStand ~%x3% ~-1 ~%z3% {NoGravity:1,CustomName:%value%}"%pass8%blockdata ~%x1% ~ ~%z1% {Text1:\"{\\\"text\\\":\\\"%line1:\=\\\\%\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"execute @e[name=%value%,score_%value%_min=1] ~ ~ ~ blockdata ~%x2% ~1 ~%z2% {Text3:\\\\\\\"{\\\\\\\\\\\\\\\"text\\\\\\\\\\\\\\\":\\\\\\\\\\\\\\\"\\\\\\\\\\\\\\\",\\\\\\\\\\\\\\\"clickEvent\\\\\\\\\\\\\\\":{\\\\\\\\\\\\\\\"action\\\\\\\\\\\\\\\":\\\\\\\\\\\\\\\"run_command\\\\\\\\\\\\\\\",\\\\\\\\\\\\\\\"value\\\\\\\\\\\\\\\":\\\\\\\\\\\\\\\"scoreboard players set @e[score_%value%_min=1] %value% 0\\\\\\\\\\\\\\\"}}\\\\\\\",Text4:\\\\\\\"[{\\\\\\\\\\\\\\\"text\\\\\\\\\\\\\\\":\\\\\\\\\\\\\\\"[ON]\\\\\\\\\\\\\\\",\\\\\\\\\\\\\\\"color\\\\\\\\\\\\\\\":\\\\\\\\\\\\\\\"green\\\\\\\\\\\\\\\",\\\\\\\\\\\\\\\"bold\\\\\\\\\\\\\\\":false,\\\\\\\\\\\\\\\"clickEvent\\\\\\\\\\\\\\\":{\\\\\\\\\\\\\\\"action\\\\\\\\\\\\\\\":\\\\\\\\\\\\\\\"run_command\\\\\\\\\\\\\\\",\\\\\\\\\\\\\\\"value\\\\\\\\\\\\\\\":\\\\\\\\\\\\\\\"execute @e[score_%value%=0] ~ ~ ~ setblock ~ ~1 ~ minecraft:stone\\\\\\\\\\\\\\\"}},{\\\\\\\\\\\\\\\"text\\\\\\\\\\\\\\\":\\\\\\\\\\\\\\\"       \\\\\\\\\\\\\\\"},{\\\\\\\\\\\\\\\"text\\\\\\\\\\\\\\\":\\\\\\\\\\\\\\\"[OFF]\\\\\\\\\\\\\\\",\\\\\\\\\\\\\\\"color\\\\\\\\\\\\\\\":\\\\\\\\\\\\\\\"dark_red\\\\\\\\\\\\\\\",\\\\\\\\\\\\\\\"bold\\\\\\\\\\\\\\\":true}]\\\\\\\"}\\\"}}\",Text2:\"{\\\"text\\\":\\\"%line2:\=\\\\%\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"execute @e[name=%value%,score_%value%=0] ~ ~ ~ blockdata ~%x2% ~1 ~%z2% {Text3:\\\\\\\"{\\\\\\\\\\\\\\\"text\\\\\\\\\\\\\\\":\\\\\\\\\\\\\\\"\\\\\\\\\\\\\\\",\\\\\\\\\\\\\\\"clickEvent\\\\\\\\\\\\\\\":{\\\\\\\\\\\\\\\"action\\\\\\\\\\\\\\\":\\\\\\\\\\\\\\\"run_command\\\\\\\\\\\\\\\",\\\\\\\\\\\\\\\"value\\\\\\\\\\\\\\\":\\\\\\\\\\\\\\\"scoreboard players set @e[score_%value%=0] %value% 1\\\\\\\\\\\\\\\"}}\\\\\\\",Text4:\\\\\\\"[{\\\\\\\\\\\\\\\"text\\\\\\\\\\\\\\\":\\\\\\\\\\\\\\\"[ON]\\\\\\\\\\\\\\\",\\\\\\\\\\\\\\\"color\\\\\\\\\\\\\\\":\\\\\\\\\\\\\\\"green\\\\\\\\\\\\\\\",\\\\\\\\\\\\\\\"bold\\\\\\\\\\\\\\\":true,\\\\\\\\\\\\\\\"clickEvent\\\\\\\\\\\\\\\":{\\\\\\\\\\\\\\\"action\\\\\\\\\\\\\\\":\\\\\\\\\\\\\\\"run_command\\\\\\\\\\\\\\\",\\\\\\\\\\\\\\\"value\\\\\\\\\\\\\\\":\\\\\\\\\\\\\\\"execute @e[score_%value%_min=1] ~ ~ ~ setblock ~ ~1 ~ minecraft:redstone_block\\\\\\\\\\\\\\\"}},{\\\\\\\\\\\\\\\"text\\\\\\\\\\\\\\\":\\\\\\\\\\\\\\\"       \\\\\\\\\\\\\\\"},{\\\\\\\\\\\\\\\"text\\\\\\\\\\\\\\\":\\\\\\\\\\\\\\\"[OFF]\\\\\\\\\\\\\\\",\\\\\\\\\\\\\\\"color\\\\\\\\\\\\\\\":\\\\\\\\\\\\\\\"dark_red\\\\\\\\\\\\\\\",\\\\\\\\\\\\\\\"bold\\\\\\\\\\\\\\\":false}]\\\\\\\"}\\\"}}\"}"%pass8%scoreboard objectives add %value% dummy"%pass8%gamerule commandBlockOutput false"%pass8%setblock ~%x4% ~ ~%z4% minecraft:redstone_lamp",Riding:{id:FallingSand,TileID:157,Time:1}}}}}}}}} > code.txt
goto end
:1.9
echo summon FallingSand ~%x0% ~.1 ~%z0% {TileID:152,Time:1,Passengers:[{id:FallingSand,TileID:157,Time:1,Passengers:[%pass9%gamerule commandBlockOutput false",Tags:[%value%%value%]},%pass9%scoreboard objectives add %value% dummy",Tags:[%value%%value%]},%pass9%blockdata ~%x1% ~ ~%z1% {Text1:\"{\\\"text\\\":\\\"%line1:\=\\\\%\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"execute @e[tag=%value%,score_%value%_min=1] ~ ~ ~ blockdata ~%x2% ~1 ~%z2% {Text3:\\\\\\\"{\\\\\\\\\\\\\\\"text\\\\\\\\\\\\\\\":\\\\\\\\\\\\\\\"\\\\\\\\\\\\\\\",\\\\\\\\\\\\\\\"clickEvent\\\\\\\\\\\\\\\":{\\\\\\\\\\\\\\\"action\\\\\\\\\\\\\\\":\\\\\\\\\\\\\\\"run_command\\\\\\\\\\\\\\\",\\\\\\\\\\\\\\\"value\\\\\\\\\\\\\\\":\\\\\\\\\\\\\\\"scoreboard players set @e[tag=%value%,score_%value%_min=1] %value% 0\\\\\\\\\\\\\\\"}}\\\\\\\",Text4:\\\\\\\"[{\\\\\\\\\\\\\\\"text\\\\\\\\\\\\\\\":\\\\\\\\\\\\\\\"[ON]\\\\\\\\\\\\\\\",\\\\\\\\\\\\\\\"color\\\\\\\\\\\\\\\":\\\\\\\\\\\\\\\"green\\\\\\\\\\\\\\\",\\\\\\\\\\\\\\\"bold\\\\\\\\\\\\\\\":false,\\\\\\\\\\\\\\\"clickEvent\\\\\\\\\\\\\\\":{\\\\\\\\\\\\\\\"action\\\\\\\\\\\\\\\":\\\\\\\\\\\\\\\"run_command\\\\\\\\\\\\\\\",\\\\\\\\\\\\\\\"value\\\\\\\\\\\\\\\":\\\\\\\\\\\\\\\"execute @e[tag=%value%] ~ ~ ~ setblock ~ ~1 ~ stone\\\\\\\\\\\\\\\"}},{\\\\\\\\\\\\\\\"text\\\\\\\\\\\\\\\":\\\\\\\\\\\\\\\"       \\\\\\\\\\\\\\\"},{\\\\\\\\\\\\\\\"text\\\\\\\\\\\\\\\":\\\\\\\\\\\\\\\"[OFF]\\\\\\\\\\\\\\\",\\\\\\\\\\\\\\\"color\\\\\\\\\\\\\\\":\\\\\\\\\\\\\\\"red\\\\\\\\\\\\\\\",\\\\\\\\\\\\\\\"bold\\\\\\\\\\\\\\\":true}]\\\\\\\"}\\\"}}\",Text2:\"{\\\"text\\\":\\\"%line2:\=\\\\%\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"execute @e[tag=%value%,score_%value%=0] ~ ~ ~ blockdata ~%x2% ~1 ~%z2% {Text3:\\\\\\\"{\\\\\\\\\\\\\\\"text\\\\\\\\\\\\\\\":\\\\\\\\\\\\\\\"\\\\\\\\\\\\\\\",\\\\\\\\\\\\\\\"clickEvent\\\\\\\\\\\\\\\":{\\\\\\\\\\\\\\\"action\\\\\\\\\\\\\\\":\\\\\\\\\\\\\\\"run_command\\\\\\\\\\\\\\\",\\\\\\\\\\\\\\\"value\\\\\\\\\\\\\\\":\\\\\\\\\\\\\\\"scoreboard players set @e[tag=%value%,score_%value%=0] %value% 1\\\\\\\\\\\\\\\"}}\\\\\\\",Text4:\\\\\\\"[{\\\\\\\\\\\\\\\"text\\\\\\\\\\\\\\\":\\\\\\\\\\\\\\\"[ON]\\\\\\\\\\\\\\\",\\\\\\\\\\\\\\\"color\\\\\\\\\\\\\\\":\\\\\\\\\\\\\\\"green\\\\\\\\\\\\\\\",\\\\\\\\\\\\\\\"bold\\\\\\\\\\\\\\\":true,\\\\\\\\\\\\\\\"clickEvent\\\\\\\\\\\\\\\":{\\\\\\\\\\\\\\\"action\\\\\\\\\\\\\\\":\\\\\\\\\\\\\\\"run_command\\\\\\\\\\\\\\\",\\\\\\\\\\\\\\\"value\\\\\\\\\\\\\\\":\\\\\\\\\\\\\\\"execute @e[tag=%value%] ~ ~ ~ setblock ~ ~1 ~ redstone_block\\\\\\\\\\\\\\\"}},{\\\\\\\\\\\\\\\"text\\\\\\\\\\\\\\\":\\\\\\\\\\\\\\\"       \\\\\\\\\\\\\\\"},{\\\\\\\\\\\\\\\"text\\\\\\\\\\\\\\\":\\\\\\\\\\\\\\\"[OFF]\\\\\\\\\\\\\\\",\\\\\\\\\\\\\\\"color\\\\\\\\\\\\\\\":\\\\\\\\\\\\\\\"red\\\\\\\\\\\\\\\",\\\\\\\\\\\\\\\"bold\\\\\\\\\\\\\\\":false}]\\\\\\\"}\\\"}}\"}",Tags:[%value%%value%]},%pass9%summon ArmorStand ~%x3% ~-1 ~%z3% {Marker:1,NoGravity:1,Tags:[%value%]}",Tags:[%value%%value%]},%pass9%setblock ~%x4% ~ ~%z4% minecraft:redstone_lamp",Tags:[%value%%value%]},%pass9%scoreboard players set @e[tag=%value%] %value% 0",Tags:[%value%%value%]},%pass9%summon FallingSand ~%x5% ~ ~%z5% {TileID:137,Time:1,TileEntityData:{Command:\"fill ~ ~ ~ ~%x6% ~1 ~%z6% minecraft:air\",auto:1}}",Tags:[%value%%value%]},%pass9%kill @e[tag=%value%%value%]",Tags:[%value%%value%]}]}]} > code.txt
goto end
:1.11
echo summon falling_block ~%x0% ~.1 ~%z0% {TileID:152,Time:1,Passengers:[{id:falling_block,TileID:157,Time:1,Passengers:[%pass11%gamerule commandBlockOutput false",Tags:[%value%%value%]},%pass11%scoreboard objectives add %value% dummy",Tags:[%value%%value%]},%pass11%blockdata ~%x1% ~ ~%z1% {Text1:\"{\\\"text\\\":\\\"%line1:\=\\\\%\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"execute @e[tag=%value%,score_%value%_min=1] ~ ~ ~ blockdata ~%x2% ~1 ~%z2% {Text3:\\\\\\\"{\\\\\\\\\\\\\\\"text\\\\\\\\\\\\\\\":\\\\\\\\\\\\\\\"\\\\\\\\\\\\\\\",\\\\\\\\\\\\\\\"clickEvent\\\\\\\\\\\\\\\":{\\\\\\\\\\\\\\\"action\\\\\\\\\\\\\\\":\\\\\\\\\\\\\\\"run_command\\\\\\\\\\\\\\\",\\\\\\\\\\\\\\\"value\\\\\\\\\\\\\\\":\\\\\\\\\\\\\\\"scoreboard players set @e[tag=%value%,score_%value%_min=1] %value% 0\\\\\\\\\\\\\\\"}}\\\\\\\",Text4:\\\\\\\"[{\\\\\\\\\\\\\\\"text\\\\\\\\\\\\\\\":\\\\\\\\\\\\\\\"[ON]\\\\\\\\\\\\\\\",\\\\\\\\\\\\\\\"color\\\\\\\\\\\\\\\":\\\\\\\\\\\\\\\"green\\\\\\\\\\\\\\\",\\\\\\\\\\\\\\\"bold\\\\\\\\\\\\\\\":false,\\\\\\\\\\\\\\\"clickEvent\\\\\\\\\\\\\\\":{\\\\\\\\\\\\\\\"action\\\\\\\\\\\\\\\":\\\\\\\\\\\\\\\"run_command\\\\\\\\\\\\\\\",\\\\\\\\\\\\\\\"value\\\\\\\\\\\\\\\":\\\\\\\\\\\\\\\"execute @e[tag=%value%] ~ ~ ~ setblock ~ ~1 ~ stone\\\\\\\\\\\\\\\"}},{\\\\\\\\\\\\\\\"text\\\\\\\\\\\\\\\":\\\\\\\\\\\\\\\"       \\\\\\\\\\\\\\\"},{\\\\\\\\\\\\\\\"text\\\\\\\\\\\\\\\":\\\\\\\\\\\\\\\"[OFF]\\\\\\\\\\\\\\\",\\\\\\\\\\\\\\\"color\\\\\\\\\\\\\\\":\\\\\\\\\\\\\\\"red\\\\\\\\\\\\\\\",\\\\\\\\\\\\\\\"bold\\\\\\\\\\\\\\\":true}]\\\\\\\"}\\\"}}\",Text2:\"{\\\"text\\\":\\\"%line2:\=\\\\%\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"execute @e[tag=%value%,score_%value%=0] ~ ~ ~ blockdata ~%x2% ~1 ~%z2% {Text3:\\\\\\\"{\\\\\\\\\\\\\\\"text\\\\\\\\\\\\\\\":\\\\\\\\\\\\\\\"\\\\\\\\\\\\\\\",\\\\\\\\\\\\\\\"clickEvent\\\\\\\\\\\\\\\":{\\\\\\\\\\\\\\\"action\\\\\\\\\\\\\\\":\\\\\\\\\\\\\\\"run_command\\\\\\\\\\\\\\\",\\\\\\\\\\\\\\\"value\\\\\\\\\\\\\\\":\\\\\\\\\\\\\\\"scoreboard players set @e[tag=%value%,score_%value%=0] %value% 1\\\\\\\\\\\\\\\"}}\\\\\\\",Text4:\\\\\\\"[{\\\\\\\\\\\\\\\"text\\\\\\\\\\\\\\\":\\\\\\\\\\\\\\\"[ON]\\\\\\\\\\\\\\\",\\\\\\\\\\\\\\\"color\\\\\\\\\\\\\\\":\\\\\\\\\\\\\\\"green\\\\\\\\\\\\\\\",\\\\\\\\\\\\\\\"bold\\\\\\\\\\\\\\\":true,\\\\\\\\\\\\\\\"clickEvent\\\\\\\\\\\\\\\":{\\\\\\\\\\\\\\\"action\\\\\\\\\\\\\\\":\\\\\\\\\\\\\\\"run_command\\\\\\\\\\\\\\\",\\\\\\\\\\\\\\\"value\\\\\\\\\\\\\\\":\\\\\\\\\\\\\\\"execute @e[tag=%value%] ~ ~ ~ setblock ~ ~1 ~ redstone_block\\\\\\\\\\\\\\\"}},{\\\\\\\\\\\\\\\"text\\\\\\\\\\\\\\\":\\\\\\\\\\\\\\\"       \\\\\\\\\\\\\\\"},{\\\\\\\\\\\\\\\"text\\\\\\\\\\\\\\\":\\\\\\\\\\\\\\\"[OFF]\\\\\\\\\\\\\\\",\\\\\\\\\\\\\\\"color\\\\\\\\\\\\\\\":\\\\\\\\\\\\\\\"red\\\\\\\\\\\\\\\",\\\\\\\\\\\\\\\"bold\\\\\\\\\\\\\\\":false}]\\\\\\\"}\\\"}}\",Text4:\"[{\\\"text\\\":\\\"[ON]\\\",\\\"color\\\":\\\"green\\\",\\\"bold\\\":false},{\\\"text\\\":\\\"       \\\"},{\\\"text\\\":\\\"[OFF]\\\",\\\"color\\\":\\\"red\\\",\\\"bold\\\":true}]\"}",Tags:[%value%%value%]},%pass11%summon armor_stand ~%x3% ~-1 ~%z3% {Marker:1,NoGravity:1,Tags:[%value%]}",Tags:[%value%%value%]},%pass11%setblock ~%x4% ~ ~%z4% minecraft:redstone_lamp",Tags:[%value%%value%]},%pass11%scoreboard players set @e[tag=%value%] %value% 0",Tags:[%value%%value%]},%pass11%summon falling_block ~%x5% ~ ~%z5% {TileID:137,Time:1,TileEntityData:{Command:\"fill ~ ~ ~ ~%x6% ~1 ~%z6% minecraft:air\",auto:1}}",Tags:[%value%%value%]},%pass11%kill @e[tag=%value%%value%]",Tags:[%value%%value%]}]}]} > code.txt
goto end
:1.13
echo summon falling_block ~%x0% ~.1 ~%z0% {BlockState:{Name:redstone_block},Time:1,Passengers:[{id:falling_block,BlockState:{Name:activator_rail},Time:1,Passengers:[%pass11%gamerule commandBlockOutput false",Tags:[%value%%value%]},%pass11%scoreboard objectives add %value% dummy",Tags:[%value%%value%]},%pass11%data merge block ~%x1% ~ ~%z1% {Text1:\"{\\\"text\\\":\\\"%line1:\=\\\\%\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"execute at @e[tag=%value%,scores={%value%=1..1}] run data merge block ~%x2% ~1 ~%z2% {Text3:\\\\\\\"{\\\\\\\\\\\\\\\"text\\\\\\\\\\\\\\\":\\\\\\\\\\\\\\\"\\\\\\\\\\\\\\\",\\\\\\\\\\\\\\\"clickEvent\\\\\\\\\\\\\\\":{\\\\\\\\\\\\\\\"action\\\\\\\\\\\\\\\":\\\\\\\\\\\\\\\"run_command\\\\\\\\\\\\\\\",\\\\\\\\\\\\\\\"value\\\\\\\\\\\\\\\":\\\\\\\\\\\\\\\"scoreboard players set @e[tag=%value%,scores={%value%=1..1}] %value% 0\\\\\\\\\\\\\\\"}}\\\\\\\",Text4:\\\\\\\"[{\\\\\\\\\\\\\\\"text\\\\\\\\\\\\\\\":\\\\\\\\\\\\\\\"[ON]\\\\\\\\\\\\\\\",\\\\\\\\\\\\\\\"color\\\\\\\\\\\\\\\":\\\\\\\\\\\\\\\"green\\\\\\\\\\\\\\\",\\\\\\\\\\\\\\\"bold\\\\\\\\\\\\\\\":false,\\\\\\\\\\\\\\\"clickEvent\\\\\\\\\\\\\\\":{\\\\\\\\\\\\\\\"action\\\\\\\\\\\\\\\":\\\\\\\\\\\\\\\"run_command\\\\\\\\\\\\\\\",\\\\\\\\\\\\\\\"value\\\\\\\\\\\\\\\":\\\\\\\\\\\\\\\"execute at @e[tag=%value%] run setblock ~ ~1 ~ stone\\\\\\\\\\\\\\\"}},{\\\\\\\\\\\\\\\"text\\\\\\\\\\\\\\\":\\\\\\\\\\\\\\\"       \\\\\\\\\\\\\\\"},{\\\\\\\\\\\\\\\"text\\\\\\\\\\\\\\\":\\\\\\\\\\\\\\\"[OFF]\\\\\\\\\\\\\\\",\\\\\\\\\\\\\\\"color\\\\\\\\\\\\\\\":\\\\\\\\\\\\\\\"red\\\\\\\\\\\\\\\",\\\\\\\\\\\\\\\"bold\\\\\\\\\\\\\\\":true}]\\\\\\\"}\\\"}}\",Text2:\"{\\\"text\\\":\\\"%line2:\=\\\\%\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"execute at @e[tag=%value%,scores={%value%=0..0}] run data merge block ~%x2% ~1 ~%z2% {Text3:\\\\\\\"{\\\\\\\\\\\\\\\"text\\\\\\\\\\\\\\\":\\\\\\\\\\\\\\\"\\\\\\\\\\\\\\\",\\\\\\\\\\\\\\\"clickEvent\\\\\\\\\\\\\\\":{\\\\\\\\\\\\\\\"action\\\\\\\\\\\\\\\":\\\\\\\\\\\\\\\"run_command\\\\\\\\\\\\\\\",\\\\\\\\\\\\\\\"value\\\\\\\\\\\\\\\":\\\\\\\\\\\\\\\"scoreboard players set @e[tag=%value%,scores={%value%=0..0}] %value% 1\\\\\\\\\\\\\\\"}}\\\\\\\",Text4:\\\\\\\"[{\\\\\\\\\\\\\\\"text\\\\\\\\\\\\\\\":\\\\\\\\\\\\\\\"[ON]\\\\\\\\\\\\\\\",\\\\\\\\\\\\\\\"color\\\\\\\\\\\\\\\":\\\\\\\\\\\\\\\"green\\\\\\\\\\\\\\\",\\\\\\\\\\\\\\\"bold\\\\\\\\\\\\\\\":true,\\\\\\\\\\\\\\\"clickEvent\\\\\\\\\\\\\\\":{\\\\\\\\\\\\\\\"action\\\\\\\\\\\\\\\":\\\\\\\\\\\\\\\"run_command\\\\\\\\\\\\\\\",\\\\\\\\\\\\\\\"value\\\\\\\\\\\\\\\":\\\\\\\\\\\\\\\"execute at @e[tag=%value%] run setblock ~ ~1 ~ redstone_block\\\\\\\\\\\\\\\"}},{\\\\\\\\\\\\\\\"text\\\\\\\\\\\\\\\":\\\\\\\\\\\\\\\"       \\\\\\\\\\\\\\\"},{\\\\\\\\\\\\\\\"text\\\\\\\\\\\\\\\":\\\\\\\\\\\\\\\"[OFF]\\\\\\\\\\\\\\\",\\\\\\\\\\\\\\\"color\\\\\\\\\\\\\\\":\\\\\\\\\\\\\\\"red\\\\\\\\\\\\\\\",\\\\\\\\\\\\\\\"bold\\\\\\\\\\\\\\\":false}]\\\\\\\"}\\\"}}\",Text4:\"[{\\\"text\\\":\\\"[ON]\\\",\\\"color\\\":\\\"green\\\",\\\"bold\\\":false},{\\\"text\\\":\\\"       \\\"},{\\\"text\\\":\\\"[OFF]\\\",\\\"color\\\":\\\"red\\\",\\\"bold\\\":true}]\"}",Tags:[%value%%value%]},%pass11%summon armor_stand ~%x3% ~-1 ~%z3% {Marker:1,NoGravity:1,Tags:[%value%]}",Tags:[%value%%value%]},%pass11%setblock ~%x4% ~ ~%z4% minecraft:redstone_lamp",Tags:[%value%%value%]},%pass11%scoreboard players set @e[tag=%value%] %value% 0",Tags:[%value%%value%]},%pass11%summon falling_block ~%x5% ~ ~%z5% {BlockState:{Name:command_block},Time:1,TileEntityData:{Command:\"fill ~ ~ ~ ~%x6% ~1 ~%z6% minecraft:air\",auto:1}}",Tags:[%value%%value%]},%pass11%kill @e[tag=%value%%value%]",Tags:[%value%%value%]}]}]} > code.txt
:end
start code.txt
pause>nul