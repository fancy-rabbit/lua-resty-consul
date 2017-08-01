-- Copyright (C) 2016 Libo Huang (huangnauh), UPYUN Inc.

local _M = {}

--  for lua-resty-checkups
_M.global = {
    checkup_timer_interval = 5,
    checkup_timer_overtime = 60,
    default_heartbeat_enable = false,
    shd_config_timer_interval = 1,
    shd_config_prefix = "shd_v1",
}



_M.consul = {
    config_key_prefix = "config/test/",
    config_positive_ttl = 10,
    config_negative_ttl = 5,
    config_cache_enable = true,
    cluster = {
        {
            servers = {
                { host = "10.0.5.108", port = 8500 },
            },
        },
    },
}

--  for lua-resty-load
_M.load_init = {
    module_name = "resty.consul.load"
}

return _M