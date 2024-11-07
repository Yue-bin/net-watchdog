--[[
    openwrt.lua - OpenWRT module.
    请确保仅在OpenWRT系统上运行，因为大多数函数依赖于Luci等库
]]

local openwrt = {}

-- sleep函数
openwrt.sleep = require("nixio").nanosleep



return openwrt
