:::::::::::::::::  Version 1.4 relased!  :::::::::::::::::
:: Fixed the bug that when is on, off is bold and vice- ::
:: versa and now text in the 4th line appers immediatly ::
::       without necessary update it by clicking.       ::
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
@echo off
set pass={id:commandblock_minecart,Command:"
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
set z0=-1
set z1=1
set z2=-2
set z3=3
set z4=2
set z5=-1
set z6=1
goto end
:e
set x0=1
set x1=-1
set x2=2
set x3=-3
set x4=-2
set x5=1
set x6=-1
goto end
:s
set z0=1
set z1=-1
set z2=2
set z3=-3
set z4=-2
set z5=1
set z6=-1
goto end
:w
set x0=-1
set x1=1
set x2=-2
set x3=3
set x4=2
set x5=-1
set x6=1
:end
echo summon falling_block ~%x0% ~.1 ~%z0% {TileID:152,Time:1,Passengers:[{id:falling_block,TileID:157,Time:1,Passengers:[%pass%gamerule commandBlockOutput false",Tags:[%value%%value%]},%pass%scoreboard objectives add %value% dummy",Tags:[%value%%value%]},%pass%blockdata ~%x1% ~ ~%z1% {Text1:\"{\\\"text\\\":\\\"%line1:\=\\\\%\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"execute @e[tag=%value%,score_%value%_min=1] ~ ~ ~ blockdata ~%x2% ~1 ~%z2% {\\\\\\\"Text3\\\\\\\":\\\\\\\"{\\\\\\\\\\\\\\\"text\\\\\\\\\\\\\\\":\\\\\\\\\\\\\\\"\\\\\\\\\\\\\\\",\\\\\\\\\\\\\\\"clickEvent\\\\\\\\\\\\\\\":{\\\\\\\\\\\\\\\"action\\\\\\\\\\\\\\\":\\\\\\\\\\\\\\\"run_command\\\\\\\\\\\\\\\",\\\\\\\\\\\\\\\"value\\\\\\\\\\\\\\\":\\\\\\\\\\\\\\\"scoreboard players set @e[tag=%value%,score_%value%_min=1] %value% 0\\\\\\\\\\\\\\\"}}\\\\\\\",\\\\\\\"Text4\\\\\\\":\\\\\\\"[{\\\\\\\\\\\\\\\"text\\\\\\\\\\\\\\\":\\\\\\\\\\\\\\\"[ON]\\\\\\\\\\\\\\\",\\\\\\\\\\\\\\\"color\\\\\\\\\\\\\\\":\\\\\\\\\\\\\\\"green\\\\\\\\\\\\\\\",\\\\\\\\\\\\\\\"bold\\\\\\\\\\\\\\\":false,\\\\\\\\\\\\\\\"clickEvent\\\\\\\\\\\\\\\":{\\\\\\\\\\\\\\\"action\\\\\\\\\\\\\\\":\\\\\\\\\\\\\\\"run_command\\\\\\\\\\\\\\\",\\\\\\\\\\\\\\\"value\\\\\\\\\\\\\\\":\\\\\\\\\\\\\\\"execute @e[tag=%value%] ~ ~ ~ setblock ~ ~1 ~ stone\\\\\\\\\\\\\\\"}},{\\\\\\\\\\\\\\\"text\\\\\\\\\\\\\\\":\\\\\\\\\\\\\\\"       \\\\\\\\\\\\\\\"},{\\\\\\\\\\\\\\\"text\\\\\\\\\\\\\\\":\\\\\\\\\\\\\\\"[OFF]\\\\\\\\\\\\\\\",\\\\\\\\\\\\\\\"color\\\\\\\\\\\\\\\":\\\\\\\\\\\\\\\"red\\\\\\\\\\\\\\\",\\\\\\\\\\\\\\\"bold\\\\\\\\\\\\\\\":true}]\\\\\\\"}\\\"}}\",Text2:\"{\\\"text\\\":\\\"%line2:\=\\\\%\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"execute @e[tag=%value%,score_%value%=0] ~ ~ ~ blockdata ~%x2% ~1 ~%z2% {\\\\\\\"Text3\\\\\\\":\\\\\\\"{\\\\\\\\\\\\\\\"text\\\\\\\\\\\\\\\":\\\\\\\\\\\\\\\"\\\\\\\\\\\\\\\",\\\\\\\\\\\\\\\"clickEvent\\\\\\\\\\\\\\\":{\\\\\\\\\\\\\\\"action\\\\\\\\\\\\\\\":\\\\\\\\\\\\\\\"run_command\\\\\\\\\\\\\\\",\\\\\\\\\\\\\\\"value\\\\\\\\\\\\\\\":\\\\\\\\\\\\\\\"scoreboard players set @e[tag=%value%,score_%value%=0] %value% 1\\\\\\\\\\\\\\\"}}\\\\\\\",\\\\\\\"Text4\\\\\\\":\\\\\\\"[{\\\\\\\\\\\\\\\"text\\\\\\\\\\\\\\\":\\\\\\\\\\\\\\\"[ON]\\\\\\\\\\\\\\\",\\\\\\\\\\\\\\\"color\\\\\\\\\\\\\\\":\\\\\\\\\\\\\\\"green\\\\\\\\\\\\\\\",\\\\\\\\\\\\\\\"bold\\\\\\\\\\\\\\\":true,\\\\\\\\\\\\\\\"clickEvent\\\\\\\\\\\\\\\":{\\\\\\\\\\\\\\\"action\\\\\\\\\\\\\\\":\\\\\\\\\\\\\\\"run_command\\\\\\\\\\\\\\\",\\\\\\\\\\\\\\\"value\\\\\\\\\\\\\\\":\\\\\\\\\\\\\\\"execute @e[tag=%value%] ~ ~ ~ setblock ~ ~1 ~ redstone_block\\\\\\\\\\\\\\\"}},{\\\\\\\\\\\\\\\"text\\\\\\\\\\\\\\\":\\\\\\\\\\\\\\\"       \\\\\\\\\\\\\\\"},{\\\\\\\\\\\\\\\"text\\\\\\\\\\\\\\\":\\\\\\\\\\\\\\\"[OFF]\\\\\\\\\\\\\\\",\\\\\\\\\\\\\\\"color\\\\\\\\\\\\\\\":\\\\\\\\\\\\\\\"red\\\\\\\\\\\\\\\",\\\\\\\\\\\\\\\"bold\\\\\\\\\\\\\\\":false}]\\\\\\\"}\\\"}}\",Text4:\"[{\\\"text\\\":\\\"[ON]\\\",\\\"color\\\":\\\"green\\\",\\\"bold\\\":false},{\\\"text\\\":\\\"       \\\"},{\\\"text\\\":\\\"[OFF]\\\",\\\"color\\\":\\\"red\\\",\\\"bold\\\":true}]\"}",Tags:[%value%%value%]},%pass%summon minecraft:armor_stand ~%x3% ~-1 ~%z3% {Marker:1,NoGravity:1,Tags:[%value%]}",Tags:[%value%%value%]},%pass%setblock ~%x4% ~ ~%z4% minecraft:redstone_lamp",Tags:[%value%%value%]},%pass%scoreboard players set @e[tag=%value%] %value% 0",Tags:[%value%%value%]},%pass%summon minecraft:falling_block ~%x5% ~ ~%z5% {TileID:137,Time:1,TileEntityData:{Command:\"fill ~ ~ ~ ~%x6% ~1 ~%z6% minecraft:air\",auto:1}}",Tags:[%value%%value%]},%pass%kill @e[tag=%value%%value%]",Tags:[%value%%value%]}]}]} > code.txt
pause>nul