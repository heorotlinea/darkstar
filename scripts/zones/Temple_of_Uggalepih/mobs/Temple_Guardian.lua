-----------------------------------
-- Area: Temple of Uggalepih
-- NPC:  Temple Guardian
-----------------------------------

-----------------------------------
-- onMobSpawn Action
-----------------------------------

function onMobSpawn(mob)
end;

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob, killer)
	GetNPCByID(17428957):openDoor(300); -- 5min
end;