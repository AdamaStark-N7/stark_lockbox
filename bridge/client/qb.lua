if GetResourceState('qb-core') ~= 'started' or GetResourceState('qbx_core') == 'started' then return end

local QBCore = exports['qb-core']:GetCoreObject()

function qbCheckValidPoliceJob()
    local currentJob = QBCore.Functions.GetPlayerData().job
    if currentJob == nil then return false end
    for i, job in ipairs(Config.leoJobs) do
        if (currentJob.name == job) then
            return true
        end
    end
    return false
end

function qbCheckValidAmbulanceJob()
    local currentJob = QBCore.Functions.GetPlayerData().job
    if currentJob == nil then return false end
    for j, job in ipairs(Config.emsJobs) do
        if (currentJob.name == job) then
            return true
        end
    end
    return false
end