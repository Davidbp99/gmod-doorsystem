hook.Add("PlayerUse", "DoorJobs", function(pl, ent)
--  // door permission
if game.GetMap() == "" then -- if you want it to just run on one map and not all other maps. if you don't want it then remove it and remove one end.
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
      if (fullaccess[pl:GetUserGroup()] == true) then return end -- To add your own rank so management and superadmins don't need to be added to 200 buttons
  	  if pl:GetUserGroup() == RankDoors[ent:MapCreationID()] then return end -- here it gets the rank and checks if it should have perms
    if (pl:getDarkRPVar("job") ~= JobDoors[ent:MapCreationID()]) then -- here it gets the jobs and checks if it should have perms
      return false
    end
  end
end
end)
