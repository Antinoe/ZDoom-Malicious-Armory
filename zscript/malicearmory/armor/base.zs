
/*
Class MalicePlateCarrier : SinItem{
	Default{
		Inventory.Icon "BVSTA0";
		Inventory.Amount 1;
		Inventory.MaxAmount 10;
		Tag "Plate Carrier";
		Inventory.PickupMessage "Picked up a Plate Carrier.";
		SinItem.Description "A tactical vest designed to hold ballistic plates, providing protection against gunfire and shrapnel. Worn by military and law enforcement, it is modular and often includes attachment points for carrying gear and equipment during combat or tactical operations.";
	}
	States{Spawn: BVST A -1; Stop;}
}
*/
Class MaliceBallistic : SinArmor abstract{
	enum MaliceBallisticLevel{
		LEVEL1 = 0, //	Stab protection; Knives, Axes.
		LEVEL2 = 1, //	Low-Velocity Handgun protection; 9mm, .357 Magnum.
		LEVEL3A = 2, //	High-Velocity Handgun protection; 12-Gauge Buckshot, 12-Gauge Birdshot, .44 Magnum.
		LEVEL3 = 3, //	High-Velocity Rifle protection; .308cal, 5.56mm, 7.62mm.
		LEVEL4 = 4, //	High-Velocity Armor-Piercing Rifle protection; .30cal Steel Core.
	}
	int ballisticlevel; property BallisticLevel : ballisticlevel; //Level of ballistic protection. Refer to MaliceBallisticLevel.
	Default{
		SinItem.RemoveWhenEmpty 1;
		SinArmor.Protection 50;
		MaliceBallistic.BallisticLevel LEVEL1;
	}
	Override void AbsorbDamage (int damage, Name damageType, out int newdamage, Actor inflictor, Actor source, int flags){
		//	Level 1
		If(ballisticlevel>=0){
			If(damageType == "Axe" || damageType == "Cut" || damageType == "Claw" || damageType == "ImpClaw" || damageType == "Dagger" || damageType == "Stab" || damageType == "Slash" || damageType == "Poke" || damageType == "Pierce" || damageType == "Puncture" || damageType == "Penetrate" || damageType == "Sharp" || damageType == "Knife" || damageType == "Hatchet" || damageType == "Sword"){
				newdamage = damage * 0.10;
			}
		}
		//	Level 2
		If(ballisticlevel>=1){
			If(damageType == "Pistol" || damageType == "Handgun" || damageType == "45ACP" || damageType == ".45ACP" || damageType == "9mm" || damageType == "357Magnum" || damageType == ".357Magnum"){
				newdamage = damage * 0.50;
			}
		}
		//	Level 3A
		If(ballisticlevel>=2){
			If(damageType == "Shotgun" || damageType == "12Gauge" || damageType == "12GaugeBuckshot" || damageType == "12GaugeBirdshot" || damageType == "44Magnum" || damageType == ".44Magnum"){
				newdamage = damage * 0.50;
			}
		}
		//	Level 3
		If(ballisticlevel>=3){
			If(damageType == "Rifle" || damageType == "556mm" || damageType == "5.56mm" || damageType == "762mm" || damageType == "7.62mm"){
				newdamage = damage * 0.50;
			}
		}
	}
}

