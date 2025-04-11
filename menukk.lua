-- filename: 
-- version: luajit2
-- line: [0, 0] id: 0
require("lib.moonloader")
local r0_0 = require("imgui")
local r1_0 = require("lib.samp.events")
local r2_0 = require("memory")
local r3_0 = require("vkeys")
local r4_0 = require("inicfg")
local r5_0 = require("encoding")
r5_0.default = "CP1251"
u8 = r5_0.UTF8
local r6_0 = require("ffi")
local r7_0 = r6_0.cast("int (__thiscall*)(void*, float*, int, bool)", 6177408)
anims = {
  nil,
  "DAM_armL_frmBK",
  "DAM_armL_frmFT",
  "DAM_armL_frmLT",
  "DAM_armR_frmBK",
  "DAM_armR_frmFT",
  "DAM_armR_frmRT",
  "DAM_LegL_frmBK",
  "DAM_LegL_frmFT",
  "DAM_LegL_frmLT",
  "DAM_LegR_frmBK",
  "DAM_LegR_frmFT",
  "DAM_LegR_frmRT",
  "DAM_stomach_frmBK",
  "DAM_stomach_frmFT",
  "DAM_stomach_frmLT",
  "DAM_stomach_frmRT"
}
siteAnims = {
  nil,
  "GUN_STAND",
  "GUNMOVE_L",
  "GUNMOVE_R",
  "GUNMOVE_FWD",
  "GUNMOVE_BWD"
}
font = renderCreateFont("Arial", 9, 12)
cars = {
  nil,
  "Landstalker",
  "Bravura",
  "BUFFALO",
  "Linerunner",
  "PERENIEL",
  "SENTINEL",
  "Dumper",
  "Firetruck",
  "Trashmaster",
  "Stretch",
  "Manana",
  "INFERNUS",
  "Voodoo",
  "Pony",
  "Mule",
  "CHEETAH",
  "AMBULANCIA",
  "Leviathan",
  "Moonbeam",
  "Esperanto",
  "TAXI",
  "Washington",
  "Bobcat",
  "Mr Whoopee",
  "BF INJECTION",
  "Hunter",
  "PREMIER",
  "Enforcer",
  "Securicar",
  "BANSHEE",
  "Predator",
  "Bus",
  "Rhino",
  "Barracks",
  "Hotknife",
  "Trailer",
  "Previon",
  "Coach",
  "Cabbie",
  "Stallion",
  "Rumpo",
  "RC Bandit",
  "Romero",
  "Packer",
  "Monster Truck",
  "Admiral",
  "Squalo",
  "Seasparrow",
  "Pizzaboy",
  "Tram",
  "Trailer",
  "Turismo",
  "Speeder",
  "Reefer",
  "Tropic",
  "Flatbed",
  "Yankee",
  "Caddy",
  "Solair",
  "Berkley\'s RC Van",
  "Skimmer",
  "PCJ 600",
  "Faggio",
  "Freeway",
  "RC Baron",
  "RC Raider",
  "Glendale",
  "Oceanic",
  "SANCHEZ",
  "Sparrow",
  "Patriot",
  "QUADRICICLO",
  "Coastguard",
  "Dinghy",
  "Hermes",
  "Sabre",
  "Rustler",
  "ZR 350",
  "Walton",
  "Regina",
  "Comet",
  "BMX",
  "Burrito",
  "Camper",
  "Marquis",
  "Baggage",
  "Dozer",
  "Maverick",
  "News Chopper",
  "RANCHER",
  "FBI RANCHER",
  "Virgo",
  "Greenwood",
  "Jetmax",
  "HOTRING",
  "Sandking",
  "Blista Compact",
  "Police Maverick",
  "Boxville",
  "Benson",
  "Mesa",
  "RC Goblin",
  "HOTRING RACER",
  "HOTRING RACER",
  "Bloodring Banger",
  "RANCHER",
  "SUPER GT",
  "Elegant",
  "Journey",
  "BIKE",
  "MOUNTAIN BIKE",
  "Beagle",
  "Cropdust",
  "Stunt",
  "Tanker",
  "RoadTrain",
  "Nebula",
  "Majestic",
  "Buccaneer",
  "Shamal",
  "Hydra",
  "FCR 900",
  "NRG 500",
  "HPV 1000",
  "Cement Truck",
  "Tow Truck",
  "Fortune",
  "Cadrona",
  "FBI Truck",
  "Willard",
  "Forklift",
  "Tractor",
  "Combine",
  "Feltzer",
  "Remington",
  "Slamvan",
  "Blade",
  "Freight",
  "Streak",
  "Vortex",
  "Vincent",
  "Bullet",
  "Clover",
  "Sadler",
  "Firetruck",
  "Hustler",
  "Intruder",
  "Primo",
  "Cargobob",
  "Tampa",
  "Sunrise",
  "Merit",
  "Utility",
  "Nevada",
  "Yosemite",
  "Windsor",
  "Monster Truck",
  "Monster Truck",
  "Uranus",
  "JESTER",
  "SULTAN",
  "STRATUM",
  "ELEGY",
  "Raindance",
  "RC TIGER",
  "FLASH",
  "Tahoma",
  "SAVANNA",
  "Bandito",
  "Freight",
  "Trailer",
  "Kart",
  "Mower",
  "Duneride",
  "Sweeper",
  "Broadway",
  "TORNADO",
  "AT-400",
  "DFT-30",
  "Huntley",
  "Stafford",
  "BF 400",
  "Newsvan",
  "Tug",
  "Trailer",
  "Emperor",
  "Wayfarer",
  "EUROS",
  "Hotdog",
  "Club",
  "Trailer",
  "Trailer",
  "Andromada",
  "Dodo",
  "RC Cam",
  "Launch",
  "POLICIA CAR (LS)",
  "POLICIA CAR (SF)",
  "Police Car (LV)",
  "Police RANGER",
  "PICADOR",
  "S.W.A.T. Van",
  "ALPHA",
  "PHOENIX",
  "Glendale",
  "Sadler",
  "Luggage Trailer",
  "Luggage Trailer",
  "Stair Trailer",
  "Boxville",
  "Farm Plow",
  "Utility Trailer"
}
colors = {
  nil,
  255,
  4126537215,
  712483327,
  2214859007,
  641153535,
  2252631807,
  3616411903,
  1282783231,
  3183396607,
  1584427775,
  1180269311,
  1701476863,
  1568574975,
  1482251007,
  3604666111,
  2627838975,
  861880319,
  1930304255,
  2064263935,
  2677904639,
  994998527,
  1932410623,
  1763589119,
  2526121215,
  1364482559,
  1061045759,
  2779359231,
  1666996991,
  1028286719,
  2543162111,
  1109336575,
  1596402687,
  2224335871,
  1987804415,
  1684301055,
  1515672319,
  623192063,
  758789631,
  2476971775,
  1836747007,
  572070143,
  1869045759,
  2082220799,
  1594496511,
  423110399,
  1562059007,
  2644013823,
  2054512895,
  2559936255,
  2914038015,
  2223606015,
  810501631,
  1298295039,
  371345663,
  657411071,
  2103596799,
  2661592063,
  2626515455,
  1830298367,
  1315471871,
  2627508479,
  2440251391,
  1713121023,
  2493358079,
  2762450431,
  2391557887,
  874127103,
  1786416383,
  2863501055,
  2878902271,
  2233413375,
  1870829567,
  1482183679,
  2594672895,
  1612325887,
  538979583,
  2761987839,
  2862449919,
  2015505407,
  238120447,
  1915371519,
  2071027455,
  1948068095,
  506344191,
  1295134719,
  2082161919,
  777724159,
  962233343,
  1831352319,
  2812448767,
  2947658239,
  910251519,
  1835822847,
  258640383,
  541813759,
  725506047,
  2610929151,
  1820628479,
  1300534783,
  2929426431,
  1080856575,
  522533887,
  2878502655,
  323318783,
  2525064447,
  1684564735,
  273711871,
  2711192575,
  945198335,
  1381392895,
  2137609983,
  2358418175,
  1500415999,
  1194668799,
  1147293695,
  1930045439,
  573855743,
  1678580735,
  2746074879,
  1767396351,
  2609611007,
  1644895487,
  1532845823,
  1648634111,
  1930962943,
  456617471,
  3966414591,
  255,
  393549823,
  554043135,
  307525887,
  1160383999,
  1461591807,
  17236479,
  623008511,
  747219711,
  2320350719,
  899037951,
  3082270719,
  1179422207,
  2223541503,
  2172151807,
  2172266239,
  1783656447,
  1480486911,
  2360963839,
  2186246399,
  1831299839,
  505222143,
  504563455,
  522524927,
  742732287,
  508336639,
  777995263,
  513362175,
  513382911,
  2576971519,
  2089064959,
  2569936639,
  740165887,
  337905663,
  2570997247,
  508336639,
  427917823,
  438905599,
  375484415,
  459704319,
  1816107519,
  1209667327,
  2054396415,
  1953339903,
  1396211455,
  572786687,
  1041829119,
  1176571647,
  2568888063,
  2370604543,
  2153480447,
  2067693311,
  1008154623,
  1932859391,
  2014845183,
  2201230079,
  2385452287,
  2118013951,
  2087550207,
  34341631,
  119801855,
  372249343,
  372251647,
  1680560127,
  914641663,
  2576716031,
  2173540095,
  2576948991,
  2140753151,
  2207421183,
  2021794559,
  725391871,
  976882687,
  2323205887,
  236931583,
  355933439,
  354892543,
  928478719,
  101196031,
  118695679,
  540625919,
  743475711,
  356674815,
  271732991,
  605447167,
  1763710463,
  2358088959,
  1365251071,
  151978751,
  2354526975,
  1384681215,
  2572964607,
  2572689151,
  2570740735,
  2576305919,
  2570133247,
  219693823,
  1377705727,
  1111625215,
  1285103359,
  136977919,
  2525109759,
  427760127,
  991174655,
  1951537151,
  2302643711,
  2115661055,
  188156927,
  658836991,
  119481599,
  2017817599,
  2321890047,
  1931876351,
  831820031,
  1452547583,
  1494629887,
  462041087,
  940968959,
  68683007,
  895323903,
  775904255,
  1444555007,
  1309550591,
  1886152703,
  993936127,
  774714367,
  2071887359,
  1245987583,
  674516735
}
keysActivate = {
  VK_Z,
  VK_N
}
vrender = true
state1 = true
act7 = true
act6 = true
act2 = true
act5 = true
act4 = true
act3 = true
act1 = true
active2 = true
activate = true
radius = 150
trailer = nil
act = false
state = false
target = 0
g_radius = 5
active = false
tp = false
tp_dist = 175
waiting = 1300
packets = 0
percent = 0
bar = true
incar = false
airbreak = false
lastSmooth = -1
lastdist = -1
multiplier = 1
Input = r0_0.ImBuffer(256)
GUI = {
  currentButtonID = 1,
  windowState = r0_0.ImBool(false),
  JOGADOR = {
    MUNIFN = r0_0.ImBool(false),
  },
  MENU = {
    RVANKA_ACT = "X",
  },
  MULTIPLAYER = {
    DIRIGIRVEICULO = r0_0.ImBool(false),
    TPPLAYER = r0_0.ImBool(false),
    RVANKA = r0_0.ImBool(false),
    speed = r0_0.ImFloat(2.7),
    delay = r0_0.ImFloat(10),
    RVANKACARROS = r0_0.ImBool(false),
    FLY = r0_0.ImBool(false),
    TROLL = r0_0.ImBool(false),
    ALLFREZE = r0_0.ImBool(false),
    FAKELAGS = r0_0.ImBool(false),
    ENGATARVEICULOS = r0_0.ImBool(false),
    DESTROIRVEICULOS = r0_0.ImBool(false),
    TELEPORT = r0_0.ImBool(false),
    RESPAWNARVEICULOS = r0_0.ImBool(false),
  },
  AIMBOT = {
    PROAIM = r0_0.ImBool(false),
    SUAVIDADE = r0_0.ImFloat(5),
    RAIO = r0_0.ImFloat(80),
    SAFE = r0_0.ImFloat(1),
    SUPERSUA = r0_0.ImFloat(1),
    ATIVAR = r0_0.ImBool(false),
    FIRE = r0_0.ImBool(false),
    FILTRO = r0_0.ImBool(false),
    VISIVEL = r0_0.ImBool(false),
    DINAMICO = r0_0.ImBool(false),
    VERIFICARST = r0_0.ImBool(false),
    IGNORESTUN = r0_0.ImBool(false),
  },
  ESP = {
    WALLHACK = r0_0.ImBool(false),
    FOV = r0_0.ImBool(false),
    ESPLINE = r0_0.ImBool(false),
    ESPESQUELETO = r0_0.ImBool(false),
    ESPCAIXA = r0_0.ImBool(false),
    ESPINFO = r0_0.ImBool(false),
  },
  actor = {
    INVISIVEL = r0_0.ImBool(false),
    GODMODEQUEDAS = r0_0.ImBool(false),
    AIRBREAK = r0_0.ImBool(false),
    CORRIDAINFINITA = r0_0.ImBool(false),
    FAKEMOBILE = r0_0.ImBool(false),
  },
  VEICULOS = {
    VRENDER = r0_0.ImBool(false),
    IMPULSOCARROS = r0_0.ImBool(false),
    AJUSTEVELOCIDADE = r0_0.ImFloat(20),
  },
}
local r8_0 = r4_0.load({
  CONFIG = {
    JOGADOR_MUNIFN = GUI.JOGADOR.MUNIFN.v,
    MULTIPLAYER_DIRIGIRVEICULO = GUI.MULTIPLAYER.DIRIGIRVEICULO.v,
    MULTIPLAYER_TPPLAYER = GUI.MULTIPLAYER.TPPLAYER.v,
    MULTIPLAYER_RVANKA = GUI.MULTIPLAYER.RVANKA.v,
    MULTIPLAYER_speed = GUI.MULTIPLAYER.speed.v,
    MULTIPLAYER_delay = GUI.MULTIPLAYER.delay.v,
    MULTIPLAYER_RVANKACARROS = GUI.MULTIPLAYER.RVANKACARROS.v,
    MULTIPLAYER_FLY = GUI.MULTIPLAYER.FLY.v,
    MULTIPLAYER_TROLL = GUI.MULTIPLAYER.TROLL.v,
    MULTIPLAYER_ALLFREZE = GUI.MULTIPLAYER.ALLFREZE.v,
    MULTIPLAYER_FAKELAGS = GUI.MULTIPLAYER.FAKELAGS.v,
    MULTIPLAYER_ENGATARVEICULOS = GUI.MULTIPLAYER.ENGATARVEICULOS.v,
    MULTIPLAYER_DESTROIRVEICULOS = GUI.MULTIPLAYER.DESTROIRVEICULOS.v,
    MULTIPLAYER_TELEPORT = GUI.MULTIPLAYER.TELEPORT.v,
    MULTIPLAYER_RESPAWNARVEICULOS = GUI.MULTIPLAYER.RESPAWNARVEICULOS.v,
    AIMBOT_PROAIM = GUI.AIMBOT.PROAIM.v,
    AIMBOT_SUAVIDADE = GUI.AIMBOT.SUAVIDADE.v,
    AIMBOT_RAIO = GUI.AIMBOT.RAIO.v,
    AIMBOT_SAFE = GUI.AIMBOT.SAFE.v,
    AIMBOT_SUPERSUA = GUI.AIMBOT.SUPERSUA.v,
    AIMBOT_ATIVAR = GUI.AIMBOT.ATIVAR.v,
    AIMBOT_FIRE = GUI.AIMBOT.FIRE.v,
    AIMBOT_FILTRO = GUI.AIMBOT.FILTRO.v,
    AIMBOT_VISIVEL = GUI.AIMBOT.VISIVEL.v,
    AIMBOT_DINAMICO = GUI.AIMBOT.DINAMICO.v,
    AIMBOT_VERIFICARST = GUI.AIMBOT.VERIFICARST.v,
    AIMBOT_IGNORESTUN = GUI.AIMBOT.IGNORESTUN.v,
    ESP_WALLHACK = GUI.ESP.FOV.v,
    ESP_FOV = GUI.ESP.FOV.v,
    ESP_ESPLINE = GUI.ESP.ESPLINE.v,
    ESP_ESPESQUELETO = GUI.ESP.ESPESQUELETO.v,
    ESP_ESPCAIXA = GUI.ESP.ESPCAIXA.v,
    ESP_ESPINFO = GUI.ESP.ESPINFO.v,
    actor_INVISIVEL = GUI.actor.INVISIVEL.v,
    actor_GODMODEQUEDAS = GUI.actor.GODMODEQUEDAS.v,
    actor_AIRBREAK = GUI.actor.AIRBREAK.v,
    actor_CORRIDAINFINITA = GUI.actor.CORRIDAINFINITA.v,
    actor_FAKEMOBILE = GUI.actor.FAKEMOBILE.v,
    VEICULOS_VRENDER = GUI.VEICULOS.VRENDER.v,
    VEICULOS_IMPULSOCARROS = GUI.VEICULOS.IMPULSOCARROS.v,
    VEICULOS_AJUSTEVELOCIDADE = GUI.VEICULOS.AJUSTEVELOCIDADE.v,
  },
})
function load_ini()
  -- line: [0, 0] id: 51
  local r0_51 = r4_0.load(r8_0)
  if r0_51 then
    GUI.JOGADOR.MUNIFN.v = r0_51.CONFIG.JOGADOR_MUNIFN
    GUI.MULTIPLAYER.DIRIGIRVEICULO.v = r0_51.CONFIG.MULTIPLAYER_DIRIGIRVEICULO
    GUI.MULTIPLAYER.TPPLAYER.v = r0_51.CONFIG.MULTIPLAYER_TPPLAYER
    GUI.MULTIPLAYER.RVANKA.v = r0_51.CONFIG.MULTIPLAYER_RVANKA
    GUI.MULTIPLAYER.speed.v = r0_51.CONFIG.MULTIPLAYER_speed
    GUI.MULTIPLAYER.delay.v = r0_51.CONFIG.MULTIPLAYER_delay
    GUI.MULTIPLAYER.RVANKACARROS.v = r0_51.CONFIG.MULTIPLAYER_RVANKACARROS
    GUI.MULTIPLAYER.FLY.v = r0_51.CONFIG.MULTIPLAYER_FLY
    GUI.MULTIPLAYER.TROLL.v = r0_51.CONFIG.MULTIPLAYER_TROLL
    GUI.MULTIPLAYER.ALLFREZE.v = r0_51.CONFIG.MULTIPLAYER_ALLFREZE
    GUI.MULTIPLAYER.FAKELAGS.v = r0_51.CONFIG.MULTIPLAYER_FAKELAGS
    GUI.MULTIPLAYER.ENGATARVEICULOS.v = r0_51.CONFIG.MULTIPLAYER_ENGATARVEICULOS
    GUI.MULTIPLAYER.DESTROIRVEICULOS.v = r0_51.CONFIG.MULTIPLAYER_DESTROIRVEICULOS
    GUI.MULTIPLAYER.TELEPORT.v = r0_51.CONFIG.MULTIPLAYER_TELEPORT
    GUI.MULTIPLAYER.RESPAWNARVEICULOS.v = r0_51.CONFIG.MULTIPLAYER_RESPAWNARVEICULOS
    GUI.AIMBOT.PROAIM.v = r0_51.CONFIG.AIMBOT_PROAIM
    GUI.AIMBOT.SUAVIDADE.v = r0_51.CONFIG.AIMBOT_SUAVIDADE
    GUI.AIMBOT.RAIO.v = r0_51.CONFIG.AIMBOT_RAIO
    GUI.AIMBOT.SAFE.v = r0_51.CONFIG.AIMBOT_SAFE
    GUI.AIMBOT.SUPERSUA.v = r0_51.CONFIG.AIMBOT_SUPERSUA
    GUI.AIMBOT.ATIVAR.v = r0_51.CONFIG.AIMBOT_ATIVAR
    GUI.AIMBOT.FIRE.v = r0_51.CONFIG.AIMBOT_FIRE
    GUI.AIMBOT.FILTRO.v = r0_51.CONFIG.AIMBOT_FILTRO
    GUI.AIMBOT.VISIVEL.v = r0_51.CONFIG.AIMBOT_VISIVEL
    GUI.AIMBOT.DINAMICO.v = r0_51.CONFIG.AIMBOT_DINAMICO
    GUI.AIMBOT.VERIFICARST.v = r0_51.CONFIG.AIMBOT_VERIFICARST
    GUI.AIMBOT.IGNORESTUN.v = r0_51.CONFIG.AIMBOT_IGNORESTUN
    GUI.ESP.WALLHACK.v = r0_51.CONFIG.ESP_WALLHACK
    GUI.ESP.FOV.v = r0_51.CONFIG.ESP_FOV
    GUI.ESP.ESPLINE.v = r0_51.CONFIG.ESP_ESPLINE
    GUI.ESP.ESPESQUELETO.v = r0_51.CONFIG.ESP_ESPESQUELETO
    GUI.ESP.ESPCAIXA.v = r0_51.CONFIG.ESP_ESPCAIXA
    GUI.ESP.ESPINFO.v = r0_51.CONFIG.ESP_ESPINFO
    GUI.actor.INVISIVEL.v = r0_51.CONFIG.actor_INVISIVEL
    GUI.actor.GODMODEQUEDAS.v = r0_51.CONFIG.actor_GODMODEQUEDAS
    GUI.actor.AIRBREAK.v = r0_51.CONFIG.actor_AIRBREAK
    GUI.actor.CORRIDAINFINITA.v = r0_51.CONFIG.actor_CORRIDAINFINITA
    GUI.actor.FAKEMOBILE.v = r0_51.CONFIG.actor_FAKEMOBILE
    GUI.VEICULOS.VRENDER.v = r0_51.CONFIG.VEICULOS_VRENDER
    GUI.VEICULOS.IMPULSOCARROS.v = r0_51.CONFIG.VEICULOS_IMPULSOCARROS
    GUI.VEICULOS.AJUSTEVELOCIDADE.v = r0_51.CONFIG.VEICULOS_AJUSTEVELOCIDADE
  end
