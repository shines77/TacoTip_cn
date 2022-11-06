
local CI = LibStub("LibClassicInspector")
local isDebugMode = true

--
-- About texture string format
--
-- See: https://wowwiki-archive.fandom.com/wiki/UI_escape_sequences
--
-- |TTexturePath:size1:size2:xoffset:yoffset|t
-- |TTexturePath:size1:size2:xoffset:yoffset:dimx:dimy:coordx1:coordx2:coordy1:coordy2|t
--

--
-- See: https://www.wowinterface.com/forums/showthread.php?t=46189
--
--[[
  --classes
  --warrior
  tinsert(icons, "|TInterface\\WorldStateFrame\\ICONS-CLASSES:14:14:0:0:256:256:0:64:0:64|t")

  --mage
  tinsert(icons, "|TInterface\\WorldStateFrame\\ICONS-CLASSES:14:14:0:0:256:256:64:128:0:64|t")

  --rogue
  tinsert(icons, "|TInterface\\WorldStateFrame\\ICONS-CLASSES:14:14:0:0:256:256:128:196:0:64|t")

  --druid
  tinsert(icons, "|TInterface\\WorldStateFrame\\ICONS-CLASSES:14:14:0:0:256:256:196:256:0:64|t")

  --hunter
  tinsert(icons, "|TInterface\\WorldStateFrame\\ICONS-CLASSES:14:14:0:0:256:256:0:64:64:128|t")

  --shaman
  tinsert(icons, "|TInterface\\WorldStateFrame\\ICONS-CLASSES:14:14:0:0:256:256:64:128:64:128|t")

  --priest
  tinsert(icons, "|TInterface\\WorldStateFrame\\ICONS-CLASSES:14:14:0:0:256:256:128:196:64:128|t")

  --warlock
  tinsert(icons, "|TInterface\\WorldStateFrame\\ICONS-CLASSES:14:14:0:0:256:256:196:256:64:128|t")

  --paladin
  tinsert(icons, "|TInterface\\WorldStateFrame\\ICONS-CLASSES:14:14:0:0:256:256:0:64:128:196|t")

  --deathknight
  tinsert(icons, "|TInterface\\WorldStateFrame\\ICONS-CLASSES:14:14:0:0:256:256:64:128:128:196|t")

  --monk
  tinsert(icons, "|TInterface\\WorldStateFrame\\ICONS-CLASSES:14:14:0:0:256:256:128:196:128:196|t")
--]]

local CLASS_ICON_TEXTURES = CLASS_ICON_TEXTURES or {}
local CLASS_ICON_TEXTURES_BIG = CLASS_ICON_TEXTURES_BIG or {}

local CLASS_ICON_TEXTURES_16x16 = {
    ["WARRIOR"]     = "|TInterface\\WorldStateFrame\\ICONS-CLASSES:16:16:0:0:256:256:0:64:0:64|t",
    ["MAGE"]        = "|TInterface\\WorldStateFrame\\ICONS-CLASSES:16:16:0:0:256:256:64:128:0:64|t",
    ["ROGUE"]       = "|TInterface\\WorldStateFrame\\ICONS-CLASSES:16:16:0:0:256:256:128:196:0:64|t",
    ["DRUID"]       = "|TInterface\\WorldStateFrame\\ICONS-CLASSES:16:16:0:0:256:256:196:256:0:64|t",
    ["HUNTER"]      = "|TInterface\\WorldStateFrame\\ICONS-CLASSES:16:16:0:0:256:256:0:64:64:128|t",
    ["SHAMAN"]      = "|TInterface\\WorldStateFrame\\ICONS-CLASSES:16:16:0:0:256:256:64:128:64:128|t",
    ["PRIEST"]      = "|TInterface\\WorldStateFrame\\ICONS-CLASSES:16:16:0:0:256:256:128:196:64:128|t",
    ["WARLOCK"]     = "|TInterface\\WorldStateFrame\\ICONS-CLASSES:16:16:0:0:256:256:196:256:64:128|t",
    ["PALADIN"]     = "|TInterface\\WorldStateFrame\\ICONS-CLASSES:16:16:0:0:256:256:0:64:128:196|t",
    ["DEATHKNIGHT"] = "|TInterface\\WorldStateFrame\\ICONS-CLASSES:16:16:0:0:256:256:64:128:128:196|t",
    ["MONK"]        = "|TInterface\\WorldStateFrame\\ICONS-CLASSES:16:16:0:0:256:256:128:196:128:196|t",
}

