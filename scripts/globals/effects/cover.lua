-----------------------------------
--
--
--
-----------------------------------

function onEffectGain(target,effect)
end

function onEffectTick(target,effect)
end

function onEffectLose(target,effect)
    target:setLocalVar("COVER_PARTNER", -1)
end
