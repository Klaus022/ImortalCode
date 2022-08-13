-- SERVER

-----------------------------------------------------------------------------------------------------------------------------------------
-- IMORTAL
-----------------------------------------------------------------------------------------------------------------------------------------
function cRP.isAdmin()
    local source = source
    local user_id = vRP.getUserId(source)
    if user_id then
        if vRP.hasPermission(user_id, "Admin") then
            return true
        end
    end
    return false
end