local markerCoordinates = Config.MarkerLocation
local markerCoordinates2 = Config.MarkerLocation2
local markerCoordinates3 = Config.MarkerLocation3
local playerId = PlayerPedId
local playerCoordinates = GetEntityCoords(playerId)
local distance          = #(playerCoordinates - markerCoordinates)
local message           = Config.Message

CreateThread(function()
    while true do
        Wait(0)
showAlert(message, true, 30)
DrawMarker(Config.Marker, markerCoordinates.x, markerCoordinates.y, markerCoordinates.z, 0, 0, 0, 0.0, 0.0, 0.0, 1.0, 1.0, 1.0, Config.Red, Config.Green, Config.Blue, 0, Config.UpOrDown, true, 2)    
DrawMarker(Config.Marker, markerCoordinates2.x, markerCoordinates2.y, markerCoordinates2.z, 0, 0, 0, 0.0, 0.0, 0.0, 1.0, 1.0, 1.0, Config.Red, Config.Green, Config.Blue, 0, Config.UpOrDown, true, 2)
DrawMarker(Config.Marker, markerCoordinates3.x, markerCoordinates3.y, markerCoordinates3.z, 0, 0, 0, 0.0, 0.0, 0.0, 1.0, 1.0, 1.0, Config.Red, Config.Green, Config.Blue, 0, Config.UpOrDown, true, 2)
if distance < 3 then
if IsControlJustReleased(0, Config.Key) then
SetPedArmour(playerId, 100)
SetEntityHealth(playerId, 100)
TriggerEvent('chat:addMessage', {
    color = { 255, 0, 0},
    multiline = true,
    args = {"BB_Doctor", "You Are Healed!"}
}
else 
         return
      end   
   end
end))


function showAlert(message, beep, duration)
    AddTextEntry('BB_ALERT', message)

    BeginTextCommandDisplayHelp('BB_ALERT')
    EndTextCommandDisplayHelp(0, false, beep, duration)
end