end
function save_ini()
  -- line: [0, 0] id: 50
  r8_0.CONFIG.MULTIPLAYER_RVANKA = GUI.MULTIPLAYER.RVANKA.v
  r8_0.CONFIG.MULTIPLAYER_speed = GUI.MULTIPLAYER.speed.v
  r8_0.CONFIG.MULTIPLAYER_delay = GUI.MULTIPLAYER.delay.v
  r8_0.CONFIG.AIMBOT_PROAIM = GUI.AIMBOT.PROAIM.v
  r8_0.CONFIG.AIMBOT_SUAVIDADE = GUI.AIMBOT.SUAVIDADE.v
  r8_0.CONFIG.AIMBOT_RAIO = GUI.AIMBOT.RAIO.v
  r8_0.CONFIG.AIMBOT_SAFE = GUI.AIMBOT.SAFE.v
  r8_0.CONFIG.AIMBOT_SUPERSUA = GUI.AIMBOT.SUPERSUA.v
  r8_0.CONFIG.AIMBOT_ATIVAR = GUI.AIMBOT.ATIVAR.v
  r8_0.CONFIG.AIMBOT_FIRE = GUI.AIMBOT.FIRE.v
  r8_0.CONFIG.AIMBOT_FILTRO = GUI.AIMBOT.FILTRO.v
  r8_0.CONFIG.AIMBOT_VISIVEL = GUI.AIMBOT.VISIVEL.v
  r8_0.CONFIG.AIMBOT_DINAMICO = GUI.AIMBOT.DINAMICO.v
  r8_0.CONFIG.AIMBOT_VERIFICARST = GUI.AIMBOT.VERIFICARST.v
  r8_0.CONFIG.AIMBOT_IGNORESTUN = GUI.AIMBOT.IGNORESTUN.v
  r8_0.CONFIG.ESP_WALLHACK = GUI.ESP.WALLHACK.v
  r8_0.CONFIG.ESP_FOV = GUI.ESP.FOV.v
  r8_0.CONFIG.ESP_ESPLINE = GUI.ESP.ESPLINE.v
  r8_0.CONFIG.ESP_ESPESQUELETO = GUI.ESP.ESPESQUELETO.v
  r8_0.CONFIG.ESP_ESPCAIXA = GUI.ESP.ESPCAIXA.v
  r8_0.CONFIG.ESP_ESPINFO = GUI.ESP.ESPINFO.v
  r8_0.CONFIG.actor_GODMODEQUEDAS = GUI.actor.GODMODEQUEDAS.v
  r8_0.CONFIG.actor_AIRBREAK = GUI.actor.AIRBREAK.v
  r8_0.CONFIG.actor_CORRIDAINFINITA = GUI.actor.CORRIDAINFINITA.v
  r8_0.CONFIG.VEICULOS_VRENDER = GUI.VEICULOS.VRENDER.v
  r4_0.save(r8_0, script.this.filename .. ".ini")
