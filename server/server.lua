if not lib.checkDependency('ox_lib', '3.30.0', true) then return end

if Config.versionCheck == 'true' then
    lib.versionCheck('AdamaStark-N7/stark_lockbox')
end