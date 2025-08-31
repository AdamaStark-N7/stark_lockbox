Config = Config or {}

Config.VersionCheck = true

Config.Framework = 'qb' -- supported: 'qb' or 'qbx'

Config.Notify = 'qb'    -- supported: 'qb', 'ox', or 'lation'

Config.Inventory = 'qb' -- supported: 'qb', 'ox', or 'ps'

Config.Radial = 'qb'    -- supported: 'qb' or 'ox'

Config.Progress = {
    enabled = true,
    type = 'qb', -- supported: 'qb', 'ox_bar', 'ox_circle', or 'lation'
    duration = 2500
}

Config.qbxProgress = {
    enabled = false,
    type = 'ox_bar', -- supported: 'ox_bar', 'ox_circle', or 'lation'
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

Config.MenuUI = 'qb' -- supported: 'qb', 'ox', or 'lation'