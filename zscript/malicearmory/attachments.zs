
Class Malice9mmSuppressor : SinAttachment replaces SinPistolSuppressor{
	Default{
		SinAttachment.AttachTo "MaliceG17";
		Inventory.Icon "ATPTA0";
		Tag "$SINMOD_PISTOLSUPP";
		Inventory.PickupMessage "$SINMOD_PISTOLSUPPPKUP";
		SinItem.Description "$SINMOD_PISTOLSUPPDESC";
		SinAttachment.Noise -3840;
		AttackSound "weapons/spistol";
	}
	States{Spawn: ATPT A -1; Stop;}
}
Class Malice9mmLight : SinAttachment replaces SinPistolLight{
	Default{
		SinAttachment.AttachTo "MaliceG17";
		Inventory.Icon "ATPTB0";
		Tag "$SINMOD_PISTOLLIGHT";
		Inventory.PickupMessage "$SINMOD_PISTOLLIGHTPKUP";
		SinItem.Description "$SINMOD_PISTOLLIGHTDESC";
		SinAttachment.RailType RAIL_LIGHT;
		SinAttachment.RailOffset 10;
	}
	States{Spawn: ATPT B -1; Stop;}
}

Class MaliceShotgunStock : SinAttachment  replaces SinShotgunStock{
	Default{
		SinAttachment.AttachTo "MaliceM37";
		Inventory.Icon "ATSHA0";
		Tag "$SINMOD_SHOTSTOCK";
		Inventory.PickupMessage "$SINMOD_SHOTSTOCKPKUP";
		SinItem.Description "$SINMOD_SHOTSTOCKDESC";
		SinAttachment.Climb -2,-2;
		SinAttachment.SlamFire 1;
	}
	States{Spawn: ATSH A -1; Stop;}
}
Class MaliceShotgunBarrel : SinAttachment replaces SinShotgunBarrel{
	Default{
		SinAttachment.AttachTo "MaliceM37";
		Inventory.Icon "ATSHB0";
		Tag "$SINMOD_SHOTBARREL";
		Inventory.PickupMessage "$SINMOD_SHOTBARRELPKUP";
		SinItem.Description "$SINMOD_SHOTBARRELDESC";
		SinAttachment.MaxAmount 2;
		SinAttachment.HitscanDamage 1;
		SinAttachment.Spread -1,-1;
	}
	States{Spawn: ATSH B -1; Stop;}
}

Class MaliceSSGChoke : SinAttachment replaces SinSSGChoke{
	Default{
		SinAttachment.AttachTo "MaliceM21";
		Inventory.Icon "ATDBA0";
		Tag "$SINMOD_SSGCHOKE";
		Inventory.PickupMessage "$SINMOD_SSGCHOKEPKUP";
		SinItem.Description "$SINMOD_SSGCHOKEDESC";
		SinAttachment.SpreadMultiplier -0.25,-0.25;
	}
	States{Spawn: ATDB A -1; Stop;}
}
Class MaliceSSGScope : SinAttachment replaces SinSSGScope{
	Default{
		SinAttachment.AttachTo "MaliceM21";
		Inventory.Icon "ATDBB0";
		Tag "$SINMOD_SSGSCOPE";
		Inventory.PickupMessage "$SINMOD_SSGSCOPEPKUP";
		SinItem.Description "$SINMOD_SSGSCOPEDESC";
		SinAttachment.ScopeTexture "SCOPCAM1";
		SinAttachment.ScopeReticle "SCOPRET1";
		SinAttachment.ScopeFOV 2.5;
		SinAttachment.ScopeSensitivity 0.5;
	}
	States{Spawn: ATDB B -1; Stop;}
}

Class MaliceSMGScope : SinAttachment replaces SinSMGScope{
	Default{
		SinAttachment.AttachTo "MaliceMP5";
		Inventory.Icon "ATSMA0";
		Tag "$SINMOD_SMGSIGHT";
		Inventory.PickupMessage "$SINMOD_SMGSIGHTPKUP";
		SinItem.Description "$SINMOD_SMGSIGHTDESC";
		SinAttachment.ScopeTexture "SCOPCAM2";
		SinAttachment.ScopeReticle "SCOPRET2";
		SinAttachment.ScopeFOV 7.5;
	}
	States{Spawn: ATSM A -1; Stop;}
}
Class MaliceSMGLaser : SinAttachment replaces SinSMGLaser{
	Default{
		SinAttachment.AttachTo "MaliceMP5";
		Inventory.Icon "ATSMB0";
		Tag "$SINMOD_SMGLASER";
		Inventory.PickupMessage "$SINMOD_SMGLASERPKUP";
		SinItem.Description "$SINMOD_SMGLASERDESC";
		SinAttachment.RailType RAIL_LASER;
		SinAttachment.RailOffset 14;
		SinAttachment.RailColor "green";
	}
	States{Spawn: ATSM B -1; Stop;}
}

Class MaliceChaingunBipod : SinAttachment replaces SinChaingunBipod{
	Default{
		SinAttachment.AttachTo "MaliceChaingun";
		Inventory.Icon "ATMGA0";
		Tag "$SINMOD_CHAINBIPOD";
		Inventory.PickupMessage "$SINMOD_CHAINBIPODPKUP";
		SinItem.Description "$SINMOD_CHAINBIPODDESC";
		SinAttachment.Climb -0.75,-0.75;
		SinAttachment.Bipod 1;
	}
	States{Spawn: ATMG A -1; Stop;}
}
Class MaliceChaingunBarrel : SinAttachment replaces SinChaingunBarrel{
	Default{
		SinAttachment.AttachTo "MaliceChaingun";
		Inventory.Icon "ATMGB0";
		Tag "$SINMOD_CHAINBARREL";
		Inventory.PickupMessage "$SINMOD_CHAINBARRELPKUP";
		SinItem.Description "$SINMOD_CHAINBARRELDESC";
		SinAttachment.FireMode1 999,2;
	}
	States{Spawn: ATMG B -1; Stop;}
}
Class MalicePlasmaRifleHeatsink : SinAttachment replaces SinPlasmaRifleHeatsink{
	Default{
		SinAttachment.AttachTo "MalicePlasmaRifle";
		Inventory.Icon "ATPGA0";
		Tag "$SINMOD_PLASMASINK";
		Inventory.PickupMessage "$SINMOD_PLASMASINKPKUP";
		SinItem.Description "$SINMOD_PLASMASINKDESC";
		SinAttachment.AmmoCost -1;
		SinAttachment.FireMode1 10,5;
	}
	States{Spawn: ATPG A -1; Stop;}
}
Class MalicePlasmaRifleBarrel : SinAttachment replaces SinPlasmaRifleBarrel{
	Default{
		SinAttachment.AttachTo "MalicePlasmaRifle";
		Inventory.Icon "ATPGB0";
		Tag "$SINMOD_PLASMALENS";
		Inventory.PickupMessage "$SINMOD_PLASMALENSPKUP";
		SinItem.Description "$SINMOD_PLASMALENSDESC";
		SinAttachment.FireMode2 1,7;
		SinAttachment.ChargeSound "HellSoldier/ChargeReady2";
		SinAttachment.FullSound "HellSoldier/ChargeReady";
		SinAttachment.CancelSound "HellSoldier/ChargeClose";
		SinAttachment.ReadySound "weapons/plsalt3";
	}
	States{Spawn: ATPG B -1; Stop;}
}
