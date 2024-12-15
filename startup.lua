settings.set("shell.allow_disk_startup", false)
settings.save()

local run = shell.run

run("/.sec/pass.lua")

print("Security System : OK")
