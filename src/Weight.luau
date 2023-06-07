local Types = require(script.Parent.Types)

type FontWeight =
	number
	| "thin"
	| "extralight"
	| "light"
	| "regular"
	| "medium"
	| "semibold"
	| "bold"
	| "extrabold"
	| "heavy"

local Weight = {}
Weight.presetWeights = {
	"thin",
	"extralight",
	"light",
	"regular",
	"medium",
	"semibold",
	"bold",
	"extrabold",
	"heavy",
}

local function createPresetModifier(fontWeight: FontWeight)
	return function(text: string)
		return Weight.new(fontWeight)(text)
	end
end

function Weight.new(fontWeight: FontWeight): Types.MarkupModifier
	return function(text: string)
		return `<font weight="{fontWeight}">{text}</font>`
	end
end

Weight.thin = createPresetModifier("thin")
Weight.extralight = createPresetModifier("extralight")
Weight.light = createPresetModifier("light")
Weight.regular = createPresetModifier("regular")
Weight.medium = createPresetModifier("medium")
Weight.semibold = createPresetModifier("semibold")
Weight.bold = createPresetModifier("bold")
Weight.extrabold = createPresetModifier("extrabold")
Weight.heavy = createPresetModifier("heavy")

return Weight
