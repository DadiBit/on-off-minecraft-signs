:::::::::::::::::  Version 1.2 relased!  :::::::::::::::::
::Not ascii-characters in lines are now accepted and so ::
::   also the \u00A7 to color the text inside of them   ::
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
@echo off
set chain=Passengers:[{id:falling_block,Data:1,TileID:211,Time:1,TileEntityData
echo (When setting up following options press "ENTER" to conferme them)
echo.
set /p facing=Facing of sign[N/E/S/W]: 
set /p value=Scoreboard name(use different value each time you use the generator): 
set /p line1=1st line(press "SPACE" if you want it empty): 
set /p line2=2nd line(press "SPACE" if you want it empty): 
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
set x0=0
set z0=-1
set x1=0
set z1=1
set x2=0
set z2=-2
set x3=0
set z3=3
set x4=0
set z4=2
set x5=0
set z5=-3
goto end
:e
set x0=1
set z0=0
set x1=-1
set z1=0
set x2=2
set z2=0
set x3=-3
set z3=0
set x4=-2
set z4=0
set x5=3
set z5=0
goto end
:s
set x0=0
set z0=1
set x1=0
set z1=-1
set x2=0
set z2=2
set x3=0
set z3=-3
set x4=0
set z4=-2
set x5=0
set z5=3
goto end
:w
set x0=-1
set z0=0
set x1=1
set z1=0
set x2=-2
set z2=0
set x3=3
set z3=0
set x4=2
set z4=0
set x5=-3
set z5=0
:end
echo summon falling_block ~%x0% ~1 ~%z0% {TileID:137,Data:1,Time:1,TileEntityData:{auto:1,Command:"gamerule commandBlockOutput false"},Passengers:[{id:falling_block,Data:1,TileID:137,Time:1,TileEntityData:{auto:1,Command:"fill ~ ~1 ~ ~ ~9 ~ air"},Passengers:[{id:falling_block,Data:1,TileID:137,Time:1,TileEntityData:{Command:"scoreboard objectives add %value% dummy"},%chain%:{Command:"blockdata ~%x1% ~-2 ~%z1% {Text1:\"{\\\"text\\\":\\\"%line1:\=\\\\%\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"execute @e[tag=%value%,score_%value%=1] ~ ~ ~ blockdata ~%x2% ~1 ~%z2% {\\\\\\\"Text3\\\\\\\":\\\\\\\"{\\\\\\\\\\\\\\\"text\\\\\\\\\\\\\\\":\\\\\\\\\\\\\\\"\\\\\\\\\\\\\\\",\\\\\\\\\\\\\\\"clickEvent\\\\\\\\\\\\\\\":{\\\\\\\\\\\\\\\"action\\\\\\\\\\\\\\\":\\\\\\\\\\\\\\\"run_command\\\\\\\\\\\\\\\",\\\\\\\\\\\\\\\"value\\\\\\\\\\\\\\\":\\\\\\\\\\\\\\\"execute @e[tag=%value%,score_%value%=1] ~ ~ ~ scoreboard players set @s %value% 0\\\\\\\\\\\\\\\"}}\\\\\\\",\\\\\\\"Text4\\\\\\\":\\\\\\\"[{\\\\\\\\\\\\\\\"text\\\\\\\\\\\\\\\":\\\\\\\\\\\\\\\"[ON]\\\\\\\\\\\\\\\",\\\\\\\\\\\\\\\"color\\\\\\\\\\\\\\\":\\\\\\\\\\\\\\\"green\\\\\\\\\\\\\\\",\\\\\\\\\\\\\\\"bold\\\\\\\\\\\\\\\":true,\\\\\\\\\\\\\\\"clickEvent\\\\\\\\\\\\\\\":{\\\\\\\\\\\\\\\"action\\\\\\\\\\\\\\\":\\\\\\\\\\\\\\\"run_command\\\\\\\\\\\\\\\",\\\\\\\\\\\\\\\"value\\\\\\\\\\\\\\\":\\\\\\\\\\\\\\\"execute @e[tag=%value%] ~ ~ ~ setblock ~ ~1 ~ redstone_block\\\\\\\\\\\\\\\"}},{\\\\\\\\\\\\\\\"text\\\\\\\\\\\\\\\":\\\\\\\\\\\\\\\"       \\\\\\\\\\\\\\\"},{\\\\\\\\\\\\\\\"text\\\\\\\\\\\\\\\":\\\\\\\\\\\\\\\"[OFF]\\\\\\\\\\\\\\\",\\\\\\\\\\\\\\\"color\\\\\\\\\\\\\\\":\\\\\\\\\\\\\\\"red\\\\\\\\\\\\\\\",\\\\\\\\\\\\\\\"bold\\\\\\\\\\\\\\\":false}]\\\\\\\"}\\\"}}\",Text2:\"{\\\"text\\\":\\\"%line2:\=\\\\%\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"execute @e[tag=%value%,score_%value%=0] ~ ~ ~ blockdata ~%x2% ~1 ~%z2% {\\\\\\\"Text3\\\\\\\":\\\\\\\"{\\\\\\\\\\\\\\\"text\\\\\\\\\\\\\\\":\\\\\\\\\\\\\\\"\\\\\\\\\\\\\\\",\\\\\\\\\\\\\\\"clickEvent\\\\\\\\\\\\\\\":{\\\\\\\\\\\\\\\"action\\\\\\\\\\\\\\\":\\\\\\\\\\\\\\\"run_command\\\\\\\\\\\\\\\",\\\\\\\\\\\\\\\"value\\\\\\\\\\\\\\\":\\\\\\\\\\\\\\\"execute @e[tag=%value%,score_%value%=0] ~ ~ ~ scoreboard players set @s %value% 1\\\\\\\\\\\\\\\"}}\\\\\\\",\\\\\\\"Text4\\\\\\\":\\\\\\\"[{\\\\\\\\\\\\\\\"text\\\\\\\\\\\\\\\":\\\\\\\\\\\\\\\"[ON]\\\\\\\\\\\\\\\",\\\\\\\\\\\\\\\"color\\\\\\\\\\\\\\\":\\\\\\\\\\\\\\\"green\\\\\\\\\\\\\\\",\\\\\\\\\\\\\\\"bold\\\\\\\\\\\\\\\":false,\\\\\\\\\\\\\\\"clickEvent\\\\\\\\\\\\\\\":{\\\\\\\\\\\\\\\"action\\\\\\\\\\\\\\\":\\\\\\\\\\\\\\\"run_command\\\\\\\\\\\\\\\",\\\\\\\\\\\\\\\"value\\\\\\\\\\\\\\\":\\\\\\\\\\\\\\\"execute @e[tag=%value%] ~ ~ ~ setblock ~ ~1 ~ stone\\\\\\\\\\\\\\\"}},{\\\\\\\\\\\\\\\"text\\\\\\\\\\\\\\\":\\\\\\\\\\\\\\\"       \\\\\\\\\\\\\\\"},{\\\\\\\\\\\\\\\"text\\\\\\\\\\\\\\\":\\\\\\\\\\\\\\\"[OFF]\\\\\\\\\\\\\\\",\\\\\\\\\\\\\\\"color\\\\\\\\\\\\\\\":\\\\\\\\\\\\\\\"red\\\\\\\\\\\\\\\",\\\\\\\\\\\\\\\"bold\\\\\\\\\\\\\\\":true}]\\\\\\\"}\\\"}}\"}"},%chain%:{Command:"summon minecraft:armor_stand ~%x3% ~-4.5 ~%z3% {Marker:1,NoGravity:1,Tags:[%value%]}"},%chain%:{Command:"scoreboard players set @e[tag=%value%] %value% 0"},%chain%:{Command:"setblock ~%x4% ~-5 ~%z4% redstone_lamp"},%chain%:{Command:"execute @e[tag=%value%] ~ ~ ~ gamerule commandBlockOutput true"},%chain%:{Command:"execute @e[tag=%value%] ~ ~ ~ fill ~%x5% ~ ~%z5% ~%x5% ~10 ~%z5% air"},Passengers:[{id:falling_block,Data:1,TileID:137,Time:1,TileEntityData:{auto:1,Command:"blockdata ~ ~-7 ~ {auto:1}"}}]}]}]}]}]}]}]}]}]} > code.txt
pause>nul