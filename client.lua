ESX = nil

Citizen.CreateThread(function()
    while ESX == nil do
        TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
        Citizen.Wait(0)
    end
end)

local araccikartma = false
local yaraq = "WEAPON_CARBINERIFLE" 	
local createdvehicle = {}


local alyrix = CircleZone:Create(vector3(-445.48, -2267.5, 8.27711), 5.0, {
    name="abiabiabi",
    debugPoly=false,
})

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(1000)
        local plyPed = PlayerPedId()
        local coords = GetEntityCoords(plyPed)
        alyabi = alyrix:isPointInside(coords)
        if alyabi then
            SetNewWaypoint(1547.15, 6332.70)
        end
    end
end)


RegisterNetEvent('naberabi:iki')
AddEventHandler('naberabi:iki', function()
    DeleteVehicle(createdvehicle)
    TriggerServerEvent('para:ver')
    araccikartma = false
end)



RegisterNetEvent('carthief:allevents')
AddEventHandler('carthief:allevents', function()
    TriggerEvent('carthief:araccıkar')
    TriggerEvent('waypoint:set')
    TriggerEvent("notification", "Location is Marked", 2 )
end)

Citizen.CreateThread(function()
    local hash = GetHashKey('a_m_m_og_boss_01')
    RequestModel(hash)
    while not HasModelLoaded(hash) do Citizen.Wait(1) end

    local ped = CreatePed(21, hash, -88.785, 19.8987, 71.5444 -1, 158.04, true, true)
    SetBlockingOfNonTemporaryEvents(ped, true)
    SetPedFleeAttributes(ped, 0, 0)
    SetPedDropsWeaponsWhenDead(ped, false)
    SetPedDiesWhenInjured(ped, false)
    SetEntityInvincible(ped , true)
    FreezeEntityPosition(ped, true)
    
end)

Citizen.CreateThread(function()
    local hash = GetHashKey('a_m_m_hillbilly_01')
    RequestModel(hash)
    while not HasModelLoaded(hash) do Citizen.Wait(1) end

    local ped = CreatePed(21, hash, 1547.15, 6332.70, 24.0805 -1, 56.25, true, true)
    SetBlockingOfNonTemporaryEvents(ped, true)
    SetPedFleeAttributes(ped, 0, 0)
    SetPedDropsWeaponsWhenDead(ped, false)
    SetPedDiesWhenInjured(ped, false)
    SetEntityInvincible(ped , true)
    FreezeEntityPosition(ped, true)
    
end)

RegisterNetEvent("carthief:araccıkar")
AddEventHandler("carthief:araccıkar", function()
    if not araccikartma then
        local vehicle = GetHashKey('zentorno')
	    RequestModel(vehicle)
	    while not HasModelLoaded(vehicle) do
		  Wait(50)
	    end
        local spawned_car = CreateVehicle(vehicle, -447.29, -2268.0, 7.18392, 269.46, true, false)
        TriggerEvent('waypoint:set')
        araccikartma = true
        createdvehicle = spawned_car
        TriggerEvent('ped:spawn1')
        TriggerEvent('ped:spawn2')
        TriggerEvent('ped:spawn3')
        TriggerEvent('ped:spawn4')
    else
        TriggerEvent("notification", "Already Marked Location", 2 )
    end
end)

RegisterNetEvent("waypoint:set")
AddEventHandler("waypoint:set", function()
SetNewWaypoint(-447.29, -2268.0)
end)

RegisterNetEvent('ped:spawn1')
AddEventHandler('ped:spawn1', function()
    local hash = GetHashKey('a_m_m_og_boss_01')
    RequestModel(hash)
    while not HasModelLoaded(hash) do Citizen.Wait(1) end

    local ped = CreatePed(21, hash, -434.86, -2266.7, 7.60818 -1, 148.62, true, true)
    playerPed = PlayerPedId()
    -- TaskCombatPed(ped, playerPed, 0, 16)
SetPedFleeAttributes(ped, 0, 0)
SetPedCombatAttributes(ped, 46, 1)
SetPedCombatAbility(ped, 20)
SetPedCombatMovement(ped, 2)
SetPedCombatRange(ped, 2)
SetPedKeepTask(ped, true)
SetPedAsCop(ped, true)
GiveWeaponToPed(ped, GetHashKey(yaraq),250,false,true)
AddArmourToPed(ped, 500)
end)

RegisterNetEvent('ped:spawn2')
AddEventHandler('ped:spawn2', function()
    local hash = GetHashKey('a_m_m_og_boss_01')
    RequestModel(hash)
    while not HasModelLoaded(hash) do Citizen.Wait(1) end

    local ped = CreatePed(21, hash, -432.71, -2273.0, 7.60818 -1, 78.79, true, true)
    playerPed = PlayerPedId()
    -- TaskCombatPed(ped, playerPed, 0, 16)
SetPedFleeAttributes(ped, 0, 0)
SetPedCombatAttributes(ped, 46, 1)
SetPedCombatAbility(ped, 100)
SetPedCombatMovement(ped, 2)
SetPedCombatRange(ped, 2)
SetPedKeepTask(ped, true)
SetPedAsCop(ped, true)
GiveWeaponToPed(ped, GetHashKey(yaraq),250,false,true)
AddArmourToPed(ped, 200)
end)

RegisterNetEvent('ped:spawn3')
AddEventHandler('ped:spawn3', function()
    local hash = GetHashKey('a_m_m_og_boss_01')
    RequestModel(hash)
    while not HasModelLoaded(hash) do Citizen.Wait(1) end

    local ped = CreatePed(21, hash, -447.34, -2269.4, 7.60812 -1, 74.24, true, true)
    playerPed = PlayerPedId()
    -- TaskCombatPed(ped, playerPed, 0, 16)
SetPedFleeAttributes(ped, 0, 0)
SetPedCombatAttributes(ped, 46, 1)
SetPedCombatAbility(ped, 100)
SetPedCombatMovement(ped, 2)
SetPedCombatRange(ped, 2)
SetPedKeepTask(ped, true)
SetPedAsCop(ped, true)
GiveWeaponToPed(ped, GetHashKey(yaraq),250,false,true)
AddArmourToPed(ped, 200)
end)

RegisterNetEvent('ped:spawn4')
AddEventHandler('ped:spawn4', function()
    local hash = GetHashKey('a_m_m_og_boss_01')
    RequestModel(hash)
    while not HasModelLoaded(hash) do Citizen.Wait(1) end

    local ped = CreatePed(21, hash, -447.36, -2266.7, 7.60812 -1, 163.18, true, true)
    playerPed = PlayerPedId()
    -- TaskCombatPed(ped, playerPed, 0, 16)
SetPedFleeAttributes(ped, 0, 0)
SetPedCombatAttributes(ped, 46, 1)
SetPedCombatAbility(ped, 100)
SetPedCombatMovement(ped, 2)
SetPedCombatRange(ped, 2)
GiveWeaponToPed(ped, GetHashKey(yaraq),250,false,true)
AddArmourToPed(ped, 200)
end)






