--[[
    config.lua - configuration file
    本文件中的各种函数中可以调用从mods中require的模块的函数以实现各种模块化的功能
]]

local common = require("mods/common")
--require("mods/openwrt")

CONFIG = {}

-- sleep的间隔, 单位秒
CONFIG.interval = 5

-- sleep函数的实现
CONFIG.sleep = common.sleep
-- CONFIG.sleep = openwrt.sleep
--[[
CONFIG.sleep = function(seconds)
    os.execute("sleep " .. seconds)
end
--]]

-- 主循环的退出条件
CONFIG.exit = function()
    return false
end

-- 触发器list
CONFIG.trigger = {}
CONFIG.trigger[1] = function()
    return true
end
CONFIG.trigger[2] = function()
    return common.check_ipv4()
end
CONFIG.trigger[3] = function()
    return common.check_ipv6()
end

-- 触发器触发的动作list,注意序号上与触发器对应
CONFIG.action = {}
CONFIG.action[1] = function()
    print("trigged at " .. os.date())
end
CONFIG.action[2] = function()
    print("ipv4 is connected")
end
CONFIG.action[3] = function()
    print("ipv6 is connected")
end
