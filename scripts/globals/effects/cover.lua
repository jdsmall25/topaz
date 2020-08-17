-----------------------------------
--
--  tpz.mod.COVER_EFFECT
--
-----------------------------------
require("scripts/globals/status")

function onEffectGain(target,effect)
end

function onEffectTick(target,effect)
end

function onEffectLose(target,effect)
    target:setLocalVar("COVER_PARTNER", 0)
end
