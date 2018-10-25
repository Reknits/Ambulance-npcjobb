ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

RegisterServerEvent('esx_ambulancejob:success')
AddEventHandler('esx_ambulancejob:success', function()

  math.randomseed(os.time())

  local xPlayer        = ESX.GetPlayerFromId(source)
  local total          = math.random(Config.NPCJobEarnings.min, Config.NPCJobEarnings.max);
  local societyAccount = nil

  

  TriggerEvent('esx_addonaccount:getSharedAccount', 'society_ambulance', function(account)
    societyAccount = account
  end)

  if societyAccount ~= nil then

    local playerMoney  = math.floor(total / 100 * 70)
    local societyMoney = math.floor(total / 100 * 30)

    xPlayer.addMoney(playerMoney)
    societyAccount.addMoney(societyMoney)

    TriggerClientEvent('esx:showNotification', xPlayer.source, 'Du har tjänat ~g~SEK~s~ ' .. playerMoney)
    TriggerClientEvent('esx:showNotification', xPlayer.source, 'Sjukvården har tjänat ~r~SEK~s~ ' .. societyMoney)

  else

    xPlayer.addMoney(total)
    TriggerClientEvent('esx:showNotification', xPlayer.source, _U('have_earned') .. total)

  end

end)

