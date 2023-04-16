--[[

    TacoTip Localization: esES

    Translators:

        - Yorkylizado

--]]

if (GetLocale() ~= "esES") then return end
TACOTIP_LOCALE = {
["Player"] = "Jugador",
["Pet"] = "Mascota",
["Target"] = "Objetivo",
["None"] = "Ninguno",
["Self"] = "Sí mismo",
["You"] = "Tú",
["Talents"] = "Talentos",
["Style"] = "Estilo",
["Guild"] = "Hermandad",
["Rank"] = "Rango",
["Level"] = "Nivel",
["Item Level"] = "Nivel de Objeto",
["Left-Click"] = "Click-Izquierdo",
["Middle-Click"] = "Click-Central",
["Right-Click"] = "Click-Derecho",
["Drag to Move"] = "Arrastrar para Mover",
["Change Anchor"] = "Cambiar Ancla",
["Save Position"] = "Guardar Posición",
[" the Kingslayer"] = " el Matarreyes",
["Undead"] = "No-muerto",
["Unit Tooltips"] = "Descripción Emergente de Unidad",
["Class Color"] = "Color de Clase",
["Color class names in tooltips"] = "Color de clase en nombres de la descripción emergente",
["Title"] = "Título",
["Show player's title in tooltips"] = "Mostrar el título del jugador en la descripción emergente",
["Guild Name"] = "Hermandad",
["Show guild name in tooltips"] = "Mostrar el nombre de la hermandad en la descripción emergente",
["Guild Rank"] = "Rango",
["Show guild rank in tooltips"] = "Mostrar el rango de hermandad en la descripción emergente",
["Show talents and specialization in tooltips"] = "Mostrar talentos y especialización en la descripción emergente",
["Show player's GearScore in tooltips"] = "Mostrar el GearScore del jugador en la descripción emergente",
["Show player's PawnScore in tooltips (may affect performance)"] = "Mostrar el PawnScore del jugador en la descripción emergente (puede afectar al rendimiento)",
["requires Pawn"] = "requiere Pawn",
["Show unit's target in tooltips"] = "Mostrar el objetivo de la unidad en la descripción emergente",
["Faction Icon"] = "Icono de Facción",
["Show player's faction icon (Horde/Alliance) in tooltips"] = "Mostrar el icono de facción del jugador (Horda/Alianza) en la descripción emergente",
["PVP Icon"] = "Icono JcJ",
["Show player's pvp flag status as icon instead of text"] = "Mostrar el estado JcJ del jugador como icono en lugar de texto",
["Health Bar"] = "Barra de Salud",
["Show unit's health bar under tooltip"] = "Mostrar la barra de salud de la unidad bajo la descripción emergente",
["Power Bar"] = "Barra de Poder",
["Show unit's power bar under tooltip"] = "Mostrar la barra de poder de la unidad bajo la descripción emergente",
["Character Frame"] = "Marco de Personaje",
["Show GearScore in character frame"] = "Mostrar el GearScore en el marco de personaje",
["Average iLvl"] = "Promedio de iLvl",
["Show Average Item Level in character frame"] = "Muestra el promedio de nivel de objeto en el marco de personaje",
["Lock Position"] = "Bloquear Posición",
["Lock GearScore and Average Item Level positions in character frame"] = "Bloquea la posición del GearScore e iLvl en el marco de personaje",
["Extra"] = "Extra",
["Show Item Level"] = "Mostrar iLvl de Objeto",
["Display item level in the tooltip for certain items."] = "Mostrar el nivel de objeto en la descripción emergente de ciertos objetos.",
["Show Item GearScore"] = "Mostrar GearScore de \nObjeto",
["Show GearScore in item tooltips"] = "Mostrar GearScore en la descripción emergente de los objetos",
["Enhanced Tooltips"] = "Descripciones Mejoradas",
["Disable In Combat"] = "Deshabilitar En Combate",
["Disable gearscore & talents in combat"] = "Deshabilitar gearscore y talentos en combate",
["Chat Class Colors"] = "Colores de Clase en Chat",
["Color names by class in chat windows"] = "Colorear los nombres por clase en las ventanas de chat",
["Instant Fade"] = "Desvanecimiento Instantáneo",
["Fade out unit tooltips instantly"] = "Desvanecer las descripciones emergentes de la unidad instantáneamente",
["Custom Tooltip Position"] = "Posición Personalizada",
["Set a custom position for tooltips"] = "Usar una posición personalizada para las descripciones emergentes",
["Tooltip Style"] = "Estilo de Descripción Emergente",
["FULL"] = "FULL",
["Always FULL"] = "",
["COMPACT/FULL"] = "COMPACT/FULL",
["Default COMPACT, hold SHIFT for FULL"] = "Por defecto COMPACT, mantén SHIFT para FULL",
["COMPACT"] = "COMPACT",
["Always COMPACT"] = "Siempre COMPACT",
["MINI/FULL"] = "MINI/FULL",
["Default MINI, hold SHIFT for FULL"] = "Por defecto MINI, mantén SHIFT para FULL",
["MINI"] = "MINI",
["Always MINI"] = "Siempre MINI",
["Wide, Dual Spec, GearScore, Average iLvl"] = "Ancho, Dual Spec, GearScore, Promedio iLvl",
["Narrow, Active Spec, GearScore"] = "Estrecho, Spec Activa, GearScore",
["Narrow, Active Spec, GearScore, Average iLvl"] = "Estrecho, Spec Activa, GearScore, Promedio iLvl",
["Reset configuration"] = "Reiniciar configuración",
["Configuration has been reset to default."] = "La Configuración se ha reiniciado.",
["Custom tooltip position enabled."] = "Posicón Personalizada habilitada.",
["Custom tooltip position disabled."] = "Posición Personalizada deshabilitada.",
["Custom position anchor set"] = "Posición de ancla personalizada establecida",
["Anchor to Mouse"] = "Anclar al Ratón",
["Anchor tooltips to mouse cursor"] = "Ancla la descripción emergente al cursor del ratón",
["Only in WorldFrame"] = "Solo en Marco de Mundo",
["Anchor to mouse only in WorldFrame\nSkips raid / party frames"] = "Anclar al ratón solo en Marco de Mundo\nSalta marco de banda / grupo",
["Anchor Spells to Mouse"] = "Anclar Hechizos al Ratón",
["Anchor spell tooltips to mouse cursor"] = "Ancla la descripción emergente de los hechizos al cursor del ratón",
["Show Achievement Points"] = "Mostrar Puntos de Logros",
["Show total achievement points in tooltips"] = "Mostrar el total de puntos de logros en las descripciones emergentes",
["Mover"] = "Ancla",
["TEXT_OPT_DESC"] = "Mejores descripciones de jugador - colores de clase, \ntalentos/especialización, gearscore, \nrangos de hermandad",
["TEXT_OPT_UBERTIPS"] = "Mostrar descripciones mejoradas para los hechizos (\"UberTooltips\")",
["TEXT_HELP_MOVER_SHOWN"] = "Se está mostrando el ancla. Arrastra el punto amarillo para mover la descripción emergente. Click-Central para cambiar el ancla. Click-Derecho para guardar.",
["TEXT_HELP_MOVER_SAVED"] = "Posición de descripción emergente personalizada guardada. Ancla ocultada. Escribe '/tacotip custom' para mostrar el ancla de nuevo.",
["TEXT_HELP_ANCHOR"] = "Uso: /tacotip anchor ANCLA. Los valores válidos de ANCLA son TOPLEFT/TOPRIGHT/BOTTOMLEFT/BOTTOMRIGHT/CENTER.",
["TEXT_HELP_WELCOME"] = "por kebabstorm cargado. Suerte en tus aventuras!",
["TEXT_HELP_FIRST_LOGIN"] = "Escribe /tacotip para establecer tus preferencias.",
["TEXT_DLG_CUSTOM_POS_CONFIRM"] = "\nQuieres guardar la posición personalizada de la descripción emergente o restablecerla?\n\n",
["FORMAT_GUILD_RANK_1"] = "%s de <%s>",
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
