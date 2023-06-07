local Color = require(script.Color)
local FontFaces = require(script.FontFaces)
local Types = require(script.Types)
local Weight = require(script.Weight)

local Crayon = {}
Crayon.color = Color
Crayon.weight = Weight

function Crayon.size(fontSize: number): Types.MarkupModifier
	return function(text: string)
		return `<font size="{fontSize}">{text}</font>`
	end
end

function Crayon.face(fontFace: FontFaces.FontFace): Types.MarkupModifier
	return function(text: string)
		local fontFamily: string? = FontFaces[fontFace]
		return `<font family="{if fontFamily then fontFamily else fontFace}">{text}</font>`
	end
end

return Crayon
