local run = shell.run

term.clear()
term.setCursorPos(1,1)

if fs.exists("/startup.lua") then
    DELETESTART()
else
    install()
end

local function DELETESTART()

textutils.slowPrint("All operating system files, Bootloader will be deleted, you have 10 seconds to stop via the button on the top left of the screen.", 15)

sleep(10)

textutils.slowPrint("Deleting boot files from the os, bootloader.",15)

run("rm","/startup.lua")

end

local function install()
    textutils.slowPrint("supression des fichier de demarage de L'os, bootloader ",15)
end