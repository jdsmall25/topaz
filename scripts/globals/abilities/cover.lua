-----------------------------------
-- Ability: Cover
-- Allows you to protect party members by placing yourself between them and the enemy
-- Obtained: Paladin Level 35
-- Recast Time: 0:03:00
-- Duration: 0:00:15 - 0:00:30
-- Info from https://www.bg-wiki.com/bg/Cover
-----------------------------------
require("scripts/globals/status")
require("scripts/globals/msg")
-----------------------------------

function onAbilityCheck(player,target,ability)
    if (target == nil or target:getID() == player:getID() or not target:isPC()) then
        return tpz.msg.basic.CANNOT_PERFORM_TARG, 0
    else
        return 0, 0
    end
end


function onUseAbility(player,target,ability)
    local baseDuration = 15
    local bonusTime    = utils.clamp(math.floor((player:getStat(tpz.mod.VIT) + player:getStat(tpz.mod.MND) - target:getStat(tpz.mod.VIT) * 2) / 4), 0, 15)

    local main         = player:getEquipID(tpz.slot.MAIN)
    local helm         = player:getEquipID(tpz.slot.HEAD)
    local body         = player:getEquipID(tpz.slot.BODY)

    if (main == 16604) then              -- Save the Queen - duration + 5
        bonusTime = bonusTime + 5
    elseif (main == 20728) then          -- Kheshig Blade - duration + 8
        bonusTime = bonusTime + 8
    end

    if (helm == 27690 or helm == 23046) then -- Reverence Cornet +1 / +2 - duration + 9
        bonusTime = bonusTime + 9
    elseif (helm == 23381) then              -- Reverence Coronet +3 - duration + 10
        bonusTime = bonusTime + 10
    end

    local duration = baseDuration + bonusTime + player:getMerit(tpz.merit.COVER_EFFECT_LENGTH)

    player:addStatusEffect(tpz.effect.COVER, 1, 0, duration)

    player:setLocalVar("COVER_PARTNER", target:getID())

    ability:setMsg(tpz.msg.basic.COVER_SUCCESS)

end

