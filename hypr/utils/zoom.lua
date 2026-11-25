-- Zoom

local MAX_ZOOM = 3
local MIN_ZOOM = 1
local ZOOM_TOGGLE_FACTOR = 1.5

---@param offset number
---@return nil
local function zoom(offset)
    local current = hl.get_config("cursor.zoom_factor")
    if offset ~= nil then
        current = current + offset
    elseif current ~= MIN_ZOOM then
        current = MIN_ZOOM
    else
        current = ZOOM_TOGGLE_FACTOR
    end
    current = math.max(MIN_ZOOM, math.min(MAX_ZOOM, current))
    hl.config({ cursor = { zoom_factor = current } })
end

hl.bind("SUPER + mouse_down", function() zoom(0.5) end, { locked = true })
hl.bind("SUPER + mouse_up", function() zoom(-0.5) end, { locked = true })

hl.bind("SUPER + Equal", function() zoom(0.5) end, { locked = true, repeating = true })
hl.bind("SUPER + Minus", function() zoom(-0.5) end, { locked = true, repeating = true })

hl.bind("SUPER + KP_Add", function() zoom(0.5) end, { locked = true, repeating = true })
hl.bind("SUPER + KP_Subtract", function() zoom(-0.5) end, { locked = true, repeating = true })

hl.bind("SUPER + SHIFT + Minus", function() zoom(-10) end, { locked = true })
hl.bind("SUPER + SHIFT + mouse_down", function() zoom(-10) end, { locked = true })
hl.bind("SUPER + SHIFT + KP_Subtract", function() zoom(-10) end, { locked = true })