end
function reset_ini()
  -- line: [0, 0] id: 49
  GUI = {
    currentButtonID = 1,
    windowState = r0_0.ImBool(true),
    JOGADOR = {},
    MULTIPLAYER = {
      RVANKA = r0_0.ImBool(false),
      speed = r0_0.ImFloat(2.7),
      delay = r0_0.ImFloat(10),
    },
    AIMBOT = {
      PROAIM = r0_0.ImBool(false),
      SUAVIDADE = r0_0.ImFloat(5),
      RAIO = r0_0.ImFloat(80),
      SAFE = r0_0.ImFloat(1),
      SUPERSUA = r0_0.ImFloat(1),
      ATIVAR = r0_0.ImBool(false),
      FIRE = r0_0.ImBool(false),
      FILTRO = r0_0.ImBool(false),
      VISIVEL = r0_0.ImBool(false),
      DINAMICO = r0_0.ImBool(false),
      VERIFICARST = r0_0.ImBool(false),
      IGNORESTUN = r0_0.ImBool(false),
    },
    ESP = {
      WALLHACK = r0_0.ImBool(false),
      FOV = r0_0.ImBool(false),
      ESPLINE = r0_0.ImBool(false),
      ESPESQUELETO = r0_0.ImBool(false),
      ESPCAIXA = r0_0.ImBool(false),
      ESPINFO = r0_0.ImBool(false),
    },
    actor = {
      GODMODEQUEDAS = r0_0.ImBool(false),
      AIRBREAK = r0_0.ImBool(false),
      CORRIDAINFINITA = r0_0.ImBool(false),
    },
    VEICULOS = {
      VRENDER = r0_0.ImBool(false),
    },
  }
  save_ini()
end
function main()
  -- line: [0, 0] id: 48
  if not initialized then
    if not isSampAvailable() then
      return false
    end
    load_ini()
    guiCustomStyle()
    lua_thread.create(JOGADOR)
    lua_thread.create(MULTIPLAYER)
    lua_thread.create(AIMBOT)
    lua_thread.create(ESP)
    lua_thread.create(actor)
    lua_thread.create(VEICULOS)
    initialized = true
  end
  if wasKeyPressed(VK_F2) then
    local r0_48 = GUI.windowState
    local r1_48 = GUI.windowState.v
    r0_48.v = not r0_48
  end
  r0_0.Process = GUI.windowState.v
  return false
end
function r0_0.OnDrawFrame()
  -- line: [0, 0] id: 47
  if GUI.windowState.v then
    local r0_47, r1_47 = getScreenResolution()
    r0_0.SetNextWindowPos(r0_0.ImVec2(r0_47 / 2, r1_47 / 2), r0_0.Cond.FirstUseEver, r0_0.ImVec2(0.5, 0.5))
    r0_0.SetNextWindowSize(r0_0.ImVec2(885, 372), r0_0.Cond.FirstUseEver)
    r0_0.Begin("FAST MENU VERSAO GRATIS", nil, r0_0.WindowFlags.NoCollapse + r0_0.WindowFlags.NoResize + r0_0.WindowFlags.NoMove)
    r0_0.SetCursorPos(r0_0.ImVec2(4, 125))
    if r0_0.Button("ARMAS", r0_0.ImVec2(100, 40)) then
      GUI.currentButtonID = 1
    end
    r0_0.SetCursorPos(r0_0.ImVec2(4, 175))
    if r0_0.Button("AIMBOT", r0_0.ImVec2(100, 40)) then
      GUI.currentButtonID = 7
    end
    r0_0.SetCursorPos(r0_0.ImVec2(108, 26))
    if r0_0.Button("MULTIPLAYER", r0_0.ImVec2(100, 40)) then
      GUI.currentButtonID = 8
    end
    r0_0.SetCursorPos(r0_0.ImVec2(4, 225))
    if r0_0.Button("ESP", r0_0.ImVec2(100, 40)) then
      GUI.currentButtonID = 2
    end
    r0_0.SetCursorPos(r0_0.ImVec2(4, 26))
    if r0_0.Button("JOGADOR", r0_0.ImVec2(100, 40)) then
      GUI.currentButtonID = 3
    end
    r0_0.SetCursorPos(r0_0.ImVec2(4, 75))
    if r0_0.Button("VEICULOS", r0_0.ImVec2(100, 40)) then
      GUI.currentButtonID = 4
    end
    r0_0.SetCursorPos(r0_0.ImVec2(4, 275))
    if r0_0.Button("CONFIG", r0_0.ImVec2(100, 40)) then
      GUI.currentButtonID = 5
    end
    r0_0.SetCursorPos(r0_0.ImVec2(4, 325))
    if r0_0.Button("COMANDOS", r0_0.ImVec2(100, 40)) then
      GUI.currentButtonID = 6
    end
    if GUI.currentButtonID == 3 then
      r0_0.SetCursorPos(r0_0.ImVec2(740, 50))
      if r0_0.Button("IR PRO SPAWN") then
        sampSpawnPlayer()
      end
    end
    if GUI.currentButtonID == 3 then
      r0_0.SetCursorPos(r0_0.ImVec2(740, 25))
      if r0_0.Button("PEGAR JET PACK") then
        taskJetpack(PLAYER_PED)
        if isPlayerUsingJetpack(0) then
          specialAction = 0
        end
      end
    end
    if GUI.currentButtonID == 3 then
      r0_0.SetCursorPos(r0_0.ImVec2(740, 100))
      if r0_0.Button("RECONECTAR") then
        local r2_47, r3_47 = sampGetCurrentServerAddress()
        sampDisconnectWithReason(false)
        sampConnectToServer(r2_47, r3_47)
      end
    end
    if GUI.currentButtonID == 3 then
      r0_0.SetCursorPos(r0_0.ImVec2(740, 75))
      if r0_0.Button("GANHAR VIDA") then
        setCharHealth(PLAYER_PED, 100)
      end
    end
    if GUI.currentButtonID == 3 then
      r0_0.SetCursorPos(r0_0.ImVec2(225, 75))
      r0_0.Checkbox("FICAR INVISIVEL", GUI.actor.INVISIVEL)
    end
    if GUI.currentButtonID == 3 then
      r0_0.SetCursorPos(r0_0.ImVec2(740, 125))
      if r0_0.Button("GOD MOD") then
        local r2_47 = GAMEMODE
        GAMEMODE = not r0_47
        r2_47 = sampAddChatMessage
        local r3_47 = GAMEMODE
        if r3_47 then
          r3_47 = "[GOD MODE] {FFFFFF}ATIVADO"
        else
          r3_47 = "[GOD MODE] {FFFFFF}DESATIVADO"
        end
        r2_47(r3_47, 16711680)
        sampSendTakeDamage(65535, 160, 51, 3)
        r2_47 = setCharHealth
        r3_47 = PLAYER_PED
        local r4_47 = GAMEMODE
        if r4_47 then
          r4_47 = 100
        else
          r4_47 = getCharHealth(PLAYER_PED)
        end
        r2_47(r3_47, r4_47)
        r4_47 = GAMEMODE
        local r5_47 = GAMEMODE
        local r6_47 = GAMEMODE
        local r7_47 = GAMEMODE
        local r8_47 = GAMEMODE
        setCharProofs(PLAYER_PED, not r0_47, not r0_47, not r0_47, not r0_47, not r0_47)
      end
      if GAMEMODE then
        sampForceAimSync()
        gm2 = false
        setCharProofs(playerPed, false, false, false, false, false)
        gm2 = true
        setCharProofs(playerPed, true, false, false, false, false)
      end
    end
    if GUI.currentButtonID == 3 then
      r0_0.SetCursorPos(r0_0.ImVec2(225, 100))
      r0_0.Checkbox("NO CLIP [SHIFT]", GUI.actor.AIRBREAK)
    end
    if GUI.currentButtonID == 3 then
      r0_0.SetCursorPos(r0_0.ImVec2(225, 50))
      r0_0.Checkbox("CORRIDA INFINITA", GUI.actor.CORRIDAINFINITA)
    end
    if GUI.currentButtonID == 1 then
      r0_0.SetCursorPos(r0_0.ImVec2(145, 176))
      r0_0.Checkbox("MUNIÇAO INFINITA", GUI.JOGADOR.MUNIFN)
    end
    if GUI.currentButtonID == 8 then
      r0_0.SetCursorPos(r0_0.ImVec2(104, 345))
      r0_0.Text("RVANKA MATAR JOGADORES\nPRESSIONE A TECLA [X] PARA USAR")
    end
    if GUI.currentButtonID == 6 then
      r0_0.SetCursorPos(r0_0.ImVec2(105, 300))
      r0_0.Text("COMANDO TP NOS JOGADORES\n\nEXEMPLO:\nDIGITE ISSO NO CHAT DO JOGO\n/TP ID DO JOGADOR")
    end
    if GUI.currentButtonID == 6 then
      r0_0.SetCursorPos(r0_0.ImVec2(286, 300))
      r0_0.Text("COMANDO FAKE KILL NOS JOGADORES\n\nEXEMPLO:\nDIGITE ISSO NO CHAT DO JOGO\n/FAKEKILL ID JOGADOR ID DA ARMA")
    end
    if GUI.currentButtonID == 6 then
      r0_0.SetCursorPos(r0_0.ImVec2(510, 300))
      r0_0.Text("COMANDO PARA PUXAR ARMAS\n\nEXEMPLO:\nDIGITE ISSO NO CHAT DO JOGO\n/PARMA 31 100")
    end
    if GUI.currentButtonID == 8 then
      r0_0.SetCursorPosX(5)
      r0_0.SliderFloat("VELOCIDADE", GUI.MULTIPLAYER.speed, 0, 2000, "%.1f")
      r0_0.SetCursorPosX(5)
      r0_0.SliderFloat("ATRASO", GUI.MULTIPLAYER.delay, 0, 200, "%.1f")
    end
    if GUI.currentButtonID == 8 then
      r0_0.SetCursorPos(r0_0.ImVec2(225, 25))
      r0_0.Checkbox("ROUBAR VEICULO PROXIMO [Z+N]", GUI.MULTIPLAYER.DIRIGIRVEICULO)
    end
    if GUI.currentButtonID == 8 then
      r0_0.SetCursorPos(r0_0.ImVec2(225, 125))
      r0_0.Checkbox("FAZER VEICULOS VOAR", GUI.MULTIPLAYER.RVANKACARROS)
    end
    if GUI.currentButtonID == 8 then
      r0_0.SetCursorPos(r0_0.ImVec2(225, 225))
      r0_0.Checkbox("FAKE LAGS", GUI.MULTIPLAYER.FAKELAGS)
    end
    if GUI.currentButtonID == 8 then
      r0_0.SetCursorPos(r0_0.ImVec2(225, 50))
      r0_0.Checkbox("FICAR EM CIMA DE UM OBJETO", GUI.MULTIPLAYER.FLY)
    end
    if GUI.currentButtonID == 8 then
      r0_0.SetCursorPos(r0_0.ImVec2(225, 250))
      r0_0.Checkbox("CAR SHOT", GUI.MULTIPLAYER.TROLL)
    end
    if GUI.currentButtonID == 8 then
      r0_0.SetCursorPos(r0_0.ImVec2(225, 100))
      r0_0.Checkbox("PARAR JOGADOR PROXIMO", GUI.MULTIPLAYER.ALLFREZE)
    end
    if GUI.currentButtonID == 8 then
      r0_0.SetCursorPos(r0_0.ImVec2(225, 175))
      r0_0.Checkbox("DESTROIR VEICULOS", GUI.MULTIPLAYER.DESTROIRVEICULOS)
    end
    if GUI.currentButtonID == 8 then
      r0_0.SetCursorPos(r0_0.ImVec2(225, 75))
      r0_0.Checkbox("ENGATAR VEICULOS [CTRL]", GUI.MULTIPLAYER.ENGATARVEICULOS)
    end
    if GUI.currentButtonID == 3 then
      r0_0.SetCursorPos(r0_0.ImVec2(225, 25))
      r0_0.Checkbox("DESATIVAR DANOS EXPLOXOES/QUEDAS", GUI.actor.GODMODEQUEDAS)
    end
    if GUI.currentButtonID == 8 then
      r0_0.SetCursorPos(r0_0.ImVec2(225, 200))
      r0_0.Checkbox("TELEPORTE [ALT]", GUI.MULTIPLAYER.TELEPORT)
    end
    if GUI.currentButtonID == 8 then
      r0_0.SetCursorPos(r0_0.ImVec2(225, 150))
      r0_0.Checkbox("RESPAWNAR VEICULOS", GUI.MULTIPLAYER.RESPAWNARVEICULOS)
    end
    if GUI.currentButtonID == 7 then
      r0_0.SetCursorPosX(5)
      r0_0.SliderFloat("DISTANCIA", GUI.AIMBOT.RAIO, 1, 500, "%.1f")
      r0_0.SetCursorPosX(5)
      r0_0.SliderFloat("ANGULO", GUI.AIMBOT.SAFE, 1, 350, "%.1f")
      r0_0.SetCursorPosX(5)
      r0_0.Checkbox("ATIVAR", GUI.AIMBOT.ATIVAR)
      r0_0.SetCursorPosX(5)
      r0_0.Checkbox("GRUDAR SO QUANDO ATIRAR", GUI.AIMBOT.FIRE)
      r0_0.SetCursorPosX(5)
      r0_0.Checkbox("VERIFICAR OBJETOS", GUI.AIMBOT.VISIVEL)
      r0_0.SetCursorPosX(5)
      r0_0.Checkbox("GRUDAR DE LONGE", GUI.AIMBOT.VERIFICARST)
      r0_0.SetCursorPosX(5)
      r0_0.Checkbox("PRO AIMBOT", GUI.AIMBOT.PROAIM)
    end
    if GUI.currentButtonID == 2 then
      r0_0.SetCursorPos(r0_0.ImVec2(705, 25))
      r0_0.Checkbox("ESP ESQUELETO", GUI.ESP.ESPESQUELETO)
      r0_0.SetCursorPos(r0_0.ImVec2(705, 48))
      r0_0.Checkbox("ESP LINHAS", GUI.ESP.ESPLINE)
      r0_0.SetCursorPos(r0_0.ImVec2(705, 71))
      r0_0.Checkbox("ESP CAIXA", GUI.ESP.ESPCAIXA)
      r0_0.SetCursorPos(r0_0.ImVec2(705, 94))
      r0_0.Checkbox("ESP INFO 1", GUI.ESP.ESPINFO)
      r0_0.SetCursorPos(r0_0.ImVec2(705, 118))
      r0_0.Checkbox("ESP INFO 2", GUI.ESP.WALLHACK)
    end
    if GUI.currentButtonID == 3 then
      r0_0.SetCursorPos(r0_0.ImVec2(225, 125))
      r0_0.Checkbox("FAKE MOBILE", GUI.actor.FAKEMOBILE)
    end
    if GUI.currentButtonID == 4 then
      r0_0.SetCursorPos(r0_0.ImVec2(167, 74))
      r0_0.SliderFloat("AJUSTE DE VELOCIDADE", GUI.VEICULOS.AJUSTEVELOCIDADE, 1, 30, "%.1f")
      r0_0.SetCursorPos(r0_0.ImVec2(167, 105))
      r0_0.Checkbox("ATIVAR VELOCIDADE", GUI.VEICULOS.IMPULSOCARROS)
      r0_0.SetCursorPos(r0_0.ImVec2(167, 130))
      r0_0.Checkbox("ESP VEICULOS", GUI.VEICULOS.VRENDER)
    end
    if GUI.currentButtonID == 5 then
      r0_0.SetCursorPos(r0_0.ImVec2(291, 318))
      if r0_0.Button("SALVAR CONFIG", r0_0.ImVec2(590, 25)) then
        save_ini()
      end
      r0_0.SetCursorPos(r0_0.ImVec2(291, 344))
      if r0_0.Button("RESETAR CONFIG", r0_0.ImVec2(590, 25)) then
        reset_ini()
      end
    end
    if GUI.currentButtonID == 6 then
      r0_0.SetCursorPos(r0_0.ImVec2(900, 318))
      r0_0.InputText("ENTRADA", Input)
      r0_0.SetCursorPos(r0_0.ImVec2(900, 318))
      if r0_0.Button("ENVIAR") then
        if Input.v == "VIDA 99" or Input.v == "VIDA 99" then
          setCharHealth(PLAYER_PED, 99)
        end
        if Input.v == "RECONECTAR" or Input.v == "RECONECTAR" then
          local r2_47, r3_47 = sampGetCurrentServerAddress()
          sampDisconnectWithReason(false)
          sampConnectToServer(r2_47, r3_47)
        end
      end
    end
    r0_0.End()
  end
