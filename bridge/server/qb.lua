if GetResourceState('qb-core') ~= 'started' or GetResourceState('qbx_core') == 'started' then return end

local QBCore = exports['qb-core']:GetCoreObject()

local qbInvState = GetResourceState('qb-inventory')

local oxInvState = GetResourceState('ox_inventory')

local ox_inventory = exports.ox_inventory

if Config.inventory == 'newQB' and qbInvState == 'started' then

    RegisterNetEvent('stark_lockbox:server:openLockBox', function(stashLabel)
        local src = source
        exports['qb-inventory']:OpenInventory(src, stashLabel, {
            maxweight = Config.lockboxWeight,
            slots = Config.lockboxSlots
        })
    end)

end

if Config.inventory == 'ox' and oxInvState == 'started' then
    local lockbox = {
        id = 'vehicle_lockbox',
        label = 'Vehicle Lockbox',
        slots = Config.lockboxSlots,
        weight = Config.lockboxWeight,
        owner = true,
    }

    AddEventHandler('onServerResourceStart', function(resourceName)
        if resourceName == 'ox_inventory' or resourceName == GetCurrentResourceName() then
            ox_inventory:RegisterStash(lockbox.id, lockbox.label, lockbox.slots, lockbox.weight, lockbox.owner)
        end
    end)
end

QBCore.Commands.Add("lockbox", "Opens The Secured Vehicle Lockbox", {}, false, function(source)
    TriggerClientEvent('stark_lockbox:client:openLockBox', source)
end)