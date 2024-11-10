--[[
    common.lua - common functions
    此模块中的函数应该尽可能保证泛用性
]]

local common = {}

-- 这部分依赖于lua-socket库
-- 我认为这个库是泛用的

-- sleep函数
common.sleep = require("socket").sleep

-- 确认公网ipv4连通性
common.check_ipv4 = function()
    local http = require("socket.http")
    http.TIMEOUT = 5
    local _, code = http.request("https://v4.ident.me/")
    return code == 200
end

-- 确认公网ipv6连通性
common.check_ipv6 = function()
    local http = require("socket.http")
    http.TIMEOUT = 5
    local _, code = http.request("https://v6.ident.me/")
    return code == 200
end

-- 使用ifup启动接口
common.ifup = function(ifname)
    os.execute("ifup " .. ifname)
end

-- 使用ifdown关闭接口
common.ifdown = function(ifname)
    os.execute("ifdown " .. ifname)
end

return common