local CLASS_ICON_COORDS_FIX = {
    ["WARRIOR"]     = { xoffset = -5, yoffset = 3},
    ["MAGE"]        = { xoffset = -4, yoffset = 1},
    ["ROGUE"]       = { xoffset = -5, yoffset = 1},
    ["DRUID"]       = { xoffset = -3, yoffset = -1},
    ["HUNTER"]      = { xoffset = -6, yoffset = 3},
    ["SHAMAN"]      = { xoffset = -4, yoffset = 0},
    ["PRIEST"]      = { xoffset = -5, yoffset = 4},
    ["WARLOCK"]     = { xoffset = -3, yoffset = 2},
    ["PALADIN"]     = { xoffset = -4, yoffset = 1},
    ["DEATHKNIGHT"] = { xoffset = -4, yoffset = 2},
    ["MONK"]        = { xoffset = -3, yoffset = 1},
}

-- Indent chars define, default is 2 space char
local INDENT_STR = "  "

function table_len(tab)
    local length = 0
    for k, v in pairs(tab) do
        length = length + 1
    end
    return length
end

local function kv_to_string(obj)
    local str
    if type(obj) == 'string' then
        str = '"'..obj..'"'
    elseif type(obj) == 'nil' then
        str = '<nil>'
    elseif type(obj) == 'table' then
        -- Error
        str = ""
    else
        -- number, boolean, function ....
        str = tostring(obj)
    end
    return str
end

local function dump_sub_table(obj, depth)
    depth = depth or 0
    if type(obj) == 'table' then
        local indent = string.rep(INDENT_STR, depth)
        local sb = {}
        table.insert(sb, "{\n")
        local key, value
        for k, v in pairs(obj) do
            if type(k) == 'string' then
                key = '"'..k..'"'
            elseif type(k) == 'table' then
                key = dump_sub_table(k, depth + 1)
            elseif type(k) == 'nil' then
                key = '<nil>'
            else
                -- number, boolean, function ....
                key = tostring(k)
            end
            value = dump_sub_table(v, depth + 1)
            table.insert(sb, indent .. INDENT_STR .. '['..key..'] = ' .. value .. ',\n')
        end
        table.insert(sb, indent .. "}")
        return table.concat(sb)
    else
        return kv_to_string(obj)
    end
end

local function dump_table(obj)
    if type(obj) == 'table' then
        local sb = {}
        table.insert(sb, "."..INDENT_STR .. "{\n")
        local key, value
        for k, v in pairs(obj) do
            if type(k) == 'string' then
                key = '"'..k..'"'
            elseif type(k) == 'table' then
                key = dump_sub_table(k, 1)
            elseif type(k) == 'nil' then
                key = '<nil>'
            else
                -- number, boolean, function ....
                key = tostring(k)
            end
            value = dump_sub_table(v, 1)
            table.insert(sb, INDENT_STR .. '['..key..'] = ' .. value .. ',\n')
        end
        table.insert(sb, "}\n")
        return table.concat(sb)
    else
        return kv_to_string(obj)
    end
end

--
-- See: http://lua-users.org/wiki/TableSerialization
--
local function to_string(obj)
    local str
    if type(obj) == 'string' then
        str = obj
    elseif type(obj) == 'nil' then
        str = '<nil>'
    elseif type(obj) == 'table' then
        str = dump_table(obj)
    else
        str = tostring(obj)
    end
    return str
end

function TT_DebugPrint(var)
    if (isDebugMode) then
        local text = to_string(var)
        print(text)
    end
