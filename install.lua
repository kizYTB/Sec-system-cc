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

sleep(2)

install()

end

local function install()
    run("cd","/")
    run("wget","https://raw.githubusercontent.com/kizYTB/Sec-system-cc/refs/heads/main/startup.lua")
    run("wget","https://raw.githubusercontent.com/kizYTB/Sec-system-cc/refs/heads/main/.settings")
    run("mkdir",".sec")
    run("cd","/.sec")
    run("wget","https://raw.githubusercontent.com/kizYTB/Sec-system-cc/refs/heads/main/.sec/resetpass.lua")
    run("wget","https://raw.githubusercontent.com/kizYTB/Sec-system-cc/refs/heads/main/.sec/pass.lua")
    run("wget","https://raw.githubusercontent.com/kizYTB/Sec-system-cc/refs/heads/main/.sec/bootmanager.lua")
    run("mkdir","pass/")
    run("cd","/.sec/pass/")
    run("wget","https://raw.githubusercontent.com/kizYTB/Sec-system-cc/refs/heads/main/.sec/pass/data.txt")
end