end
function JOGADOR()
  -- line: [0, 0] id: 46
  if not isSampLoaded() or not isCleoLoaded() or not isSampfuncsLoaded() then
    return 
  end
  sampRegisterChatCommand("fakekill", fakekill)
  sampRegisterChatCommand("PARMA", getweapon)
  sampRegisterChatCommand("TP", cmdWarp)
end
function fakekill(r0_45)
  -- line: [0, 0] id: 45
  local r1_45, r2_45 = string.match(r0_45, "(%d+)%s(%d+)")
  if r2_45 ~= nil and sampIsPlayerConnected(r1_45) then
    sampSendDeathByPlayer(r1_45, r2_45)
    sampSpawnPlayer()
  end
end
function getweapon(r0_44)
  -- line: [0, 0] id: 44
  sampAddChatMessage("ARMA PUXADA COM SUCESSO.", 56576)
  local r1_44, r2_44 = string.match(r0_44, "(%d+)%s(%d+)")
  if r2_44 ~= nil then
    local r3_44 = raknetNewBitStream()
    raknetBitStreamWriteInt32(r3_44, r1_44)
    raknetBitStreamWriteInt32(r3_44, r2_44)
    raknetEmulRpcReceiveBitStream(22, r3_44)
    raknetDeleteBitStream(r3_44)
  end
end
function cmdWarp(r0_43)
  -- line: [0, 0] id: 43
  if #r0_43 > 0 then
    local r1_43 = tonumber(r0_43)
    if sampIsPlayerConnected(r1_43) then
      local r2_43, r3_43, r4_43, r5_43 = sampGetStreamedOutPlayerPos(r1_43)
      if r2_43 then
        teleportToPlayer(r1_43, r3_43 + 1, r4_43 + 1, r5_43)
      else
        local r6_43, r7_43 = sampGetCharHandleBySampPlayerId(r1_43)
        if r6_43 and doesCharExist(r7_43) then
          local r8_43, r9_43, r10_43 = getCharCoordinates(r7_43)
          teleportToPlayer(r1_43, r8_43 + 1, r9_43 + 1, r10_43 - 1)
        else
          sampAddChatMessage(string.format("JOGADOR %s MUITO LONGE", sampGetPlayerNickname(r1_43), r1_43), 65535)
        end
      end
    else
      sampAddChatMessage(string.format("JOGADOR %d NAO ENCONTRADO", r1_43), 65535)
    end
  end