//	Not too sure about these. Might overcomplicate things.
/*
Class MaliceBallisticPlateLevel2A : SinItem{
	Default{
		Inventory.Icon "BPLTA0";
		Inventory.Amount 1;
		Inventory.MaxAmount 10;
		Tag "Level IIA Ballistic Plate";
		Inventory.PickupMessage "Picked up a Level IIA Ballistic Plate.";
		SinItem.Description "A lightweight, flexible armor insert designed to protect against low-velocity handgun rounds, such as 9mm and .40 S&W. It offers discreet protection, commonly used in covert vests, while sacrificing some defense against higher-caliber rounds for comfort and mobility.";
	}
	States{Spawn: BPLT A -1; Stop;}
}
Class MaliceBallisticPlateLevel2 : SinItem{
	Default{
		Inventory.Icon "BPLTA0";
		Inventory.Amount 1;
		Inventory.MaxAmount 10;
		Tag "Level II Ballistic Plate";
		Inventory.PickupMessage "Picked up a Level II Ballistic Plate.";
		SinItem.Description "A ballistic plate that provides protection against common handgun rounds, such as 9mm and .357 Magnum, offering a balance between flexibility and protection. It is lightweight and often used in soft body armor for law enforcement or security personnel who require moderate protection in everyday scenarios.";
	}
	States{Spawn: BPLT A -1; Stop;}
}
Class MaliceBallisticPlateLevel3A : SinItem{
	Default{
		Inventory.Icon "BPLTA0";
		Inventory.Amount 1;
		Inventory.MaxAmount 10;
		Tag "Level IIIA Ballistic Plate";
		Inventory.PickupMessage "Picked up a Level IIIA Ballistic Plate.";
		SinItem.Description "A ballistic plate that offers advanced protection against higher-velocity handgun rounds, including .44 Magnum and 9mm submachine gun fire. It is lightweight and flexible, often used in soft armor vests, providing enhanced defense without compromising mobility.";
	}
	States{Spawn: BPLT A -1; Stop;}
}
Class MaliceBallisticPlateLevel3 : SinItem{
	Default{
		Inventory.Icon "BPLTA0";
		Inventory.Amount 1;
		Inventory.MaxAmount 10;
		Tag "Level III Ballistic Plate";
		Inventory.PickupMessage "Picked up a Level III Ballistic Plate.";
		SinItem.Description "A ballistic plate that provides robust protection against rifle rounds, such as 7.62mm NATO, making it suitable for high-threat environments. Typically made from materials like steel or ceramic, it is heavier than lower-level plates but offers greater defense against high-velocity projectiles.";
	}
	States{Spawn: BPLT A -1; Stop;}
}
Class MaliceBallisticPlateLevel4 : SinItem{
	Default{
		Inventory.Icon "BPLTA0";
		Inventory.Amount 1;
		Inventory.MaxAmount 10;
		Tag "Level IV Ballistic Plate";
		Inventory.PickupMessage "Picked up a Level IV Ballistic Plate.";
		SinItem.Description "A Level 4 ballistic plate is the highest-rated personal armor, capable of stopping armor-piercing rifle rounds like .30-06 AP. Constructed from materials like ceramic and polyethylene, it provides maximum protection but is bulkier and heavier than lower-level plates.";
	}
	States{Spawn: BPLT A -1; Stop;}
}
Class MaliceBallisticVestLevel1 : SinArmor{
	Default{
		Inventory.Icon "BVSTA0";
		Inventory.Amount 50;
		Inventory.MaxAmount 50;
		Tag "Ballistic Vest Level 1";
		Inventory.PickupMessage "Picked up a Stab Vest.";
		SinItem.Description "A protective garment designed to prevent or reduce injury from knife attacks and sharp objects. Made from tough materials like Kevlar or chainmail, it is commonly used by law enforcement and security personnel for protection in close-quarters situations.";
		SinArmor.Protection 50;
		DamageFactor "Axe", 0.10;
		DamageFactor "Cut", 0.10;
		DamageFactor "Claw", 0.10;
		DamageFactor "Dagger", 0.10;
		DamageFactor "Stab", 0.10;
		DamageFactor "Slash", 0.10;
		DamageFactor "Poke", 0.10;
		DamageFactor "Pierce", 0.10;
		DamageFactor "Puncture", 0.10;
		DamageFactor "Penetrate", 0.10;
		DamageFactor "Sharp", 0.10;
		DamageFactor "Knife", 0.10;
		DamageFactor "Hatchet", 0.10;
		DamageFactor "Sword", 0.10;
	}
	States{Spawn: BVST A -1; Stop;}
}
*/
