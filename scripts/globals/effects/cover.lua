-----------------------------------
--
--  tpz.mod.COVER_EFFECT
--
-----------------------------------
require("scripts/globals/status")

function onEffectGain(target,effect)
    --target:addMod(tpz.mod.ABSORB_PHYSDMG_TO_MP, effect:getPower())
end

function onEffectTick(target,effect)
end

function onEffectLose(target,effect)
    --target:delMod(tpz.mod.ABSORB_PHYSDMG_TO_MP, effect:getPower())
    target:setLocalVar("COVER_PARTNER", 0)
end