end
function MULTIPLAYER()
  -- line: [0, 0] id: 42
  if isKeyDown(r3_0.name_to_id(GUI.MENU.RVANKA_ACT)) and bebra() then
    printStringNow("RVANKA", GUI.MULTIPLAYER.delay)
    sampForceOnfootSync()
    local r0_42, r1_42, r2_42 = getCharCoordinates(1)
    sendOnFootRVN(r0_42, r1_42, r2_42, GUI.MULTIPLAYER.speed)
    wait(GUI.MULTIPLAYER.delay)
  end
  local r5_42 = nil	-- notice: implicit variable refs by block#[93]
  if GUI.MULTIPLAYER.DIRIGIRVEICULO.v and isPlayerPlaying(playerHandle) and not isCharDead(playerPed) and is_key_check_available() and is_keycombo_pressed(keysActivate) then
    local r0_42 = find_nearest_driving_player_onscreen(getCharCoordinates(playerPed))
    if r0_42 ~= nil then
      local r1_42, r2_42 = sampGetCharHandleBySampPlayerId(r0_42)
      if isCharInAnyCar(playerPed) then
        local r3_42 = storeCarCharIsInNoSave(r2_42)
        remove_ped_from_car(r2_42)
        wait(0)
        warpCharIntoCar(playerPed, r3_42)
        restoreCameraJumpcut()
      elseif isCharOnFoot(playerPed) then
        local r3_42 = storeCarCharIsInNoSave(r2_42)
        local r4_42 = get_car_free_passenger_seat(r3_42)
        if r4_42 ~= nil then
          remove_ped_from_car(r2_42)
          local r5_42, r6_42 = sampGetVehicleIdByCarHandle(r3_42)
          warpCharIntoCarAsPassenger(playerPed, r3_42, r4_42)
          for r10_42 = 1, 10, 1 do
            sampForcePassengerSyncSeatId(r6_42, r4_42)
            wait(20)
          end
          warpCharIntoCar(playerPed, r3_42)
          restoreCameraJumpcut()
        end
      end
    end
  end
  if act6 and GUI.MULTIPLAYER.RVANKACARROS.v then
    for r3_42, r4_42 in pairs(getAllVehicles()) do
      r5_42 = doesVehicleExist(r4_42)
      if r5_42 then
        local r5_42, r6_42 = sampGetVehicleIdByCarHandle(r4_42)
        if r5_42 then
          lockPlayerControl(true)
          printStringNow("TROLL VEICULOS ~p~" .. r4_42, 1337)
          addOneOffSound(0, 0, 0, 1058)
          setCarRotationVelocity(r4_42, 4, 4, 4)
          addToCarRotationVelocity(r4_42, 4, 4, 10)
          applyForceToCar(r4_42, 0.2, 0.2, 0.2, 0, 0, 0)
          lockPlayerControl(false)
        end
      end
    end
  end
  if act2 and GUI.MULTIPLAYER.FLY.v then
    local r0_42, r1_42, r2_42 = getCharCoordinates(PLAYER_PED)
    if wasKeyPressed(r3_0.VK_UP) and not sampIsChatInputActive() then
      setCharCoordinates(PLAYER_PED, r0_42, r1_42, r2_42 + 2)
    end
    if wasKeyPressed(r3_0.VK_DOWN) and not sampIsChatInputActive() then
      setCharCoordinates(PLAYER_PED, r0_42, r1_42, r2_42 - 2)
    end
    obj1 = createObject(19372, r0_42, r1_42, r2_42 - 2.85)
    setObjectQuaternion(obj1, 1.5, 0, 0.7, 0)
    wait(300)
    deleteObject(obj1)
  end
  local r7_42 = nil	-- notice: implicit variable refs by block#[102, 104, 110]
  if act1 and GUI.MULTIPLAYER.TROLL.v and isCharInAnyCar(PLAYER_PED) then
    local r0_42, r1_42, r2_42 = getActiveCameraCoordinates()
    local r3_42, r4_42, r5_42 = getActiveCameraPointAt()
    setCarHeading(storeCarCharIsInNoSave(playerPed), getHeadingFromVector2d(r3_42 - r0_42, r4_42 - r1_42))
    local r6_42 = storeCarCharIsInNoSave(PLAYER_PED)
    setCarProofs(r6_42, true, true, true, true, true)
    r7_42 = isKeyDown(r3_0.VK_W)
    if r7_42 then
      setCarForwardSpeed(r6_42, 140)
    end
    r7_42 = isKeyDown(r3_0.VK_SPACE)
    if r7_42 then
      setCarForwardSpeed(r6_42, 0)
    end
  end
  if active2 and GUI.MULTIPLAYER.ALLFREZE.v then
    local r0_42, r1_42, r2_42 = getCharCoordinates(PLAYER_PED)
    _, Ped_ = findAllRandomCharsInSphere(r0_42, r1_42, r2_42, 5, true, false)
    if _ then
      local r3_42, r4_42 = sampGetPlayerIdByCharHandle(Ped_)
      if r3_42 then
        sampSendChat("/mostrarrg " .. r4_42)
        printStringNow("PARANDO JOGADOR " .. r4_42, 250)
        wait(deadinside)
        sampSendChat("/mostrarrg " .. r4_42)
        printStringNow("PARANDO JOGADOR " .. r4_42, 250)
        wait(deadinside)
        sampSendChat("/mostrarrg " .. r4_42)
        printStringNow("PARANDO JOGADOR " .. r4_42, 250)
        wait(deadinside)
        sampSendChat("/beijar " .. r4_42)
        printStringNow("PARANDO JOGADOR " .. r4_42, 250)
        wait(deadinside)
        sampSendChat("/beijar " .. r4_42)
        printStringNow("PARANDO JOGADOR " .. r4_42, 250)
        wait(deadinside)
        sampSendChat("/beijar " .. r4_42)
        printStringNow("PARANDO JOGADOR " .. r4_42, 250)
      end
    end
  end
  if GUI.MULTIPLAYER.FAKELAGS.v then
    sampSetSendrate(1, 1000)
    sampSetSendrate(2, 1000)
    sampSetSendrate(3, 1000)
  else
    sampSetSendrate(1, 0)
    sampSetSendrate(2, 0)
    sampSetSendrate(3, 0)
  end
  local r8_42 = nil	-- notice: implicit variable refs by block#[102, 104, 110]
  local r9_42 = nil	-- notice: implicit variable refs by block#[101, 109]
  if GUI.MULTIPLAYER.ENGATARVEICULOS.v and isKeyDown(VK_CONTROL) then
    local r0_42, r1_42 = getScreenResolution()
    r0_42 = r0_42 / 2 - radius / 2
    r1_42 = r1_42 / 3.3 - radius / 2
    renderDrawLine(r0_42, r1_42, r0_42 + radius, r1_42, 3, -1)
    renderDrawLine(r0_42, r1_42, r0_42, r1_42 + radius + 3, 3, -1)
    renderDrawLine(r0_42, r1_42 + radius, r0_42 + radius, r1_42 + radius, 3, -1)
    renderDrawLine(r0_42 + radius, r1_42, r0_42 + radius, r1_42 + radius, 3, -1)
    local r2_42 = getAllVehicles()
    local r3_42 = true
    r5_42 = 0
    if r5_42 < #r0_42 then
      while true do
        for r7_42 = 1, #r0_42, 1 do
          r8_42 = r2_42[r7_42]
          r9_42 = getCarCharIsUsing(1)
          if r8_42 ~= r9_42 then
            local r8_42, r9_42, r10_42 = getCarCoordinates(r2_42[r7_42])
            local r11_42, r12_42 = convert3DCoordsToScreen(r8_42, r9_42, r10_42)
            local r13_42, r14_42, r15_42 = getCharCoordinates(1)
            if r0_42 <= r11_42 and r11_42 <= r0_42 + radius and r1_42 <= r12_42 and r12_42 <= r1_42 + radius and isCarOnScreen(r2_42[r7_42]) and getDistanceBetweenCoords3d(r13_42, r14_42, r15_42, r8_42, r9_42, r10_42) <= 20 then
              renderDrawLine(r11_42, r12_42, r0_42 + radius / 2, r1_42 + radius / 2, 3, -1)
              trailer = r2_42[r7_42]
              r3_42 = false
              break
            end
          end
        end
      end
    end
    if r3_42 then
      trailer = nil
    end
  end
  if isCharInAnyCar(1) and doesVehicleExist(trailer) then
    if isTrailerAttachedToCab(trailer, getCarCharIsUsing(1)) then
      detachTrailerFromCab(trailer, getCarCharIsUsing(1))
      trailer = nil
    else
      attachTrailerToCab(trailer, getCarCharIsUsing(1))
    end
    trailer = nil
  end
  if GUI.MULTIPLAYER.DESTROIRVEICULOS.v then
    for r4_42, r5_42 in pairs(getAllVehicles()) do
      local r6_42, r7_42, r8_42 = getCharCoordinates(PLAYER_PED)
      local r9_42, r10_42, r11_42 = pcall(isCarInArea3d, r5_42, r6_42 + g_radius, r7_42 + g_radius, r8_42 + g_radius, r6_42 - g_radius, r7_42 - g_radius, r8_42 - g_radius, false)
      if r9_42 and r10_42 then
        local r12_42, r13_42 = sampGetVehicleIdByCarHandle(r5_42)
        if r12_42 and getDriverOfCar(r5_42) == -1 then
          target = r13_42
          state = true
          local r14_42, r15_42, r16_42 = getActiveCameraPointAt()
          pcall(sampForceOnfootSync)
          pcall(sampForceUnoccupiedSyncSeatId, target, 0)
          sampSendDamageVehicle(target, 0, 0, 0, 99999999)
          state = false
          for r20_42 = 0, 5, 1 do
            pcall(sampForceOnfootSync)
          end
          wait(60)
        end
      end
    end
  end
  if GUI.MULTIPLAYER.TELEPORT.v and isKeyDown(VK_MENU) then
    local r0_42, r1_42, r2_42, r3_42 = getTargetBlipCoordinatesFixed()
    if (args == nil or not args:match("%w+ %d+")) and args ~= "" and args == "cpm" then
      r0_42, r1_42, r2_42, r3_42 = SearchMarker()
    end
    if r0_42 then
      percent = 0
      packets = 0
      tp = true
      local r4_42 = incar
      if r4_42 then
        r5_42 = storeCarCharIsInNoSave(PLAYER_PED)
        freezeCarPosition(r5_42, true)
      else
        freezeCharPosition(PLAYER_PED, true)
      end
      r7_42, r8_42, r9_42 = getCharCoordinates(PLAYER_PED)
      local r10_42 = getDistanceBetweenCoords2d(r4_42, r5_42, r1_42, r2_42)
      local r11_42 = math.rad(getHeadingFromVector2d(r1_42 - r4_42, r2_42 - r5_42))
      r11_42 = -r0_42
      local r12_42 = samp_create_sync_data
      local r13_42 = incar
      if r13_42 then
        r13_42 = "vehicle"
      else
        r13_42 = "player"
      end
      r12_42 = r12_42(r13_42)
      if tp_dist < r10_42 then
        local r15_42 = tp_dist
        for r16_42 = r10_42 - tp_dist, 0, -r0_42 do
          local r17_42 = {
            nil,
            0,
            0
          }
          local r18_42 = incar
          if r18_42 then
            r18_42 = -0.1
          else
            r18_42 = -1
          end
          r17_42[3] = r18_42
          r12_42.moveSpeed = r17_42
          for r20_42 = r9_42, -125, -25 do
            r12_42.position = {
              r7_42,
              r8_42,
              r20_42
            }
            r12_42.send()
          end
          r12_42.moveSpeed = {
            nil,
            0,
            0,
            0
          }
          r17_42 = math.sin(r11_42)
          r18_42 = math.cos(r11_42)
          r9_42 = -60
          r8_42 = r8_42 + r18_42 * tp_dist
          r7_42 = r7_42 + r17_42 * tp_dist
          r12_42.position = {
            r7_42,
            r8_42,
            r9_42
          }
          r12_42.send()
          percent = math.calculate(0, 100, r10_42, 0, r16_42)
          setCharCoordinates(PLAYER_PED, r7_42, r8_42, r9_42)
          packets = packets + 1
          wait(waiting)
        end
      end
      r13_42 = {
        nil,
        0,
        0
      }
      local r14_42 = incar
      if r14_42 then
        r14_42 = -0.1
      else
        r14_42 = -1
      end
      r13_42[3] = r14_42
      r12_42.moveSpeed = r13_42
      for r16_42 = r9_42, -125, -25 do
        r12_42.position = {
          r7_42,
          r8_42,
          r16_42
        }
        r12_42.send()
      end
      r12_42.position = {
        r1_42,
        r2_42,
        r3_42
      }
      r12_42.send()
      setCharCoordinates(PLAYER_PED, r1_42, r2_42, r3_42)
      if incar then
        freezeCarPosition(storeCarCharIsInNoSave(PLAYER_PED), false)
      else
        freezeCharPosition(PLAYER_PED, false)
      end
      tp = false
    end
  end
  if GUI.MULTIPLAYER.RESPAWNARVEICULOS.v then
    for r3_42, r4_42 in pairs(getAllVehicles()) do
      local r5_42, r6_42 = sampGetVehicleIdByCarHandle(r4_42)
      if r5_42 then
        sampSendVehicleDestroyed(r6_42)
        wait(60)
      end
    end
  end
  return false
end
function AIMBOT()
  -- line: [0, 0] id: 41
  if act4 and GUI.AIMBOT.PROAIM.v and getCurrentCharWeapon(playerPed) ~= 0 and isKeyDown(r3_0.VK_RBUTTON) then
    local r0_41 = GetPedPro()
    if r0_41 ~= -1 then
      local r1_41, r2_41 = sampGetCharHandleBySampPlayerId(r0_41)
      if r1_41 and doesCharExist(r2_41) and not isCharDead(r2_41) and r2_41 ~= playerPed then
        local r3_41 = {
          getCharCoordinates(playerPed)
        }
        local r4_41 = {
          getCharCoordinates(playerPed)
        }
        local r5_41, r6_41, r7_41 = getActiveCameraCoordinates()
        local r8_41, r9_41, r10_41 = getActiveCameraPointAt()
        local r11_41 = getCharHeading(playerPed)
        local r12_41 = getHeadingFromVector2d(r8_41 - r5_41, r9_41 - r6_41)
        local r13_41 = {
          r3_41[1] - r5_41,
          r3_41[2] - r6_41
        }
        local r18_41 = math.rad(r12_41)
        r18_41 = math.rad(r12_41)
        r18_41 = math.rad(r12_41 + 90)
        local r19_41 = math.rad(r12_41)
        r19_41 = math.rad(r12_41)
        r19_41 = math.rad(r12_41 + 90)
        setCharCoordinates(r2_41, r3_41[1] + math.sin(-r0_41) * 1.1 + math.sin(-r0_41) / 2 - math.sin(-r0_41) * 0.3, r3_41[2] + math.cos(-r0_41) * 1.1 + math.cos(-r0_41) / 2 - math.cos(-r0_41) * 0.3, r3_41[3] - 0.6)
        setCharHeading(r2_41, r11_41)
      end
    end
  end
  if GUI.AIMBOT.ATIVAR.v and isKeyDown(VK_RBUTTON) and (not GUI.AIMBOT.FIRE.v or GUI.AIMBOT.FIRE.v and isKeyDown(VK_LBUTTON)) then
    local r0_41 = GetNearestPed()
    if r0_41 ~= -1 then
      local r1_41 = sampGetPlayerIdByCharHandle(PLAYER_PED)
      if GUI.AIMBOT.IGNORESTUN.v and not CheckStuned() then
        return false
      end
      if GUI.AIMBOT.FILTRO.v and sampGetPlayerColor(r1_41) == sampGetPlayerColor(r0_41) then
        return false
      end
      local r2_41, r3_41 = sampGetCharHandleBySampPlayerId(r0_41)
      local r4_41 = {
        getActiveCameraCoordinates()
      }
      local r5_41 = {
        GetBodyPartCoordinates(GetNearestBone(r3_41), r3_41)
      }
      if not GUI.AIMBOT.VISIVEL.v or GUI.AIMBOT.VISIVEL.v and isLineOfSightClear(r4_41[1], r4_41[2], r4_41[3], r5_41[1], r5_41[2], r5_41[3], true, true, false, true, true) then
        local r6_41 = getCurrentCharWeapon(PLAYER_PED)
        if 22 <= r6_41 and r6_41 <= 29 or r6_41 == 32 then
          coefficent = 0.04253
        elseif r6_41 == 30 or r6_41 == 31 then
          coefficent = 0.028
        end
        local r7_41 = {
          r4_41[1] - r5_41[1],
          r4_41[2] - r5_41[2]
        }
        local r8_41 = math.acos(r7_41[1] / math.sqrt((math.pow(r7_41[1], 2) + math.pow(r7_41[2], 2))))
        local r9_41 = {
          fix(representIntAsFloat(readMemory(11989592, 4, false))),
          fix(representIntAsFloat(readMemory(11989576, 4, false)))
        }
        if r7_41[1] <= 0 and 0 <= r7_41[2] or 0 <= r7_41[1] and 0 <= r7_41[2] then
          dif = r8_41 + coefficent - r9_41[1]
        end
        if 0 <= r7_41[1] and r7_41[2] <= 0 or r7_41[1] <= 0 and r7_41[2] <= 0 then
          dif = -r0_41 + coefficent - r9_41[1]
        end
        if GUI.AIMBOT.DINAMICO.v then
          multiplier = 5
        else
          multiplier = 1
        end
        local r10_41 = dif / GUI.AIMBOT.SUAVIDADE.v * multiplier * GUI.AIMBOT.SUPERSUA.v
        if GUI.AIMBOT.DINAMICO.v then
          if r10_41 > 0 then
            if r10_41 < lastsmooth then
              r10_41 = r10_41 * lastsmooth / r10_41
            end
          else
            local r12_41 = lastsmooth
            if -r0_41 < -r0_41 then
              local r11_41 = lastsmooth
              r10_41 = r10_41 * -r0_41 / -r0_41
            end
          end
          lastsmooth = r10_41
        end
        if -1 < r10_41 and r10_41 < 0.5 and -2 < dif and dif < 2 then
          r9_41[1] = r9_41[1] + r10_41
          setCameraPositionUnfixed(r9_41[2], r9_41[1])
        end
      end
    end
  end
  return false
