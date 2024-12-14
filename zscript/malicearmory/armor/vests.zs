
//	Ballistic Vest
Class MABallisticVest : MABallistic{
	Default{
		Inventory.Icon "BVSTA0";
		Inventory.Amount 50;
		Inventory.MaxAmount 50;
		Tag "Ballistic Vest (Level II)";
		Inventory.PickupMessage "Picked up a Ballistic Vest.";
		SinItem.Description "A protective garment designed to absorb and reduce the impact of bullets and shrapnel, commonly used by military, law enforcement, and security personnel. It can feature soft armor panels for handgun protection and may include pockets for adding ballistic plates to guard against higher-velocity rifle rounds.";
		MABallistic.BallisticLevel LEVEL2;
	}
	States{Spawn: BVST A -1; Stop;}
	Override void PostBeginPlay(){
		If(!random(0,3)){self.A_SpawnItem("MASoftArmorPanelKevlar",1);}
		If(!random(0,3)){self.A_SpawnItem("MABallisticPlateSteel",1);}
		If(!random(0,3)){self.A_SpawnItem("MABallisticPlateCeramic",1);}
	}
}
Class MABallisticVestKevlar : MABallisticVest{
	Default{
		Inventory.Amount 75;
		Inventory.MaxAmount 75;
		Tag "Ballistic Vest (Kevlar Level IIIA)";
		MABallistic.BallisticLevel LEVEL3A;
	}
}
Class MABallisticVestSteel : MABallisticVest{
	Default{
		Inventory.Amount 150;
		Inventory.MaxAmount 150;
		Tag "Ballistic Vest (Steel Level III)";
		MABallistic.BallisticLevel LEVEL3;
	}
}
Class MABallisticVestCeramic : MABallisticVest{
	Default{
		Inventory.Amount 125;
		Inventory.MaxAmount 125;
		Tag "Ballistic Vest (Ceramic Level IV)";
		MABallistic.BallisticLevel LEVEL4;
	}
}
//	OTV
Class MAOuterTacticalVest : MABallistic{
	Default{
		Inventory.Icon "BVSTB0";
		Inventory.Amount 100;
		Inventory.MaxAmount 100;
		Tag "OTV (Level IIIA)";
		Inventory.PickupMessage "Picked up an OTV.";
		SinItem.Description "A protective vest worn by military and law enforcement personnel, designed to hold soft armor panels and ballistic plates for enhanced protection against bullets and shrapnel. It features modular attachments for carrying gear and can be customized with additional pouches and equipment for combat operations.";
		MABallistic.BallisticLevel LEVEL3A;
	}
	States{Spawn: BVST B -1; Stop;}
	Override void PostBeginPlay(){
		If(!random(0,3)){self.A_SpawnItem("MASoftArmorPanelKevlar",1);}
		If(!random(0,3)){self.A_SpawnItem("MABallisticPlateSteel",1);}
		If(!random(0,3)){self.A_SpawnItem("MABallisticPlateCeramic",1);}
	}
}
Class MAOuterTacticalVestKevlar : MAOuterTacticalVest{
	Default{
		Inventory.Amount 125;
		Inventory.MaxAmount 125;
		Tag "OTV (Kevlar Level IIIA)";
		MABallistic.BallisticLevel LEVEL3A;
	}
}
Class MAOuterTacticalVestSteel : MAOuterTacticalVest{
	Default{
		Inventory.Amount 200;
		Inventory.MaxAmount 200;
		Tag "OTV (Steel Level III)";
		MABallistic.BallisticLevel LEVEL3;
	}
}
Class MAOuterTacticalVestCeramic : MAOuterTacticalVest{
	Default{
		Inventory.Amount 150;
		Inventory.MaxAmount 150;
		Tag "OTV (Ceramic Level IV)";
		MABallistic.BallisticLevel LEVEL4;
	}
}
