Config = Config or {}

Config.VersionCheck = true

Config.Framework = 'qbx' -- supported: 'qb' or 'qbx'

Config.Notify = 'ox'     -- supported: 'qb', 'ox', or 'lation'

Config.Inventory = 'ox'  -- supported: 'qb', 'ox', or 'ps'

Config.Radial = 'ox'     -- supported: 'qb' or 'ox'

Config.Progress = {
    enabled = false,
    type = 'qb', -- supported: 'qb', 'ox_bar', 'ox_circle', or 'lation'
    duration = 2500
}

Config.qbxProgress = {
    enabled = true,
    type = 'ox_circle', -- supported: 'ox_bar', 'ox_circle', or 'lation'
    duration = 2500
}

Config.LockboxSlots = 5

Config.LockboxWeight = 120000

Config.PoliceJobs = {
    'police',
    'lssd',
    'sasp',
    'bcso',
    'sast',
    'lscso'
    -- add your server's police job here as found in qb-core/shared/jobs.lua or qbx_core/shared/jobs.lua
}

Config.AmbulanceJobs = {
    'ambulance'
    -- add your server's ambulance job here as found in qb-core/shared/jobs.lua or qbx_core/shared/jobs.lua
}

Config.EnableMenu = true

Config.MenuUI = 'ox' -- supported: 'qb', 'ox', or 'lation'
