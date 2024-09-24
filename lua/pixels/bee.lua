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
local M = {}
M.map = color_map
M.colors = colors
return M
