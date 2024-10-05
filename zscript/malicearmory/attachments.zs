
Class MalicePlasmaRifleHeatsink : SinAttachment{
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
Class MalicePlasmaRifleBarrel : SinAttachment{
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
