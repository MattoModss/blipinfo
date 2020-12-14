--[[
    MÄTTÖ MODS
              ]]--

Citizen.CreateThread(function()
    RequestStreamedTextureDict("blipit", 1) -- .ytd tiedoston nimi
    while not HasStreamedTextureDictLoaded("blipit") do -- .ytd tiedoston nimi
        Wait(0)
    end
end)



Citizen.CreateThread(function()

    local blip = AddBlipForCoord(327.384, -586.075, 28.9) -- blipin sijainti
    SetBlipSprite(blip, 61) -- blipin tyyli
    SetBlipColour(blip, 0) -- blipin väri, jos on add-on blipit niin pidä 0
    SetBlipScale  (blip, 1.0) -- Blipin koko
	SetBlipAsShortRange(blip, true)
    BeginTextCommandSetBlipName("STRING")
	AddTextComponentString('Sairaala') -- Blipin nimi
	EndTextCommandSetBlipName(blip)

    -- Blippi tietojen tekstit
    exports['blip_info']:SetBlipInfoTitle(blip, "Haartmanin Sairaala", false)
    exports['blip_info']:SetBlipInfoImage(blip, "blipit", "haartman") -- .ytd tiedoston nimi ja textuurin nimi .ytd tiedoston sisässä
    exports['blip_info']:AddBlipInfoText(blip, "Sijainti", "") -- Sijainnin paikka
    exports['blip_info']:AddBlipInfoHeader(blip, "") -- Pidä tyhjänä
    exports['blip_info']:AddBlipInfoText(blip, "") -- Blipin info teksti tähän
end)