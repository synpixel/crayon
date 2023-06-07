local Types = require(script.Parent.Types)

local Color = {}

local function createPresetModifier(color: Color3)
	return function(text: string)
		return Color.new(color)(text)
	end
end

function Color.new(color: Color3): Types.MarkupModifier
	return function(text: string)
		local r = math.round(color.R * 255)
		local g = math.round(color.G * 255)
		local b = math.round(color.B * 255)
		return `<font color"rgb({r}, {g}, {b})">{text}</font>`
	end
end

Color.blue = createPresetModifier(Color3.fromRGB(0, 110, 255))

return Color
