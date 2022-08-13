-- CLIENT 
-----------------------------------------------------------------------------------------------------------------------------------------
-- IMORTAL
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand('imortal',function(source,args)
    if vSERVER.isAdmin() then
        if not imortal then
            imortal = true
            TriggerEvent("Notify","verde","Imortal Ativado!",3000)
            SetEntityInvincible(PlayerPedId(),true)
            SetEntityProofs(PlayerPedId(), true, true, true, true, true, true, 1, true)
        else
            imortal = false
            SetEntityInvincible(PlayerPedId(),false)
            SetEntityProofs(PlayerPedId(), false, false, false, false, false, false, 0, false)
            TriggerEvent("Notify","vermelho","Imortal Desativado!",3000)
        end
    end
end)