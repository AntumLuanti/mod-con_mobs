
con_mobs = {
	modname = core.get_current_modname()
}
con_mobs.modpath = core.get_modpath(con_mobs.modname)


local priority = core.settings:get("con_mobs.api_priority")
local priority_list = {}
for api_name in string.gmatch(priority, "([^,]+)") do
	table.insert(priority_list, string.gsub(api_name, "^%s*(.-)%s*$", "%1"))
end
if con_mobs.register == nil then
	core.log("error", "no mobs API detected")
	return
end