end

local function test_print_table()
    print(to_string({
        "Lua",
        user = "Mariacher",
        {
            {
                co = coroutine.create(function() end),
                {
                    number = 12345.6789
                }
            },
            func = function() end
        },
        boolt = true
    }))
end

local function round_coord(val)
    --return math.floor((val + 63.0) / 64.0) * 64
    return math.floor(val * 1000.0 + 0.5) / 1000.0
end

function TacoTip_InitClassIconTextures(width, height, bigWidth, bigHeight)
    width = width or 16
    height = height or 16
    bigWidth = bigWidth or width or 18
    bigHeight = bigHeight or height or 18
    if (CLASS_ICON_TEXTURES ~= nil) and (table_len(CLASS_ICON_TEXTURES) == 0) then
        --TT_DebugPrint("#CLASS_ICON_TEXTURES = "..table_len(CLASS_ICON_TEXTURES))
        local classColors = (CUSTOM_CLASS_COLORS or RAID_CLASS_COLORS)
        if (classColors) then
            --TT_DebugPrint("#classColors = "..table_len(classColors))
            --TT_DebugPrint(classColors)
            for class, v in pairs(classColors) do
                --TT_DebugPrint("class = "..class)
                local iconCoord = class and CLASS_ICON_TCOORDS[class]
                if (iconCoord) then
                    local xoffset, yoffset
                    local iconCoordFix = CLASS_ICON_COORDS_FIX[class]
                    if iconCoordFix then
                        xoffset = iconCoordFix.xoffset
                        yoffset = iconCoordFix.yoffset
                    else
                        xoffset = -3
                        yoffset = 1
                    end
                    local iconCoord_x1, iconCoord_x2, iconCoord_y1, iconCoord_y2
                    iconCoord_x1 = round_coord(iconCoord[1] * 255.0) + xoffset
                    iconCoord_x2 = round_coord(iconCoord[2] * 255.0) + xoffset
                    iconCoord_y1 = round_coord(iconCoord[3] * 255.0) + yoffset
                    iconCoord_y2 = round_coord(iconCoord[4] * 255.0) + yoffset
                    local iconTexture = string.format("|TInterface\\WorldStateFrame\\ICONS-CLASSES:%d:%d:0:0:256:256:%0.3f:%0.3f:%0.3f:%0.3f|t", width, height, iconCoord_x1, iconCoord_x2, iconCoord_y1, iconCoord_y2)
                    CLASS_ICON_TEXTURES[class] = iconTexture
                    local bigIconTexture = string.format("|TInterface\\WorldStateFrame\\ICONS-CLASSES:%d:%d:0:0:256:256:%0.3f:%0.3f:%0.3f:%0.3f|t", bigWidth, bigHeight, iconCoord_x1, iconCoord_x2, iconCoord_y1, iconCoord_y2)
                    CLASS_ICON_TEXTURES_BIG[class] = bigIconTexture
                end
            end
        end
    end
    --TT_DebugPrint("CLASS_ICON_TEXTURES = ["..table_len(CLASS_ICON_TEXTURES).."]")
    --TT_DebugPrint(CLASS_ICON_TEXTURES)
    --TT_DebugPrint(CLASS_ICON_TEXTURES_16x16)
end

function TacoTip_GetClassIconTexture(class)
    if (CLASS_ICON_TEXTURES ~= nil) and (table_len(CLASS_ICON_TEXTURES) ~= 0) then
        return CLASS_ICON_TEXTURES[class]
    else
        return nil
    end
end

function TT_GetTalentNameColor(class, tabIndex, classColor, localized, disable)
    local talentName
    if class then
        if (not disable) then
            talentName = CI:GetSpecializationNameWithColor(class, tabIndex, classColor, localized)
        else
            talentName = "|cFF808080"..CI:GetSpecializationName(class, tabIndex).."|r"
        end
    else
        talentName = CI:GetSpecializationName(class, tabIndex, localized)
    end
    return talentName
end
