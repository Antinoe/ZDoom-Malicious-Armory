
Class MaliceSoftArmorPanelKevlar : SinItem{
	Default{
		Inventory.Icon "BPLTA0";
		Inventory.Amount 1;
		Inventory.MaxAmount 10;
		Tag "Kevlar Panel (Level IIIA)";
		Inventory.PickupMessage "Picked up a Kevlar Armor Panel.";
		SinItem.Description "A lightweight, flexible insert made from tightly woven Kevlar fibers, designed to absorb and dissipate the energy from handgun rounds and shrapnel. Known for its durability and resistance to tearing, Kevlar panels are commonly used in bulletproof vests for effective protection while maintaining mobility.";
		SinItem.RemoveWhenEmpty 1;
		SinItem.Stackable 1;
	}
	States{Spawn: BPLT A -1; Stop;}
}
Class MaliceBallisticPlateSteel : SinItem{
	Default{
		Inventory.Icon "BPLTA0";
		Inventory.Amount 1;
		Inventory.MaxAmount 10;
		Tag "Steel Plate (Level III)";
		Inventory.PickupMessage "Picked up a Steel Plate.";
		SinItem.Description "A durable armor insert designed to provide protection against rifle rounds and ballistic threats. While it offers excellent multi-hit capability and is highly resistant to shattering, it is heavier than ceramic or composite plates and may cause more blunt force trauma upon impact.";
		SinItem.RemoveWhenEmpty 1;
		SinItem.Stackable 1;
	}
	States{Spawn: BPLT A -1; Stop;}
}
Class MaliceBallisticPlateCeramic : SinItem{
	Default{
		Inventory.Icon "BPLTA0";
		Inventory.Amount 1;
		Inventory.MaxAmount 10;
		Tag "Ceramic Plate (Level IV)";
		Inventory.PickupMessage "Picked up a Ceramic Plate.";
		SinItem.Description "A lightweight armor insert designed to stop high-velocity rifle rounds, offering superior protection with reduced weight compared to steel plates. Although effective at absorbing and dispersing energy from impacts, ceramic plates are more prone to cracking after multiple hits, requiring careful handling.";
		SinItem.RemoveWhenEmpty 1;
		SinItem.Stackable 1;
	}
	States{Spawn: BPLT A -1; Stop;}
}
