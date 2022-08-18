-- Catppuccin tym theme

-- Change the following flavour variable to the color scheme of your choice
-- Available options "latte", "frappe", "macchiato", "mocha".
local flavour = "mocha"

local catppuccin = {
  latte = {
    rosewater = '#DC8A78',
    red = '#D20F39',
    green = '#40A02B',
    yellow = '#DF8E1D',
    blue = '#1E66F5',
    pink = '#EA76CB',
    teal = '#179299',
    text = '#4C4F69',
    subtext1 = '#5C5F77',
    subtext0 = '#6C6F85',
    surface2 = '#ACB0BE',
    surface1 = '#BCC0CC',
    base = '#EFF1F5',
  },
  frappe = {
    rosewater = '#F2D5CF',
    red = '#E78284',
    green = '#A6D189',
    yellow = '#E5C890',
    blue = '#8CAAEE',
    pink = '#F4B8E4',
    teal = '#81C8BE',
    text = '#C6D0F5',
    subtext1 = '#B5BFE2',
    subtext0 = '#A5ADCE',
    surface2 = '#626880',
    surface1 = '#51576D',
    base = '#303446',
  },
  macchiato = {
    rosewater = '#F4DBD6',
    red = '#ED8796',
    green = '#A6DA95',
    yellow = '#EED49F',
    blue = '#8AADF4',
    pink = '#F5BDE6',
    teal = '#8BD5CA',
    text = '#CAD3F5',
    subtext1 = '#B8C0E0',
    subtext0 = '#A5ADCB',
    surface2 = '#5B6078',
    surface1 = '#494D64',
    base = '#24273A',
  },
  mocha = {
    rosewater = '#F5E0DC',
    red = '#F38BA8',
    green = '#A6E3A1',
    yellow = '#F9E2AF',
    blue = '#89B4FA',
    pink = '#F5C2E7',
    teal = '#94E2D5',
    text = '#CDD6F4',
    subtext1 = '#BAC2DE',
    subtext0 = '#A6ADC8',
    surface2 = '#585B70',
    surface1 = '#45475A',
    base = '#1E1E2E',
  },
}

function catppuccin.select(palette)
  local isLatte = palette == "latte"
  return {
    color_background           = catppuccin[palette].base,
    color_foreground           = catppuccin[palette].text,
    color_window_background    = catppuccin[palette].base,
    color_bold                 = catppuccin[palette].text,
    color_cursor               = catppuccin[palette].rosewater,
    color_cursor_foreground    = catppuccin[palette].base,
    color_highlight            = catppuccin[palette].rosewater,
    color_highlight_foreground = catppuccin[palette].base,
    color_0                    = isLatte and catppuccin[palette].subtext1 or catppuccin[palette].surface1, -- black (background)
    color_1                    = catppuccin[palette].red, -- red
    color_2                    = catppuccin[palette].green, -- green
    color_3                    = catppuccin[palette].yellow, -- brown
    color_4                    = catppuccin[palette].blue, -- blue
    color_5                    = catppuccin[palette].pink, -- purple
    color_6                    = catppuccin[palette].teal, -- cyan
    color_7                    = isLatte and catppuccin[palette].surface2 or catppuccin[palette].subtext1, -- light gray (foreground)
    color_8                    = isLatte and catppuccin[palette].subtext0 or catppuccin[palette].surface2, -- gray
    color_9                    = catppuccin[palette].red, -- light red
    color_10                   = catppuccin[palette].green, -- light green
    color_11                   = catppuccin[palette].yellow, -- yellow
    color_12                   = catppuccin[palette].blue, -- light blue
    color_13                   = catppuccin[palette].pink, -- pink
    color_14                   = catppuccin[palette].teal, -- light cyan
    color_15                   = isLatte and catppuccin[palette].surface1 or catppuccin[palette].subtext0, -- white
  }
end

return catppuccin.select(flavour)
