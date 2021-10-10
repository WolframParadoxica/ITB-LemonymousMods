
local path = GetParentPath(...)
require(path.."palette")

local mod = mod_loader.mods[modApi.currentMod]
local imageOffset = modApi:getPaletteImageOffset(mod.id)
local trait = LApi.library:fetch("trait")

trait:add{
	pawnType = "lmn_ds_Commando",
	icon = "img/combat/icons/icon_tele_B.png",
	desc_title = "Teleporter",
	desc_text = "Teleporting units can move over any terrain tile, but can still get waterlogged",
}

lmn_ds_Commando = Pawn:new{
	Name = "Commando Mech",
	Class = "Prime",
	Image = "lmn_ds_Commando",
	ImageOffset = imageOffset,
	MoveSpeed = 3,
	Health = 2,
	SkillList = { "lmn_ds_PulseRifle" },
	SoundLocation = "/mech/prime/punch_mech/",
	MoveSkill = "lmn_ds_Teleport",
	DefaultTeam = TEAM_PLAYER,
	ImpactMaterial = IMPACT_METAL,
	Massive = true,
	Teleporter = true
}
AddPawnName("lmn_ds_Commando")

lmn_ds_Gunslinger = Pawn:new{
	Name = "Gunslinger Mech",
	Class = "Brute",
	Image = "lmn_ds_Gunslinger",
	ImageOffset = imageOffset,
	MoveSpeed = 2,
	Health = 1,
	SkillList = { "lmn_ds_DualPistols" },
	SoundLocation = "/mech/prime/punch_mech/",
	DefaultTeam = TEAM_PLAYER,
	ImpactMaterial = IMPACT_METAL,
	Massive = true
}
AddPawnName("lmn_ds_Gunslinger")

lmn_ds_Swoop = Pawn:new{
	Name = "Swoop Mech",
	Class = "Science",
	Image = "lmn_ds_Swoop",
	ImageOffset = imageOffset,
	MoveSpeed = 3,
	Health = 2,
	SkillList = { "lmn_ds_HaulerHooks" },
	SoundLocation = "/mech/flying/jet_mech/",
	DefaultTeam = TEAM_PLAYER,
	ImpactMaterial = IMPACT_METAL,
	Massive = true,
	Flying = true
}
AddPawnName("lmn_ds_Swoop")