end
function ESP()
  -- line: [0, 0] id: 40
  local r0_40 = act3
  if r0_40 then
    r0_40 = GUI.ESP.WALLHACK.v
    if r0_40 then
      for r3_40 = 0, sampGetMaxPlayerId(), 1 do
        if sampIsPlayerConnected(r3_40) then
          local r4_40, r5_40 = sampGetCharHandleBySampPlayerId(r3_40)
          local r7_40, r8_40, r9_40, r10_40 = explode_argb(sampGetPlayerColor(r3_40))
          local r11_40 = join_argb(255, r8_40, r9_40, r10_40)
          if r4_40 and doesCharExist(r5_40) and isCharOnScreen(r5_40) then
            local r12_40 = {
              getCharCoordinates(PLAYER_PED)
            }
            local r13_40 = {
              GetBodyPartCoordinates(8, r5_40)
            }
            local r14_40, r15_40 = convert3DCoordsToScreen(r12_40[1], r12_40[2], r12_40[3])
            local r16_40, r17_40 = convert3DCoordsToScreen(r13_40[1], r13_40[2], r13_40[3])
            local r18_40, r19_40 = sampGetPlayerIdByCharHandle(r5_40)
            renderFontDrawText(font, "JOGADOR: " .. sampGetPlayerNickname(r19_40) .. "\nID [" .. r19_40 .. "]\nDISTANCIA: [" .. string.format("%0.2f", getDistanceBetweenCoords3d(r12_40[1], r12_40[2], r12_40[3], r13_40[1], r13_40[2], r13_40[3])) .. "] M", r16_40, r17_40 - 50, 4278222848, -1)
          end
        end
      end
    end
  end
  for r3_40 = 0, sampGetMaxPlayerId(true), 1 do
    if sampIsPlayerConnected(r3_40) then
      local r4_40, r5_40 = sampGetCharHandleBySampPlayerId(r3_40)
      if r4_40 and isCharOnScreen(r5_40) then
        local r6_40 = {
          GetBodyPartCoordinates(3, PLAYER_PED)
        }
        local r7_40 = {
          GetBodyPartCoordinates(3, r5_40)
        }
        if isLineOfSightClear(r6_40[1], r6_40[2], r6_40[3], r7_40[1], r7_40[2], r7_40[3], true, true, false, true, true) then
          color = 4278255360
        else
          color = 4294901760
        end
        if GUI.ESP.ESPLINE.v then
          local r8_40 = {
            convert3DCoordsToScreen(GetBodyPartCoordinates(3, PLAYER_PED))
          }
          local r9_40 = {
            convert3DCoordsToScreen(GetBodyPartCoordinates(3, r5_40))
          }
          renderDrawLine(r8_40[1], r8_40[2], r9_40[1], r9_40[2], 1, color)
        end
        if GUI.ESP.ESPESQUELETO.v then
          local r8_40 = {
            nil,
            3,
            4,
            5,
            51,
            52,
            41,
            42,
            31,
            32,
            33,
            21,
            22,
            23,
            2
          }
          for r12_40 = 1, #r0_40, 1 do
            pos1 = {
              GetBodyPartCoordinates(r8_40[r12_40], r5_40)
            }
            pos2 = {
              GetBodyPartCoordinates(r8_40[r12_40] + 1, r5_40)
            }
            pos1Screen = {
              convert3DCoordsToScreen(pos1[1], pos1[2], pos1[3])
            }
            pos2Screen = {
              convert3DCoordsToScreen(pos2[1], pos2[2], pos2[3])
            }
            renderDrawLine(pos1Screen[1], pos1Screen[2], pos2Screen[1], pos2Screen[2], 1, color)
          end
          for r12_40 = 4, 5, 1 do
            pos2 = {
              GetBodyPartCoordinates(r12_40 * 10 + 1, r5_40)
            }
            pos2Screen = {
              convert3DCoordsToScreen(pos2[1], pos2[2], pos2[3])
            }
            renderDrawLine(pos1Screen[1], pos1Screen[2], pos2Screen[1], pos2Screen[2], 1, color)
          end
          local r9_40 = {
            nil,
            53,
            43,
            24,
            34,
            6
          }
          for r13_40 = 1, #r0_40, 1 do
            pos = {
              GetBodyPartCoordinates(r9_40[r13_40], r5_40)
            }
            pos1Screen = {
              convert3DCoordsToScreen(pos[1], pos[2], pos[3])
            }
          end
        end
        if GUI.ESP.ESPCAIXA.v then
          local r8_40 = {
            GetBodyPartCoordinates(8, r5_40)
          }
          local r9_40 = {
            GetBodyPartCoordinates(44, r5_40)
          }
          local r10_40 = {
            x = r8_40[1] - 0.5,
            y = r8_40[2],
            z = r8_40[3] + 0.35,
          }
          local r11_40 = {
            x = r8_40[1] + 0.5,
            y = r8_40[2],
            z = r8_40[3] - 0.35,
          }
          local r12_40 = {
            x = r9_40[1] + 0.5,
            y = r9_40[2],
            z = r9_40[3] - 0.35,
          }
          local r13_40 = {
            convert3DCoordsToScreen(r10_40.x, r10_40.y, r10_40.z)
          }
          local r14_40 = {
            convert3DCoordsToScreen(r11_40.x, r11_40.y, r10_40.z)
          }
          local r15_40 = {
            convert3DCoordsToScreen(r10_40.x, r12_40.y, r12_40.z)
          }
          local r16_40 = {
            convert3DCoordsToScreen(r11_40.x, r12_40.y, r12_40.z)
          }
          renderDrawLine(r13_40[1], r13_40[2], r14_40[1], r14_40[2], 1, color)
          renderDrawLine(r15_40[1], r15_40[2], r16_40[1], r16_40[2], 1, color)
          renderDrawLine(r13_40[1], r13_40[2], r15_40[1], r15_40[2], 1, color)
          renderDrawLine(r14_40[1], r14_40[2], r16_40[1], r16_40[2], 1, color)
        end
        if GUI.ESP.ESPINFO.v then
          local r8_40 = {
            GetBodyPartCoordinates(8, r5_40)
          }
          local r9_40 = {
            x = r8_40[1] - 0.44,
            y = r8_40[2],
            z = r8_40[3],
          }
          local r10_40 = {
            convert3DCoordsToScreen(r9_40.x, r9_40.y, r9_40.z)
          }
          renderFontDrawText(font, string.format("VELOCIDADE: %.1f\nNOME: %s\nDISTANCIA: %.1f\nSKIN: %d\nAFK: %s", getCharSpeed(r5_40), sampGetPlayerNickname(r3_40), math.sqrt(math.pow(r7_40[1] - r6_40[1], 2) + math.pow(r7_40[2] - r6_40[2], 2) + math.pow(r7_40[3] - r6_40[3], 2)), getCharModel(r5_40), tostring(sampIsPlayerPaused(r3_40))), r10_40[1], r10_40[2], color)
        end
      end
    end
  end
  return false
end
function actor()
  -- line: [0, 0] id: 38
  r1_0.onSendPlayerSync = function(r0_39)
    -- line: [0, 0] id: 39
    if state1 and GUI.actor.INVISIVEL.v then
      local r1_39, r2_39, r3_39 = getCharCoordinates(PLAYER_PED)
      r0_39.position.x = r1_39 + 5
      r0_39.position.y = r2_39 + 5
      r0_39.position.z = r3_39 - 15
    end
  end
  if GUI.actor.GODMODEQUEDAS.v then
    activate = not activate
    if activate then
      setCharProofs(playerPed, true, true, true, true, true)
      writeMemory(9867630, 1, 1, false)
    else
      setCharProofs(playerPed, false, false, false, false, false)
      writeMemory(9867630, 1, 0, false)
    end
    if activate then
      setCharProofs(playerPed, true, true, true, true, true)
      writeMemory(9867630, 1, 1, false)
    end
    activate = not activate
    if activate then
      setCharProofs(playerPed, true, true, true, true, true)
      writeMemory(9867630, 1, 1, false)
    else
      setCharProofs(playerPed, false, false, false, false, false)
      writeMemory(9867630, 1, 0, false)
    end
  end
  if GUI.actor.AIRBREAK.v then
    if wasKeyPressed(VK_RSHIFT) then
      airbreak = not airbreak
    end
    if airbreak then
      local r0_38 = {
        getCharCoordinates(PLAYER_PED)
      }
      Coords = {
        r0_38[1],
        r0_38[2],
        r0_38[3],
        nil,
        0,
        getCharHeading(PLAYER_PED)
      }
      local r2_38 = getCharHeading(PLAYER_PED)
      local r3_38 = {
        getActiveCameraCoordinates()
      }
      local r4_38 = {
        getActiveCameraPointAt()
      }
      local r5_38 = getHeadingFromVector2d(r4_38[1] - r3_38[1], r4_38[2] - r3_38[2])
      if isKeyDown(VK_W) then
        local r9_38 = math.rad(r5_38)
        Coords[1] = Coords[1] + math.sin(-r0_38) * 0.3
        r9_38 = math.rad(r5_38)
        Coords[2] = Coords[2] + math.cos(-r0_38) * 0.3
        setCharHeading(PLAYER_PED, r5_38)
      elseif isKeyDown(VK_S) then
        local r9_38 = math.rad(r2_38)
        Coords[1] = Coords[1] - math.sin(-r0_38) * 0.3
        r9_38 = math.rad(r2_38)
        Coords[2] = Coords[2] - math.cos(-r0_38) * 0.3
      end
      if isKeyDown(VK_A) then
        local r9_38 = math.rad(r2_38 - 90)
        Coords[1] = Coords[1] - math.sin(-r0_38) * 0.3
        r9_38 = math.rad(r2_38 - 90)
        Coords[2] = Coords[2] - math.cos(-r0_38) * 0.3
      elseif isKeyDown(VK_D) then
        local r9_38 = math.rad(r2_38 + 90)
        Coords[1] = Coords[1] - math.sin(-r0_38) * 0.3
        r9_38 = math.rad(r2_38 + 90)
        Coords[2] = Coords[2] - math.cos(-r0_38) * 0.3
      end
      if isKeyDown(VK_SPACE) then
        Coords[3] = Coords[3] + 0.16666666666666666
      end
      if isKeyDown(VK_LSHIFT) and -95 < Coords[3] then
        Coords[3] = Coords[3] - 0.16666666666666666
      end
      setCharCoordinates(PLAYER_PED, Coords[1], Coords[2], Coords[3] - 1)
    end
  end
  return false
end
if act5 and GUI.actor.CORRIDAINFINITA.v then
  mem.setint8(12046052, 1)
end
if GUI.actor.FAKEMOBILE.v then
  samp.onSendClientJoin(version, mod, nickname, challengeResponse, joinAuthKey, clientVer, challengeResponse2)
  joinAuthKey = "39FB2DEEDB49ACFB8D4EECE6953D2507988CCCF4410"
  clientVer = "0.3.7-BRPS"
  local r9_0 = {
    version,
    mod,
    nickname,
    challengeResponse,
    joinAuthKey,
    clientVer,
    challengeResponse2
  }
  -- close: 0 -- jump: 32768
  return r9_0
end
function VEICULOS()
  -- line: [0, 0] id: 37
  if vrender and GUI.VEICULOS.VRENDER.v then
    veh = getAllVehicles()
    for r3_37, r4_37 in ipairs(veh) do
      if isCarOnScreen(r4_37) then
        model = cars[getCarModel(r4_37) - 399] .. " (" .. tostring(select(2, sampGetVehicleIdByCarHandle(r4_37))) .. ")"
        clr, _ = getCarColours(r4_37)
        cx, cy, cz = getCarCoordinates(r4_37)
        x, y = convert3DCoordsToScreen(cx, cy, cz)
        lenght = renderGetFontDrawTextLength(font, model, true)
        height = renderGetFontDrawHeight(font)
        textcolor = 4278237201
        if getCarDoorLockStatus(r4_37) == 2 then
          textcolor = 4293656576
        end
        renderFontDrawText(font, model, x - (lenght + 5 + 18) / 2, y - (height + 7 + 14) / 2, textcolor, true)
        renderDrawBox(x + (lenght + 5 - 18) / 2, y - 10.5 - 9, 18, 18, 4294967295)
        renderDrawBox(x + (lenght + 5 - 18) / 2 + 2, y - 10.5 - 7, 14, 14, colors[(clr + 1)] / 256 + 4278190080)
        healthbox = lenght + 5 + 18 + 8
        healthbox2 = healthbox * getCarHealth(r4_37) / 1000
        renderDrawBox(x - healthbox / 2 - 1, y + (height + 7 - 14) / 2, healthbox + 2, 14, 4278190080)
        renderDrawBox(x - healthbox / 2, y + (height + 7 - 14) / 2 + 1, healthbox, 12, 4278224095)
        renderDrawBox(x - healthbox / 2, y + (height + 7 - 14) / 2 + 1, healthbox2, 12, 4278213787)
      end
    end
  end
  if GUI.VEICULOS.IMPULSOCARROS.v and isKeyDown(VK_LMENU) and isCharInAnyCar(PLAYER_PED) then
    local r0_37 = storeCarCharIsInNoSave(PLAYER_PED)
    local r1_37 = {
      getCarSpeedVector(r0_37)
    }
    local r2_37 = getCarHeading(r0_37)
    local r3_37 = fpsCorrection() / GUI.VEICULOS.AJUSTEVELOCIDADE.v * 10
    local r4_37 = {
      r3_37,
      r3_37,
      r3_37
    }
    local r6_37 = math.rad(r2_37)
    local r5_37 = math.sin(-r0_37)
    local r7_37 = math.rad(r2_37)
    r6_37 = math.cos(-r0_37)
    if -0.01 < r1_37[1] and r1_37[1] < 0.01 then
      r4_37[1] = 0
    end
    if -0.01 < r1_37[2] and r1_37[2] < 0.01 then
      r4_37[2] = 0
    end
    if r1_37[3] < 0 then
      r7_37 = r4_37[3]
      r4_37[3] = -r0_37
    end
    if -2 < r1_37[3] and r1_37[3] < 15 then
      r4_37[3] = 0
    end
    if 0 < r5_37 and r1_37[1] < 0 then
      r7_37 = r4_37[1]
      r4_37[1] = -r0_37
    end
    if r5_37 < 0 and 0 < r1_37[1] then
      r7_37 = r4_37[1]
      r4_37[1] = -r0_37
    end
    if 0 < r6_37 and r1_37[2] < 0 then
      r7_37 = r4_37[2]
      r4_37[2] = -r0_37
    end
    if r6_37 < 0 and 0 < r1_37[2] then
      r7_37 = r4_37[2]
      r4_37[2] = -r0_37
    end
    applyForceToCar(r0_37, r4_37[1] * r5_37, r4_37[2] * r6_37, r4_37[3] / 2, 0, 0, 0)
  end
  return false
