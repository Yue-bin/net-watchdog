--[[
    config.lua - configuration file
    本文件中的各种函数中可以调用从mods中require的模块的函数以实现各种模块化的功能
]]

CONFIG = {}

-- sleep的间隔, 单位秒
CONFIG.interval = 5

-- sleep函数的实现
CONFIG.sleep = function(seconds)
    os.execute("sleep " .. seconds)
end

-- 主循环的退出条件
CONFIG.exit = function()
    return false
end

-- 触发器
CONFIG.trigger = function()
    return true
end

-- 触发器触发的动作
CONFIG.action = function()
    print("triggered", os.date())
end
