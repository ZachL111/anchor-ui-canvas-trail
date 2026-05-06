package.path = "src/?.lua;" .. package.path
local review = require("domain_review")

local item = { signal = 53, slack = 49, drag = 9, confidence = 55 }
assert(review.score(item) == 183)
assert(review.lane(item) == "ship")