end
function remove_ped_from_car(r0_36)
  -- line: [0, 0] id: 36
  local r1_36, r2_36, r3_36 = getCharCoordinates(r0_36)
  warpCharFromCarToCoord(r0_36, r1_36, r2_36, r3_36 - 4)
end
function get_car_free_passenger_seat(r0_35)
  -- line: [0, 0] id: 35
  for r5_35 = 0, getMaximumNumberOfPassengers(r0_35), 1 do
    if isCarPassengerSeatFree(r0_35, r5_35) then
      return r5_35
    end
  end
  return nil
end
function find_nearest_driving_player_onscreen(r0_33, r1_33, r2_33)
  -- line: [0, 0] id: 33
  local r3_33 = find_nearest_ped(r0_33, r1_33, r2_33, function(r0_34)
    -- line: [0, 0] id: 34
    local r1_34, r2_34 = sampGetPlayerIdByCharHandle(r0_34)
    local r3_34 = isCharInAnyCar(r0_34)
    if r3_34 then
      r3_34 = isCharOnScreen(r0_34)
      if r3_34 then
        r3_34 = r1_34
      end
    end
    return r3_34
  end)
  if r3_33 == nil then
    local r4_33 = nil
    -- close: 0 -- jump: 32768
    return r4_33
  end
  local r4_33, r5_33 = sampGetPlayerIdByCharHandle(r3_33)
  return r5_33
end
function find_nearest_ped(r0_32, r1_32, r2_32, r3_32)
  -- line: [0, 0] id: 32
  local r4_32 = nil
  local r6_32, r7_32 = findAllRandomCharsInSphere(r0_32, r1_32, r2_32, 1000, false, true)
  while true do
    local r5_32 = nil	-- notice: implicit variable refs by block#[5]
    if r6_32 then
      -- LOOP
      if r3_32(r7_32) then
        local r8_32, r9_32, r10_32 = getCharCoordinates(r7_32)
        r4_32 = getDistanceBetweenCoords3d(r0_32, r1_32, r2_32, r8_32, r9_32, r10_32)
        r5_32 = r7_32
      end
      r6_32, r7_32 = findAllRandomCharsInSphere(r0_32, r1_32, r2_32, 1000, true, true)
    else
      break
    end
  end
  return r5_32
