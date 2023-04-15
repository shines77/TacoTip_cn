--[[

    TacoTip Localization: enUS / enGB

--]]

if (not TACOTIP_LOCALE) then
TACOTIP_LOCALE = {
["Player"] = "Player",
["Pet"] = "Pet",
["Target"] = "Target",
["None"] = "None",
["Self"] = "Self",
["You"] = "You",
["Talents"] = "Talents",
["Style"] = "Style",
["Guild"] = "Guild",
["Rank"] = "Rank",
["Level"] = "Level",
["Item Level"] = "Item Level",
["Left-Click"] = "Left-Click",
["Middle-Click"] = "Middle-Click",
["Right-Click"] = "Right-Click",
["Drag to Move"] = "Drag to Move",
["Change Anchor"] = "Change Anchor",
["Save Position"] = "Save Position",
[" the Kingslayer"] = " the Kingslayer",
["Undead"] = "Undead",
["Unit Tooltips"] = "Unit Tooltips",
["Class Color"] = "Class Color",
["Color class names in tooltips"] = "Color class names in tooltips",
["Title"] = "Title",
["Show player's title in tooltips"] = "Show player's title in tooltips",
["Guild Name"] = "Guild Name",
["Show guild name in tooltips"] = "Show guild name in tooltips",
["Guild Rank"] = "Guild Rank",
["Show guild rank in tooltips"] = "Show guild rank in tooltips",
["No Guild"] = "暂无公会",
["Show talents and specialization in tooltips"] = "Show talents and specialization in tooltips",
["Show player's GearScore in tooltips"] = "Show player's GearScore in tooltips",
["Show player's PawnScore in tooltips (may affect performance)"] = "Show player's PawnScore in tooltips (may affect performance)",
["requires Pawn"] = "requires Pawn",
["Show unit's target in tooltips"] = "Show unit's target in tooltips",
["Class Icon"] = "Class Icon",
["Show player's classs icon in tooltips"] = "Show player's classs icon in tooltips",
["Faction Icon"] = "Faction Icon",
["Show player's faction icon (Horde/Alliance) in tooltips"] = "Show player's faction icon (Horde/Alliance) in tooltips",
["PVP Icon"] = "PVP Icon",
["Show player's pvp flag status as icon instead of text"] = "Show player's pvp flag status as icon instead of text",
["Health Bar"] = "Health Bar",
["Show unit's health bar under tooltip"] = "Show unit's health bar under tooltip",
["Power Bar"] = "Power Bar",
["Show unit's power bar under tooltip"] = "Show unit's power bar under tooltip",
["Character Frame"] = "Character Frame",
["Show GearScore in character frame"] = "Show GearScore in character frame",
["Average iLvl"] = "Average iLvl",
["Show Average Item Level in character frame"] = "Show Average Item Level in character frame",
["Lock Position"] = "Lock Position",
["Lock GearScore and Average Item Level positions in character frame"] = "Lock GearScore and Average Item Level positions in character frame",
["Extra"] = "Extra",
["Show Item Level"] = "Show Item Level",
["Display item level in the tooltip for certain items."] = "Display item level in the tooltip for certain items.",
["Show Item GearScore"] = "Show Item GearScore",
["Show GearScore in item tooltips"] = "Show GearScore in item tooltips",
["Enhanced Tooltips"] = "Enhanced Tooltips",
["Disable In Combat"] = "Disable In Combat",
["Disable gearscore & talents in combat"] = "Disable gearscore & talents in combat",
["Chat Class Colors"] = "Chat Class Colors",
["Color names by class in chat windows"] = "Color names by class in chat windows",
["Instant Fade"] = "Instant Fade",
["Fade out unit tooltips instantly"] = "Fade out unit tooltips instantly",
["Custom Tooltip Position"] = "Custom Tooltip Position",
["Set a custom position for tooltips"] = "Set a custom position for tooltips",
["Tooltip Style"] = "Tooltip Style",
["FULL"] = "FULL",
["Always FULL"] = "",
["COMPACT/FULL"] = "COMPACT/FULL",
["Default COMPACT, hold SHIFT for FULL"] = "Default COMPACT, hold SHIFT for FULL",
["COMPACT"] = "COMPACT",
["Always COMPACT"] = "Always COMPACT",
["MINI/FULL"] = "MINI/FULL",
["Default MINI, hold SHIFT for FULL"] = "Default MINI, hold SHIFT for FULL",
["MINI"] = "MINI",
["Always MINI"] = "Always MINI",
["Wide, Dual Spec, GearScore, Average iLvl"] = "Wide, Dual Spec, GearScore, Average iLvl",
["Narrow, Active Spec, GearScore"] = "Narrow, Active Spec, GearScore",
["Narrow, Active Spec, GearScore, Average iLvl"] = "Narrow, Active Spec, GearScore, Average iLvl",
["Reset configuration"] = "Reset configuration",
["Configuration has been reset to default."] = "Configuration has been reset to default.",
["Mover"] = "Mover",
["Custom tooltip position enabled."] = "Custom tooltip position enabled.",
["Custom tooltip position disabled."] = "Custom tooltip position disabled.",
["Tooltip position reset to default."] = "Tooltip position reset to default.",
["Custom position anchor set"] = "Custom position anchor set",
["Anchor to Mouse"] = "Anchor to Mouse",
["Anchor tooltips to mouse cursor"] = "Anchor tooltips to mouse cursor",
["Only in WorldFrame"] = "Only in WorldFrame",
["Anchor to mouse only in WorldFrame\nSkips raid / party frames"] = "Anchor to mouse only in WorldFrame\nSkips raid / party frames",
["Anchor Spells to Mouse"] = "Anchor Spells to Mouse",
["Anchor spell tooltips to mouse cursor"] = "Anchor spell tooltips to mouse cursor",
["Show Achievement Points"] = "Show Achievement Points",
["Show total achievement points in tooltips"] = "Show total achievement points in tooltips",
["TEXT_OPT_DESC"] = "Better player tooltips - class colors, talents/specialization,\n     gearscore, guild ranks",
["TEXT_OPT_UBERTIPS"] = "Show enhanced tooltips for spells (\"UberTooltips\")",
["TEXT_HELP_MOVER_SHOWN"] = "Mover is shown. Drag the yellow dot to move the tooltip. Middle-Click to change anchor. Right-Click to save.",
["TEXT_HELP_MOVER_SAVED"] = "Custom tooltip position saved. Mover hidden. Type '/tacotip custom' to show mover again.",
["TEXT_HELP_ANCHOR"] = "Usage: /tacotip anchor ANCHOR. Valid ANCHOR values are TOPLEFT/TOPRIGHT/BOTTOMLEFT/BOTTOMRIGHT/CENTER.",
["TEXT_HELP_WELCOME"] = "by kebabstorm loaded. Safe travels!",
["TEXT_HELP_FIRST_LOGIN"] = "Type /tacotip to set up your preferences.",
["TEXT_DLG_CUSTOM_POS_CONFIRM"] = "\nDo you want to save custom tooltip position or reset back to default?\n\n",
["FORMAT_GUILD_RANK_1"] = "%s of <%s>",
["CHARACTER_FRAME_GS_TITLE_FONT"] = "Fonts\\FRIZQT__.TTF",
["CHARACTER_FRAME_GS_TITLE_FONT_SIZE"] = 10,
["CHARACTER_FRAME_GS_TITLE_XPOS"] = 72,
["CHARACTER_FRAME_GS_TITLE_YPOS"] = 248,
["CHARACTER_FRAME_GS_VALUE_FONT"] = "Fonts\\FRIZQT__.TTF",
["CHARACTER_FRAME_GS_VALUE_FONT_SIZE"] = 10,
["CHARACTER_FRAME_GS_VALUE_XPOS"] = 72,
["CHARACTER_FRAME_GS_VALUE_YPOS"] = 260,
["CHARACTER_FRAME_ILVL_TITLE_FONT"] = "Fonts\\FRIZQT__.TTF",
["CHARACTER_FRAME_ILVL_TITLE_FONT_SIZE"] = 10,
["CHARACTER_FRAME_ILVL_TITLE_XPOS"] = 270,
["CHARACTER_FRAME_ILVL_TITLE_YPOS"] = 248,
["CHARACTER_FRAME_ILVL_VALUE_FONT"] = "Fonts\\FRIZQT__.TTF",
["CHARACTER_FRAME_ILVL_VALUE_FONT_SIZE"] = 10,
["CHARACTER_FRAME_ILVL_VALUE_XPOS"] = 270,
["CHARACTER_FRAME_ILVL_VALUE_YPOS"] = 260,
["INSPECT_FRAME_GS_TITLE_FONT"] = "Fonts\\FRIZQT__.TTF",
["INSPECT_FRAME_GS_TITLE_FONT_SIZE"] = 10,
["INSPECT_FRAME_GS_TITLE_XPOS"] = 72,
["INSPECT_FRAME_GS_TITLE_YPOS"] = 141,
["INSPECT_FRAME_GS_VALUE_FONT"] = "Fonts\\FRIZQT__.TTF",
["INSPECT_FRAME_GS_VALUE_FONT_SIZE"] = 10,
["INSPECT_FRAME_GS_VALUE_XPOS"] = 72,
["INSPECT_FRAME_GS_VALUE_YPOS"] = 153,
["INSPECT_FRAME_ILVL_TITLE_FONT"] = "Fonts\\FRIZQT__.TTF",
["INSPECT_FRAME_ILVL_TITLE_FONT_SIZE"] = 10,
["INSPECT_FRAME_ILVL_TITLE_XPOS"] = 270,
["INSPECT_FRAME_ILVL_TITLE_YPOS"] = 141,
["INSPECT_FRAME_ILVL_VALUE_FONT"] = "Fonts\\FRIZQT__.TTF",
["INSPECT_FRAME_ILVL_VALUE_FONT_SIZE"] = 10,
["INSPECT_FRAME_ILVL_VALUE_XPOS"] = 270,
["INSPECT_FRAME_ILVL_VALUE_YPOS"] = 153,
}
end