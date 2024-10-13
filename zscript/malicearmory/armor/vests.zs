
//	Ballistic Vest
Class MaliceBallisticVest : MaliceBallistic{
	Default{
		Inventory.Icon "BVSTA0";
		Inventory.Amount 50;
		Inventory.MaxAmount 50;
		Tag "Ballistic Vest (Level II)";
		Inventory.PickupMessage "Picked up a Ballistic Vest.";
		SinItem.Description "A protective garment designed to absorb and reduce the impact of bullets and shrapnel, commonly used by military, law enforcement, and security personnel. It can feature soft armor panels for handgun protection and may include pockets for adding ballistic plates to guard against higher-velocity rifle rounds.";
		MaliceBallistic.BallisticLevel LEVEL2;
	}
	States{Spawn: BVST A -1; Stop;}
	Override void PostBeginPlay(){
		If(!random(0,3)){self.A_SpawnItem("MaliceSoftArmorPanelKevlar",1);}
		If(!random(0,3)){self.A_SpawnItem("MaliceBallisticPlateSteel",1);}
		If(!random(0,3)){self.A_SpawnItem("MaliceBallisticPlateCeramic",1);}
	}
}
Class MaliceBallisticVestKevlar : MaliceBallisticVest{
	Default{
		Inventory.Amount 75;
		Inventory.MaxAmount 75;
		Tag "Ballistic Vest (Kevlar Level IIIA)";
		MaliceBallistic.BallisticLevel LEVEL3A;
	}
}
Class MaliceBallisticVestSteel : MaliceBallisticVest{
	Default{
		Inventory.Amount 150;
		Inventory.MaxAmount 150;
		Tag "Ballistic Vest (Steel Level III)";
		MaliceBallistic.BallisticLevel LEVEL3;
	}
}
Class MaliceBallisticVestCeramic : MaliceBallisticVest{
	Default{
		Inventory.Amount 125;
		Inventory.MaxAmount 125;
		Tag "Ballistic Vest (Ceramic Level IV)";
		MaliceBallistic.BallisticLevel LEVEL4;
	}
}
//	OTV
Class MaliceOuterTacticalVest : MaliceBallistic{
	Default{
		Inventory.Icon "BVSTB0";
		Inventory.Amount 100;
		Inventory.MaxAmount 100;
		Tag "OTV (Level IIIA)";
		Inventory.PickupMessage "Picked up an OTV.";
		SinItem.Description "A protective vest worn by military and law enforcement personnel, designed to hold soft armor panels and ballistic plates for enhanced protection against bullets and shrapnel. It features modular attachments for carrying gear and can be customized with additional pouches and equipment for combat operations.";
		MaliceBallistic.BallisticLevel LEVEL3A;
	}
	States{Spawn: BVST B -1; Stop;}
	Override void PostBeginPlay(){
		If(!random(0,3)){self.A_SpawnItem("MaliceSoftArmorPanelKevlar",1);}
		If(!random(0,3)){self.A_SpawnItem("MaliceBallisticPlateSteel",1);}
		If(!random(0,3)){self.A_SpawnItem("MaliceBallisticPlateCeramic",1);}
	}
}
Class MaliceOuterTacticalVestKevlar : MaliceOuterTacticalVest{
	Default{
		Inventory.Amount 125;
		Inventory.MaxAmount 125;
		Tag "OTV (Kevlar Level IIIA)";
		MaliceBallistic.BallisticLevel LEVEL3A;
	}
}
Class MaliceOuterTacticalVestSteel : MaliceOuterTacticalVest{
	Default{
		Inventory.Amount 200;
		Inventory.MaxAmount 200;
		Tag "OTV (Steel Level III)";
		MaliceBallistic.BallisticLevel LEVEL3;
	}
}
Class MaliceOuterTacticalVestCeramic : MaliceOuterTacticalVest{
	Default{
		Inventory.Amount 150;
		Inventory.MaxAmount 150;
		Tag "OTV (Ceramic Level IV)";
		MaliceBallistic.BallisticLevel LEVEL4;
	}
}
