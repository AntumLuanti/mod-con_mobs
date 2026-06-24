
con_mobs = {
	modname = core.get_current_modname()
}
con_mobs.modpath = core.get_modpath(con_mobs.modname)


if con_mobs.register == nil then
	core.log("error", "no mobs API detected")
	return
end