end
function is_keycombo_pressed(r0_31)
  -- line: [0, 0] id: 31
  for r4_31 = 1, #r0_31 - 1, 1 do
    if not isKeyDown(r0_31[r4_31]) then
      return false
    end
  end
  return wasKeyPressed(r0_31[#r0_31])
end
function is_key_check_available()
  -- line: [0, 0] id: 30
  -- notice: unreachable block#12
  -- notice: unreachable block#5
  if not isSampfuncsLoaded() then
    return not isPauseMenuActive()
  end
  local r0_30 = isSampfuncsConsoleActive()
  if not r0_30 then
    r0_30 = not isPauseMenuActive()
  else
    r0_30 = false
  end
  if isSampLoaded() and isSampAvailable() and r0_30 then
    if not sampIsChatInputActive() then
      local r1_30 = sampIsDialogActive()
      r0_30 = not r0_30
    else
      r0_30 = false
    end
  end
  return r0_30
end
function teleportToPlayer(r0_29, r1_29, r2_29, r3_29)
  -- line: [0, 0] id: 29
  setCharCoordinates(playerPed, r1_29, r2_29, r3_29)
  sampAddChatMessage(string.format("TELEPORTADO PARA %s", sampGetPlayerNickname(r0_29), r0_29, r1_29, r2_29, r3_29), 65535)
end
function bebra()
  -- line: [0, 0] id: 28
  if not sampIsChatInputActive() and not sampIsDialogActive() and not sampIsCursorActive() and sampIsLocalPlayerSpawned() then
    return true
  end
  return false
end
function sendOnFootRVN(r0_27, r1_27, r2_27)
  -- line: [0, 0] id: 27
  local r3_27 = samp_create_sync_data("player")
  local r4_27, r5_27, r6_27 = getActiveCameraCoordinates()
  local r7_27, r8_27, r9_27 = getActiveCameraPointAt()
  local r10_27 = getHeadingFromVector2d(r7_27 - r4_27, r8_27 - r5_27)
  r3_27.position = {
    r0_27,
    r1_27,
    r2_27
  }
  for r14_27 = 0, 3, 1 do
    r3_27.quaternion[r14_27] = 0
  end
  local r13_27 = math.rad(r10_27)
  r3_27.moveSpeed.x = math.sin(-r0_27)
  r13_27 = math.rad(r10_27)
  r3_27.moveSpeed.y = math.cos(-r0_27)
  r3_27.moveSpeed.z = 7
  r3_27.specialAction = 6
  r3_27.animationId = 1076
  r3_27.send()
end
function r1_0.onApplyPlayerAnimation(r0_26, r1_26, r2_26, r3_26, r4_26, r5_26, r6_26, r7_26, r8_26)
  -- line: [0, 0] id: 26
  if (myveh ~= -1 or GUI.MULTIPLAYER.RVANKA or ini.incar.state) and r0_26 == select(2, sampGetPlayerIdByCharHandle(1)) and isCharInAnyCar(1) then
    return false
  end
end
function GetPedPro()
  -- line: [0, 0] id: 25
  local r0_25 = nil
  r0_25 = 5000
  local r1_25 = -1
  for r5_25 = 0, sampGetMaxPlayerId(true), 1 do
    if sampIsPlayerConnected(r5_25) then
      local r6_25, r7_25 = sampGetCharHandleBySampPlayerId(r5_25)
      if r6_25 and isCharOnScreen(r7_25) then
        local r8_25 = {
          convertGameScreenCoordsToWindowScreenCoords(339.1, 179.1)
        }
        local r9_25 = {
          getCharCoordinates(r7_25)
        }
        local r10_25 = {
          convert3DCoordsToScreen(r9_25[1], r9_25[2], r9_25[3])
        }
        local r11_25 = math.sqrt(math.pow(r10_25[1] - r8_25[1], 2) + math.pow(r10_25[2] - r8_25[2], 2))
        if r11_25 >= 1 then
          local r12_25 = 80 < r11_25
        else
          goto label_66	-- block#6 is visited secondly
        end
        if not check then
          local r12_25 = {
            getCharCoordinates(playerPed)
          }
          local r13_25 = {
            getCharCoordinates(r7_25)
          }
          local r14_25 = math.sqrt(math.pow(r13_25[1] - r12_25[1], 2) + math.pow(r13_25[2] - r12_25[2], 2) + math.pow(r13_25[3] - r12_25[3], 2))
          if r14_25 < r0_25 then
            r1_25 = r5_25
            r0_25 = r14_25
          end
        end
      end
    end
  end
  return r1_25
end
function GetBodyPartCoordinates(r0_24, r1_24)
  -- line: [0, 0] id: 24
  local r2_24 = getCharPointer(r1_24)
  local r3_24 = r6_0.new("float[3]")
  getBonePosition(r6_0.cast("void*", r2_24), r3_24, r0_24, true)
  return r3_24[0], r3_24[1], r3_24[2]
end
function join_argb(r0_23, r1_23, r2_23, r3_23)
  -- line: [0, 0] id: 23
  return bit.bor(bit.bor(bit.bor(r3_23, bit.lshift(r2_23, 36)), bit.lshift(r1_23, 255)), bit.lshift(r0_23, 1))
end
function explode_argb(r0_22)
  -- line: [0, 0] id: 22
  return bit.band(bit.rshift(r0_22, 24), 255), bit.band(bit.rshift(r0_22, 16), 255), bit.band(bit.rshift(r0_22, 8), 255), bit.band(r0_22, 255)
end
function r1_0.onApplyPlayerAnimation(r0_21)
  -- line: [0, 0] id: 21
  if active2 and GUI.MULTIPLAYER.ALLFREZE.v then
    return r0_21 ~= select(2, sampGetPlayerIdByCharHandle(PLAYER_PED))
  end
end
function onReceiveRpc(r0_20, r1_20)
  -- line: [0, 0] id: 20
  if GAMEMODE then
    if r0_20 == 14 or r0_20 == 21 or r0_20 == 52 or r0_20 == 53 or r0_20 == 68 or r0_20 == 74 or r0_20 == 86 or r0_20 == 87 or r0_20 == 129 or r0_20 == 153 or r0_20 == 157 or r0_20 == 158 or r0_20 == 166 then
      return false
    end
    if r0_20 == 93 then
      local r2_20 = raknetBitStreamReadInt32(r1_20)
      if raknetBitStreamReadString(r1_20, raknetBitStreamReadInt32(r1_20)):find("%(%( ×åðåç 30 ñåêóíä âû ñìîæåòå ñðàçó îòïðàâèòüñÿ â áîëüíèöó èëè ïîäîæäàòü âðà÷åé %)%)") and r2_20 == -1347440641 then
        return false
      end
    end
  end
end
function fpsCorrection()
  -- line: [0, 0] id: 19
  return representIntAsFloat(readMemory(12045148, 4, false))
end
function r1_0.onSetPlayerPos()
  -- line: [0, 0] id: 18
  if state then
    return false
  end
end
function r1_0.onSendPlayerSync(r0_17)
  -- line: [0, 0] id: 17
  if state then
    local r1_17, r2_17 = sampGetCarHandleBySampVehicleId(target)
    if r1_17 then
      local r3_17, r4_17, r5_17 = getCarCoordinates(r2_17)
      r0_17.position = {
        x = r3_17,
        y = r4_17,
        z = r5_17 + 1,
      }
      r0_17.surfingVehicleId = target
      r0_17.surfingOffsets.z = 1
    end
  end
end
function r1_0.onSendPlayerSync(r0_16)
  -- line: [0, 0] id: 16
  if tp then
    return false
  end
  r0_16.position.z = -990
  local r1_16 = {
    nil,
    0,
    0
  }
  local r2_16 = incar
  if r2_16 then
    r2_16 = -0.1
  else
    r2_16 = -1
  end
  r1_16[3] = r2_16
  r0_16.moveSpeed = r1_16
end
function SearchMarker()
  -- line: [0, 0] id: 15
  local r0_15 = false
  if not r0_15 then
    local r1_15 = 0
    local r2_15 = 0
    local r3_15 = 0
    for r7_15 = 0, 31, 1 do
      local r8_15 = 0
      r8_15 = r7_15 * 56 + 13103464
      local r9_15 = representIntAsFloat(readMemory(r8_15 + 0, 4, false))
      local r10_15 = representIntAsFloat(readMemory(r8_15 + 4, 4, false))
      local r11_15 = representIntAsFloat(readMemory(r8_15 + 8, 4, false))
      if r9_15 ~= 0 or r10_15 ~= 0 or r11_15 ~= 0 then
        r1_15 = r9_15
        r2_15 = r10_15
        r3_15 = r11_15
        r0_15 = true
      end
    end
    return r0_15, r1_15, r2_15, r3_15
  end
end
function getTargetBlipCoordinatesFixed()
  -- line: [0, 0] id: 14
  local r0_14, r1_14, r2_14, r3_14 = getTargetBlipCoordinates()
  local r8_14 = nil	-- notice: implicit variable refs by block#[2]
  local r9_14 = nil	-- notice: implicit variable refs by block#[2]
  local r10_14 = nil	-- notice: implicit variable refs by block#[2]
  local r11_14 = nil	-- notice: implicit variable refs by block#[2]
  if not r0_14 then
    return false
  end
  requestCollision(r1_14, r2_14)
  loadScene(r1_14, r2_14, r3_14)
  r8_14, r9_14, r10_14, r11_14 = getTargetBlipCoordinates()
  return r8_14, r9_14, r10_14, r11_14
end
function samp_create_sync_data(r0_10, r1_10)
  -- line: [0, 0] id: 10
  local r2_10 = require("ffi")
  local r3_10 = require("sampfuncs")
  local r4_10 = require("samp.raknet")
  if not r1_10 then
    r1_10 = true
  end
  local r6_10 = ({
    player = {
      nil,
      r4_10.PACKET.PLAYER_SYNC,
      sampStorePlayerOnfootData
    },
    vehicle = {
      nil,
      r4_10.PACKET.VEHICLE_SYNC,
      sampStorePlayerIncarData
    },
    passenger = {
      nil,
      r4_10.PACKET.PASSENGER_SYNC,
      sampStorePlayerPassengerData
    },
    aim = {
      nil,
      r4_10.PACKET.AIM_SYNC,
      sampStorePlayerAimData
    },
    trailer = {
      nil,
      r4_10.PACKET.TRAILER_SYNC,
      sampStorePlayerTrailerData
    },
    unoccupied = {
      nil,
      r4_10.PACKET.UNOCCUPIED_SYNC
    },
    bullet = {
      nil,
      r4_10.PACKET.BULLET_SYNC
    },
    spectator = {
      nil,
      r4_10.PACKET.SPECTATOR_SYNC
    },
  })[r0_10]
  local r7_10 = "struct " .. r6_10[1]
  local r8_10 = r2_10.new(r7_10, {})
  local r9_10 = tonumber(r2_10.cast("uintptr_t", r2_10.new(r7_10 .. "*", r8_10)))
  if r1_10 then
    local r10_10 = r6_10[3]
    if r10_10 then
      local r11_10 = nil
      local r12_10 = nil	-- notice: implicit variable refs by block#[7]
      if r1_10 == true then
        r11_10, r12_10 = sampGetPlayerIdByCharHandle(PLAYER_PED)
      else
        r12_10 = tonumber(r1_10)
      end
      r10_10(r12_10, r9_10)
    end
  end
  return setmetatable({
    send = function()
      -- line: [0, 0] id: 13
      local r0_13 = raknetNewBitStream()
      raknetBitStreamWriteInt8(r0_13, r6_10[2])
      raknetBitStreamWriteBuffer(r0_13, r9_10, r2_10.sizeof(r8_10))
      raknetSendBitStreamEx(r0_13, r3_10.HIGH_PRIORITY, r3_10.UNRELIABLE_SEQUENCED, 1)
      raknetDeleteBitStream(r0_13)
    end,
  }, {
    __index = function(r0_12, r1_12)
      -- line: [0, 0] id: 12
      return r8_10[r1_12]
    end,
    __newindex = function(r0_11, r1_11, r2_11)
      -- line: [0, 0] id: 11
      r8_10[r1_11] = r2_11
    end,
  })
end
function math.calculate(r0_9, r1_9, r2_9, r3_9, r4_9)
  -- line: [0, 0] id: 9
  return (r4_9 - r2_9) / (r3_9 - r2_9) * (r1_9 - r0_9) + r0_9
end
function r1_0.onSendPlayerSync(r0_8)
  -- line: [0, 0] id: 8
  if airbreak then
    r0_8.animationId = 1130
    r0_8.moveSpeed = {
      z = -0.89,
      x = 0.89,
      y = 0.89,
    }
  end
end
function r1_0.onSetPlayerPos()
  -- line: [0, 0] id: 7
  if airbreak then
    return false
  end
end
function fix(r0_6)
  -- line: [0, 0] id: 6
  if math.pi < r0_6 then
    r0_6 = r0_6 - math.pi * 2
  else
    local r1_6 = math.pi
    if r0_6 < -r0_6 then
      r0_6 = r0_6 + math.pi * 2
    end
  end
  return r0_6
end
function GetNearestPed()
  -- line: [0, 0] id: 5
  local r0_5 = nil
  if not GUI.AIMBOT.VERIFICARST.v then
    r0_5 = 35
  else
    r0_5 = 20000
  end
  local r1_5 = -1
  for r5_5 = 0, sampGetMaxPlayerId(true), 1 do
    if sampIsPlayerConnected(r5_5) then
      local r6_5, r7_5 = sampGetCharHandleBySampPlayerId(r5_5)
      if r6_5 and isCharOnScreen(r7_5) and not isCharDead(r7_5) then
        local r8_5 = {
          convertGameScreenCoordsToWindowScreenCoords(339.1, 179.1)
        }
        local r9_5 = {
          GetBodyPartCoordinates(GetNearestBone(r7_5), r7_5)
        }
        local r10_5 = {
          convert3DCoordsToScreen(r9_5[1], r9_5[2], r9_5[3])
        }
        local r11_5 = math.sqrt(math.pow(r10_5[1] - r8_5[1], 2) + math.pow(r10_5[2] - r8_5[2], 2))
        if r11_5 >= GUI.AIMBOT.SAFE.v then
          local r12_5 = GUI.AIMBOT.RAIO.v < r11_5
        else
          goto label_88	-- block#10 is visited secondly
        end
        if not check then
          local r12_5 = {
            getCharCoordinates(PLAYER_PED)
          }
          local r13_5 = {
            getCharCoordinates(r7_5)
          }
          local r14_5 = math.sqrt(math.pow(r13_5[1] - r12_5[1], 2) + math.pow(r13_5[2] - r12_5[2], 2) + math.pow(r13_5[3] - r12_5[3], 2))
          if r14_5 < r0_5 then
            r1_5 = r5_5
            r0_5 = r14_5
          end
        end
      end
    end
  end
  return r1_5
end
function CheckStuned()
  -- line: [0, 0] id: 4
  for r3_4, r4_4 in pairs(anims) do
    if isCharPlayingAnim(PLAYER_PED, r4_4) then
      return false
    end
  end
  return true
end
function GetNearestBone(r0_3)
  -- line: [0, 0] id: 3
  local r1_3 = 20000
  local r2_3 = -1
  bone = {
    nil,
    42,
    52,
    23,
    33,
    3,
    22,
    32,
    8
  }
  for r6_3 = 1, 8, 1 do
    local r7_3 = {
      convertGameScreenCoordsToWindowScreenCoords(339.1, 179.1)
    }
    local r8_3 = {
      GetBodyPartCoordinates(bone[r6_3], r0_3)
    }
    local r9_3 = {
      convert3DCoordsToScreen(r8_3[1], r8_3[2], r8_3[3])
    }
    local r10_3 = math.sqrt(math.pow(r9_3[1] - r7_3[1], 2) + math.pow(r9_3[2] - r7_3[2], 2))
    if r10_3 < r1_3 then
      r2_3 = bone[r6_3]
      r1_3 = r10_3
    end
  end
  return r2_3
end
function GetBodyPartCoordinates(r0_2, r1_2)
  -- line: [0, 0] id: 2
  if doesCharExist(r1_2) then
    local r2_2 = getCharPointer(r1_2)
    local r3_2 = r6_0.new("float[3]")
    r7_0(r6_0.cast("void*", r2_2), r3_2, r0_2, true)
    return r3_2[0], r3_2[1], r3_2[2]
  end
end
function guiCustomStyle()
  -- line: [0, 0] id: 1
  r0_0.SwitchContext()
  local r0_1 = r0_0.GetStyle()
  local r1_1 = r0_1.Colors
  local r2_1 = r0_0.Col
  local r3_1 = r0_0.ImVec4
  r0_1.WindowRounding = 10
  r0_1.WindowTitleAlign = r0_0.ImVec2(0.5, 0.5)
  r0_1.ChildWindowRounding = 10
  r0_1.FrameRounding = 10
  r0_1.ItemSpacing = r0_0.ImVec2(9, 4)
  r0_1.ScrollbarSize = 13
  r0_1.ScrollbarRounding = 15
  r0_1.GrabMinSize = 10
  r0_1.GrabRounding = 30
  r1_1[r2_1.FrameBg] = r3_1(0, 0.9, 0, 0.4)
  r1_1[r2_1.FrameBgHovered] = r3_1(0, 0.9, 0, 0.9)
  r1_1[r2_1.FrameBgActive] = r3_1(0, 0.9, 0, 0.3)
  r1_1[r2_1.TitleBg] = r3_1(0, 0.9, 0, 0.4)
  r1_1[r2_1.TitleBgActive] = r3_1(0, 0.6, 0, 0.9)
  r1_1[r2_1.TitleBgCollapsed] = r3_1(0.48, 0.16, 0.16, 1)
  r1_1[r2_1.CheckMark] = r3_1(0, 0.9, 0, 0.9)
  r1_1[r2_1.SliderGrab] = r3_1(0, 0.9, 0, 0.8)
  r1_1[r2_1.SliderGrabActive] = r3_1(0, 0.9, 0, 0.6)
  r1_1[r2_1.Button] = r3_1(0, 0.9, 0, 0.5)
  r1_1[r2_1.ButtonHovered] = r3_1(0, 0.9, 0, 0.2)
  r1_1[r2_1.ButtonActive] = r3_1(0, 0.9, 0, 0.6)
  r1_1[r2_1.Header] = r3_1(0, 0.9, 0, 0.4)
  r1_1[r2_1.HeaderHovered] = r3_1(0, 0.9, 0, 0.4)
  r1_1[r2_1.HeaderActive] = r3_1(0, 0.9, 0, 0.4)
  r1_1[r2_1.Separator] = r1_1[r2_1.Border]
  r1_1[r2_1.SeparatorHovered] = r3_1(0, 0.9, 0, 0.4)
  r1_1[r2_1.SeparatorActive] = r3_1(0, 0.9, 0, 0.4)
  r1_1[r2_1.ResizeGrip] = r3_1(0, 0.9, 0, 0.4)
  r1_1[r2_1.ResizeGripHovered] = r3_1(0, 0.9, 0, 0.4)
  r1_1[r2_1.ResizeGripActive] = r3_1(0, 0.9, 0, 0.4)
  r1_1[r2_1.TextSelectedBg] = r3_1(0, 0.9, 0, 0.4)
  r1_1[r2_1.Text] = r3_1(1, 1, 1, 1)
  r1_1[r2_1.TextDisabled] = r3_1(0.5, 0.5, 0.5, 1)
  r1_1[r2_1.WindowBg] = r3_1(0.06, 0.06, 0.06, 0.94)
  r1_1[r2_1.ChildWindowBg] = r3_1(0, 0.9, 0, 0.4)
  r1_1[r2_1.PopupBg] = r3_1(0, 0.9, 0, 0.4)
  r1_1[r2_1.ComboBg] = r1_1[r2_1.PopupBg]
  r1_1[r2_1.Border] = r3_1(0, 0.9, 0, 0.4)
  r1_1[r2_1.BorderShadow] = r3_1(0, 0, 0, 0)
  r1_1[r2_1.MenuBarBg] = r3_1(0, 0.9, 0, 0.4)
  r1_1[r2_1.ScrollbarBg] = r3_1(0, 0.9, 0, 0.4)
  r1_1[r2_1.ScrollbarGrab] = r3_1(0, 0.9, 0, 0.4)
  r1_1[r2_1.ScrollbarGrabHovered] = r3_1(0, 0.9, 0, 0.4)
  r1_1[r2_1.ScrollbarGrabActive] = r3_1(0, 0.9, 0, 0.4)
  r1_1[r2_1.CloseButton] = r3_1(0, 0.9, 0, 0.4)
  r1_1[r2_1.CloseButtonHovered] = r3_1(0, 0.9, 0, 0.4)
  r1_1[r2_1.CloseButtonActive] = r3_1(0, 0.9, 0, 0.4)
  r1_1[r2_1.PlotLines] = r3_1(0, 0.9, 0, 0.4)
  r1_1[r2_1.PlotLinesHovered] = r3_1(0, 0.9, 0, 0.4)
  r1_1[r2_1.PlotHistogram] = r3_1(0, 0.9, 0, 0.4)
  r1_1[r2_1.PlotHistogramHovered] = r3_1(0, 0.9, 0, 0.4)
  r1_1[r2_1.ModalWindowDarkening] = r3_1(0, 0.9, 0, 0.4)
end
