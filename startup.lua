settings.set("shell.allow_disk_startup", false)
settings.save()

local run = shell.run

run("/.sec/pass.lua")

shell.setAlias("boot","/.sec/bootmanager.lua")

print("Security System : OK")
