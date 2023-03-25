local function sendClientScripts()
    AddCSLuaFile("shared/rst_network_strings.lua")
end

local function loadServerScripts()
    include("shared/rst_network_strings.lua")
end

local function loadClientScripts()
    include("shared/rst_network_strings.lua")
end

local function sendMaterials()
    -- resource.AddFile("materials/clock.png")
end

if SERVER then
    sendClientScripts()
    sendMaterials()
    loadServerScripts()
end

if CLIENT then
    loadClientScripts()
end
