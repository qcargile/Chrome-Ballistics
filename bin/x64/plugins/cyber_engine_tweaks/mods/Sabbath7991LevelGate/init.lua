registerForEvent("onInit", function()
    local function rebuildStores()
        local mgr = Game.GetScriptableSystemsContainer():Get("VirtualAtelier.Systems.VirtualAtelierStoresManager")
        if mgr then
            mgr:BuildStoresList()
        end
    end

    ObserveAfter("PlayerDevelopmentSystem", "OnSetProficiencyLevel", rebuildStores)
    ObserveAfter("PlayerDevelopmentSystem", "OnLevelUpProficiency", rebuildStores)
    ObserveAfter("VirtualAtelier.UI.AtelierStoresListController", "OnInitialize", rebuildStores)
end)
