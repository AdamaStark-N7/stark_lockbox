if GetResourceState('qbx_core') ~= 'started' or GetResourceState('qb-core') == 'started' then return end

local ox_inventory = exports.ox_inventory

local lockbox = {
    id = 'vehicle_lockbox',
    label = 'Vehicle Lockbox',
    slots = Config.lockboxSlots,
    weight = Config.lockboxWeight,
    owner = true,
}

AddEventHandler('onServerResourceStart', function (resourceName)
    if resourceName == 'ox_inventory' or resourceName == GetCurrentResourceName() then
        ox_inventory:RegisterStash(lockbox.id, lockbox.label, lockbox.slots, lockbox.weight, lockbox.owner)
    end
end)

lib.addCommand('lockbox', {
    help = 'Opens The Secured Vehicle Lockbox',
}, function(source)
    TriggerClientEvent('stark_lockbox:client:openLockBox', source)
end)