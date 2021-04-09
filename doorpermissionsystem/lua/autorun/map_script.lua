hook.Add("PlayerUse", "DoorJobs", function(pl, ent)
--  // door permission
if game.GetMap() == "site unkown15" then -- so the below only runs on my custom map
	local JobDoors = {
 -- [mapid] = "job name", (job name does not team TEAM_)
}
local RankDoors = {
	[1779] = "admin",
}

local fullaccess = {
["superadmin"] = true,


}

  if (JobDoors[ent:MapCreationID()]) or (RankDoors[ent:MapCreationID()]) then 
      if (fullaccess[pl:GetUserGroup()] == true) then return end -- I don't want to add myself and management to all buttons
  	  if pl:GetUserGroup() == RankDoors[ent:MapCreationID()] then return end
    if (pl:getDarkRPVar("job") ~= JobDoors[ent:MapCreationID()]) then
      return false
    end
  end
end
end)

// lua_run Entity(1):ChatPrint(Entity(1):GetEyeTrace().Entity:MapCreationID())

