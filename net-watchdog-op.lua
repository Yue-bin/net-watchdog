--[[
    net-watchdog-op.lua - main file
]]

-- 加载配置文件
dofile("config.lua")

-- 主循环
while not CONFIG.exit() do
    -- 如果触发器触发, 则执行动作
    if CONFIG.trigger() then
        CONFIG.action()
    end
    -- 等待一段时间
    CONFIG.sleep(CONFIG.interval)
end
