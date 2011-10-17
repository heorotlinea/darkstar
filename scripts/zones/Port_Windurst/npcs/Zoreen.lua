-----------------------------------
--	Area: Port Windurst
--	NPC: Zoreen
--	Regional Marchant NPC 
--	Only sells when Windurst controls Valdeaunia
--	Working 100%
-----------------------------------

require("scripts/globals/shop");
require("scripts/globals/conquest");
package.loaded["scripts/zones/Port_Windurst/TextIDs"] = nil;
require("scripts/zones/Port_Windurst/TextIDs");

-----------------------------------
-- onTrade Action
-----------------------------------

function onTrade(player,npc,trade)
end; 

-----------------------------------
-- onTrigger Action
-----------------------------------

function onTrigger(player,npc)

RegionOwner = getRegionOwner(VALDEAUNIA);

if (RegionOwner ~= WINDURST) then 
	player:showText(npc,ZOREEN_CLOSED_DIALOG);
else
	player:showText(npc,ZOREEN_OPEN_DIALOG);

	stock = {0x111e,29,	 --Frost Turnip
			 0x027e,170} --Sage

showShop(player,WINDURST,stock);
end
end; 

-----------------------------------
-- onEventUpdate
-----------------------------------

function onEventUpdate(player,csid,option)
--printf("CSID: %u",csid);
--printf("RESULT: %u",option);
end;

-----------------------------------
-- onEventFinish
-----------------------------------

function onEventFinish(player,csid,option)
--printf("CSID: %u",csid);
--printf("RESULT: %u",option);
end;



