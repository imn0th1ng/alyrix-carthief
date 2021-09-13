ESX = nil
TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)



RegisterServerEvent('para:ver')
AddEventHandler('para:ver', function(verilecekpara)
	local xPlayer = ESX.GetPlayerFromId(_source)
	if verilecekpara ~= Config.VerilecekPara then
	   DropPlayer(_source, "İyi deneme ezik :p")
	end
	xPlayer.addMoney(verilecekpara)
end)
