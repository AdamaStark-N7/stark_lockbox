Config = Config or {}

Config.versionCheck = 'true' -- 'true' or 'false'

Config.framework = 'qb' -- supported: 'qb' or 'qbx'

Config.notify = 'qb' -- supported: 'qb' or 'ox'

Config.inventory = 'ox' -- supported: 'oldQB', 'newQB', 'ps', or 'ox' (QBCore Only)

Config.progress = {
    enabled = 'true', -- 'true' or 'false'

    type = 'ox', -- supported: 'qb' or 'ox'

    duration = 2500 -- How long, in ms, before the lockbox opens
}

Config.qbxProgress = {
    enabled = 'false', -- For Use With QBox Framework, Set To 'false' If Not Using QBox
    duration = 2500
}

Config.lockboxSlots = 5 -- Recommended Value, Could Be Higher or Lower Depending On Server Needs

Config.lockboxWeight = 120000 -- Recommended Value, Could Be Higher or Lower Depending On Server Needs

Config.leoJobs = {
    'police',
    'lssd',
    'sast',
    'bcso',
    'sasp',
    -- add your server's police job here as found in qb-core/shared/jobs.lua or qbx_core/shared/jobs.lua
}

Config.emsJobs = {
    'ambulance',
    -- add your server's ambulance job here as found in qb-core/shared/jobs.lua or qbx_core/shared/jobs.lua
}