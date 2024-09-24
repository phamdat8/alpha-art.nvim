local function getLen(str, start_pos)
	local byte = string.byte(str, start_pos)
	if not byte then
		return nil
	end
	return (byte < 0x80 and 1) or (byte < 0xE0 and 2) or (byte < 0xF0 and 3) or (byte < 0xF8 and 4) or 1
end

local function colorize(header, header_color_map, colors)
	for letter, color in pairs(colors) do
		local color_name = "AlphaJemuelKwelKwelWalangTatay" .. letter
		vim.api.nvim_set_hl(0, color_name, color)
		colors[letter] = color_name
	end

	local colorized = {}

	for i, line in ipairs(header_color_map) do
		local colorized_line = {}
		local pos = 0

		for j = 1, #line do
			local start = pos
			pos = pos + getLen(header[i], start + 1)

			local color_name = colors[line:sub(j, j)]
			if color_name then
				table.insert(colorized_line, { color_name, start, pos })
			end
		end

		table.insert(colorized, colorized_line)
	end

	return colorized
end

local M = {}

local color_map = {
	[[      AAAA]],
	[[AAAAAA  AAAA]],
	[[AA    AAAA  AAAA        KKHHKKHHHH]],
	[[AAAA    AAAA  AA    HHBBKKKKKKKKKKKKKK]],
	[[  AAAAAA      AAKKBBHHKKBBYYBBKKKKHHKKKKKK]],
	[[      AAAA  BBAAKKHHBBBBKKKKBBYYBBHHHHKKKKKK]],
	[[        BBAABBKKYYYYHHKKYYYYKKKKBBBBBBZZZZZZ]],
	[[    YYBBYYBBKKYYYYYYYYYYKKKKBBKKAAAAZZOOZZZZ]],
	[[    XXXXYYYYBBYYYYYYYYBBBBBBKKKKBBBBAAAAZZZZ]],
	[[    XXXXUUUUYYYYBBYYYYYYBBKKBBZZOOAAZZOOAAAAAA]],
	[[  ZZZZZZXXUUXXXXYYYYYYYYBBAAAAZZOOOOAAOOZZZZAAAA]],
	[[  ZZUUZZXXUUUUXXXXUUXXFFFFFFFFAAAAOOZZAAZZZZ  AA]],
	[[    RRRRUUUUZZZZZZZZXXOOFFFFOOZZOOAAAAAAZZZZAA]],
	[[    CCSSUUUUZZXXXXZZXXOOFFFFOOZZOOOOZZOOAAAA]],
	[[    CCCCUUUUUUUUUURRRROOFFFFOOZZOOOOZZOOZZZZ]],
	[[    CCCCUUUUUUUUSSCCCCEEQQQQOOZZOOOOZZOOZZZZ]],
	[[    CCCCUUGGUUUUCCCCCCEEQQQQOOZZOOOOZZEEZZ]],
	[[    RRRRGGGGUUGGCCCCCCOOOOOOOOZZOOEEZZII]],
	[[      IIRRGGGGGGCCCCCCOOOOOOOOZZEEII]],
	[[            GGRRCCCCCCOOOOEEEEII  II]],
	[[                RRRRRREEEE  IIII]],
	[[                      II]],
	[[]],
}

local yellow = "#FAC87C"
local orange = "#BF854E"
local maroon = "#502E2B"
local brown = "#38291B"
local colors = {
	["A"] = { fg = "#FFFFFF" },
	["Y"] = { fg = yellow },
	["B"] = { fg = "#f9c06a" },
	["X"] = { fg = "#f7aa34" },
	["U"] = { fg = "#f7a222" },
	["F"] = { fg = "#ea9109" },
	["O"] = { fg = "#c67b08" },
	["K"] = { fg = maroon },
	["H"] = { fg = "#492a27" },
	["Z"] = { fg = "#000000" },
	["G"] = { fg = "#f7a222" },
	["R"] = { fg = orange },
	["Q"] = { fg = "#9e6a39" },
	["E"] = { fg = "#80562e" },
	["I"] = { fg = brown },
	["C"] = { fg = "#000000" },
	["S"] = { fg = "#8C9EFF" },
}

local header = {}
for _, line in ipairs(color_map) do
	local header_line = [[]]
	for i = 1, #line do
		if line:sub(i, i) ~= " " then
			header_line = header_line .. "█"
		else
			header_line = header_line .. " "
		end
	end
	table.insert(header, header_line)
end

local colorized = colorize(header, color_map, colors)

M.art.header = header
M.art.colorized = colorized

return M
