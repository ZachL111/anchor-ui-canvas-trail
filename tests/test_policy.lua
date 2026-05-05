package.path = "src/?.lua;" .. package.path
local policy = require("policy")

local signal_case_1 = { demand = 78, capacity = 77, latency = 15, risk = 6, weight = 11 }
assert(policy.score(signal_case_1) == 192)
assert(policy.classify(signal_case_1) == "accept")
local signal_case_2 = { demand = 70, capacity = 99, latency = 18, risk = 12, weight = 9 }
assert(policy.score(signal_case_2) == 140)
assert(policy.classify(signal_case_2) == "review")
local signal_case_3 = { demand = 81, capacity = 95, latency = 14, risk = 19, weight = 10 }
assert(policy.score(signal_case_3) == 137)
assert(policy.classify(signal_case_3) == "review")
