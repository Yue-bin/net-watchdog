--[[
    net-watchdog-op.lua - main file
]]

-- 加载配置文件
dofile(arg[1] or "config.lua")

-- 主循环
while not CONFIG.exit() do
    --遍历触发器list
    for index, _ in ipairs(CONFIG.trigger) do
        -- 如果触发器触发, 则执行动作
        if CONFIG.trigger[index]() then
            CONFIG.action[index]()
        end
    end
    -- 等待一段时间
    CONFIG.sleep(CONFIG.interval)
end
