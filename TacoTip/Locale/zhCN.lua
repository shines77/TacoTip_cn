--[[

    TacoTip Localization: zhCN

    Translators:
--]]
if (GetLocale() ~= "zhCN") then return end
TACOTIP_LOCALE = {
["Player"] = "玩家",
["Pet"] = "宠物",
["Target"] = "目标",
["None"] = "<无>",
["Self"] = "自己",
["You"] = "<你>",
["Talents"] = "天赋",
["Style"] = "风格",
["Guild"] = "公会",
["Rank"] = "会阶",
["Level"] = "等级",
["Item Level"] = "装备等级",
["Left-Click"] = "点击鼠标左键",
["Middle-Click"] = "点击鼠标中键",
["Right-Click"] = "点击鼠标右键",
["Drag to Move"] = "拖动",
["Change Anchor"] = "改变锚点类型",
["Save Position"] = "保存位置",
[" the Kingslayer"] = " 弑君者",
["Undead"] = "亡灵",
["Unit Tooltips"] = "鼠标提示框",
["Class Color"] = "职业颜色",
["Color class names in tooltips"] = "姓名按职业着色",
["Title"] = "头衔",
["Show player's title in tooltips"] = "显示玩家头衔",
["Guild Name"] = "公会名",
["Show guild name in tooltips"] = "显示玩家公会名称",
["Guild Rank"] = "公会会阶",
["Show guild rank in tooltips"] = "显示玩家公会会阶",
["No Guild"] = "暂无公会",
["Show talents and specialization in tooltips"] = "显示玩家天赋和专精",
["Show player's GearScore in tooltips"] = "显示玩家GearScore分数",
["Show player's PawnScore in tooltips (may affect performance)"] = "显示玩家PawnScore分数 (可能影响性能)",
["requires Pawn"] = "依赖 Pawn 插件",
["Show unit's target in tooltips"] = "显示玩家当前目标",
["Class Icon"] = "职业图标",
["Show player's classs icon in tooltips"] = "显示玩家的职业图标",
["Faction Icon"] = "阵营图标",
["Show player's faction icon (Horde/Alliance) in tooltips"] = "显示玩家阵营图标 (部落/联盟)",
["PVP Icon"] = "PVP 图标",
["Show player's pvp flag status as icon instead of text"] = "将玩家的PVP状态显示为图标，而不是文字",
["Health Bar"] = "生命条",
["Show unit's health bar under tooltip"] = "在鼠标提示框底部显示单位的生命条",
["Power Bar"] = "能量条",
["Show unit's power bar under tooltip"] = "在鼠标提示框底部显示单位的能量条",
["Character Frame"] = "角色信息面板",
["Show GearScore in character frame"] = "在角色信息面板显示GearScore评分",
["Average iLvl"] = "平均装等",
["Show Average Item Level in character frame"] = "在角色信息面板显示玩家装备的平均等级",
["Lock Position"] = "锁定位置",
["Lock GearScore and Average Item Level positions in character frame"] = "锁定角色信息面板中的GearScore和平均装等位置",
["Extra"] = "附加功能",
["Show Item Level"] = "显示物品等级",
["Display item level in the tooltip for certain items."] = "在物品的鼠标提示框中显示物品等级",
["Show Item GearScore"] = "显示物品GS评分",
["Show GearScore in item tooltips"] = "在物品的鼠标提示框中显示GS评分",
["Enhanced Tooltips"] = "增强型技能提示",
["Disable In Combat"] = "战斗中禁用",
["Disable gearscore & talents in combat"] = "战斗中禁止显示GS评分和天赋信息",
["Chat Class Colors"] = "聊天职业着色",
["Color names by class in chat windows"] = "玩家姓名在聊天窗口按职业着色",
["Instant Fade"] = "即刻淡入淡出",
["Fade out unit tooltips instantly"] = "即刻淡入淡出鼠标提示框",
["Custom Tooltip Position"] = "自定义鼠标提示框位置",
["Set a custom position for tooltips"] = "为鼠标提示框设置自定义位置",
["Tooltip Style"] = "鼠标提示信息的样式",
["FULL"] = "完整",
["Always FULL"] = "总是完全显示",
["COMPACT/FULL"] = "紧凑/完整",
["Default COMPACT, hold SHIFT for FULL"] = "默认为紧凑型，按住SHIFT键显示完整型",
["COMPACT"] = "紧凑",
["Always COMPACT"] = "总是为紧凑型",
["MINI/FULL"] = "简洁/完整",
["Default MINI, hold SHIFT for FULL"] = "默认为简洁型, 按住SHIFT键显示完整型",
["MINI"] = "简洁",
["Always MINI"] = "总是为简洁型",
["Wide, Dual Spec, GearScore, Average iLvl"] = "宽幅, 两倍大小, GearScore, 平均装等",
["Narrow, Active Spec, GearScore"] = "狭窄, 自适应大小, GearScore",
["Narrow, Active Spec, GearScore, Average iLvl"] = "狭窄, 自适应大小, GearScore, 平均装等",
["Reset configuration"] = "恢复默认配置",
["Configuration has been reset to default."] = "配置已被重置为默认值.",
["Mover"] = "定位器",
["Custom tooltip position enabled."] = "自定义鼠标提示框位置：已启用",
["Custom tooltip position disabled."] = "自定义鼠标提示框位置：已禁用",
["Tooltip position reset to default."] = "自定义鼠标提示框位置恢复为默认位置.",
["Custom position anchor set"] = "自定义位置锚点设置",
["Anchor to Mouse"] = "跟随鼠标",
["Anchor tooltips to mouse cursor"] = "鼠标提示框跟随鼠标的当前位置",
["Only in WorldFrame"] = "仅在世界框架跟随鼠标",
["Anchor to mouse only in WorldFrame\nSkips raid / party frames"] = "仅在世界框架跟随鼠标，\n跳过队伍/团队框架",
["Anchor Spells to Mouse"] = "法术提示跟随鼠标",
["Anchor spell tooltips to mouse cursor"] = "技能、法术提示跟随鼠标",
["Show Achievement Points"] = "显示成就点",
["Show total achievement points in tooltips"] = "在鼠标提示框中显示总成就点数",
["TEXT_OPT_DESC"] = "强大的鼠标提示插件 \n--职业着色, 天赋/专精, GearScore, 公会会阶 等信息",
["TEXT_OPT_UBERTIPS"] = "为法术提供增强提示 (\"技能栏法术提示\")",
["TEXT_HELP_WELCOME"] = "by kebabstorm loaded, 汉化 by (司马云信-辛迪加).",
["TEXT_HELP_FIRST_LOGIN"] = "Type /tacotip to set up your preferences.",
["TEXT_HELP_MOVER_SHOWN"] = "鼠标提示定位器 已显示。拖动黄点来移动鼠标提示定位器，点击中键来改变锚点类型，点击右键以保存设置",
["TEXT_HELP_MOVER_SAVED"] = "鼠标提示框位置 已保存，鼠标提示定位器被隐藏。输入 '/tacotip custom' 重新显示 鼠标提示定位器.",
["TEXT_HELP_ANCHOR"] = "使用命令: /tacotip anchor [ANCHOR]. 有效的 [ANCHOR] 锚点值是：TOPLEFT/TOPRIGHT/BOTTOMLEFT/BOTTOMRIGHT/CENTER - (左上/右上/左下/右下/居中).",
["TEXT_DLG_CUSTOM_POS_CONFIRM"] = "\n你想保存鼠标提示框的当前自定义位置还是重置为默认位置？\n\n",
["FORMAT_GUILD_RANK_1"] = "%s - <%s>",
["CHARACTER_FRAME_GS_TITLE_FONT"] = "Fonts\\FRIZQT__.TTF",
["CHARACTER_FRAME_GS_TITLE_FONT_SIZE"] = 11,
["CHARACTER_FRAME_GS_TITLE_XPOS"] = 72,
["CHARACTER_FRAME_GS_TITLE_YPOS"] = 335,
["CHARACTER_FRAME_GS_VALUE_FONT"] = "Fonts\\FRIZQT__.TTF",
["CHARACTER_FRAME_GS_VALUE_FONT_SIZE"] = 14,
["CHARACTER_FRAME_GS_VALUE_XPOS"] = 72,
["CHARACTER_FRAME_GS_VALUE_YPOS"] = (335 + 12),
["CHARACTER_FRAME_ILVL_TITLE_FONT"] = "Fonts\\FRIZQT__.TTF",
["CHARACTER_FRAME_ILVL_TITLE_FONT_SIZE"] = 11,
["CHARACTER_FRAME_ILVL_TITLE_XPOS"] = 72,
["CHARACTER_FRAME_ILVL_TITLE_YPOS"] = (335 - 40),
["CHARACTER_FRAME_ILVL_VALUE_FONT"] = "Fonts\\FRIZQT__.TTF",
["CHARACTER_FRAME_ILVL_VALUE_FONT_SIZE"] = 14,
["CHARACTER_FRAME_ILVL_VALUE_XPOS"] = 72,
["CHARACTER_FRAME_ILVL_VALUE_YPOS"] = (335 + 12) - 40,
["INSPECT_FRAME_GS_TITLE_FONT"] = "Fonts\\FRIZQT__.TTF",
["INSPECT_FRAME_GS_TITLE_FONT_SIZE"] = 11,
["INSPECT_FRAME_GS_TITLE_XPOS"] = 72,
["INSPECT_FRAME_GS_TITLE_YPOS"] = 287,
["INSPECT_FRAME_GS_VALUE_FONT"] = "Fonts\\FRIZQT__.TTF",
["INSPECT_FRAME_GS_VALUE_FONT_SIZE"] = 14,
["INSPECT_FRAME_GS_VALUE_XPOS"] = 72,
["INSPECT_FRAME_GS_VALUE_YPOS"] = (287 + 12),
["INSPECT_FRAME_ILVL_TITLE_FONT"] = "Fonts\\FRIZQT__.TTF",
["INSPECT_FRAME_ILVL_TITLE_FONT_SIZE"] = 11,
["INSPECT_FRAME_ILVL_TITLE_XPOS"] = 72,
["INSPECT_FRAME_ILVL_TITLE_YPOS"] = (287 - 40),
["INSPECT_FRAME_ILVL_VALUE_FONT"] = "Fonts\\FRIZQT__.TTF",
["INSPECT_FRAME_ILVL_VALUE_FONT_SIZE"] = 14,
["INSPECT_FRAME_ILVL_VALUE_XPOS"] = 72,
["INSPECT_FRAME_ILVL_VALUE_YPOS"] = (287 + 12) - 40,
}
