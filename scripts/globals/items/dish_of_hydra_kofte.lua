-----------------------------------------
-- ID: 5602
-- Item: dish_of_hydra_kofte
-- Food Effect: 180Min, All Races
-----------------------------------------
-- Strength 7
-- Intelligence -3
-- Attack % 21
-- Attack Cap 90
-- Defense % 21
-- Defense Cap 70
-----------------------------------------

require("scripts/globals/status");

-----------------------------------------
-- OnItemCheck
-----------------------------------------

function onItemCheck(target)
local result = 0;
	if (target:hasStatusEffect(EFFECT_FOOD) == true or target:hasStatusEffect(EFFECT_FIELD_SUPPORT_FOOD) == true) then
		result = 246;
	end
return result;
end;

-----------------------------------------
-- OnItemUse
-----------------------------------------

function onItemUse(target)
	target:addStatusEffect(EFFECT_FOOD,0,0,10800,5602);
end;

-----------------------------------
-- onEffectGain Action
-----------------------------------

function onEffectGain(target,effect)
	target:addMod(MOD_STR, 7);
	target:addMod(MOD_INT, -3);
	target:addMod(MOD_FOOD_ATTP, 21);
	target:addMod(MOD_FOOD_ATT_CAP, 90);
	target:addMod(MOD_FOOD_DEFP, 21);
	target:addMod(MOD_FOOD_DEF_CAP, 70);
end;

-----------------------------------------
-- onEffectLose Action
-----------------------------------------

function onEffectLose(target,effect)
	target:delMod(MOD_STR, 7);
	target:delMod(MOD_INT, -3);
	target:delMod(MOD_FOOD_ATTP, 21);
	target:delMod(MOD_FOOD_ATT_CAP, 90);
	target:delMod(MOD_FOOD_DEFP, 21);
	target:delMod(MOD_FOOD_DEF_CAP, 70);
end;
