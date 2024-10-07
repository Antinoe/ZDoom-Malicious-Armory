
//	WORK
Class MaliceM21 : SinWeapon{
	Default{
		Inventory.Icon "DBSGA0";
		Tag "M21";
		AttackSound "";
		Inventory.PickupMessage "Picked up an M21.";
		SinItem.Description "The Winchester Model 21 is a premium double-barrel shotgun known for its durability and craftsmanship, offering side-by-side barrels. Manufactured between 1931 and 1960, it is highly regarded for its balance, reliability, and smooth handling, making it a favorite among hunters and collectors.";
		SinWeapon.AmmoType "12Gauge";
		SinWeapon.AmmoLoaded "Malice12GaugeBirdshot";
		SinWeapon.FireType FIRE_DOUBLE;
		SinWeapon.SpreadMultiplier 0.5,0.5;
		SinWeapon.Climb -1,-1;
		SinWeapon.BarrelsLoaded 1,1;
		SinWeapon.FireMode1 1,4;
		SinItem.BigItem 1;
		SinWeapon.OpenSound "weapons/sshoto";
		SinWeapon.CloseSound "weapons/sshotc";
		SinWeapon.LoadSound "weapons/sshotl";
		SinWeapon.CasingVelocity -8,0,2;
	}
	States{Spawn: DBSG A -1; Stop;}
	Override void OnEquip(SinPlayer user, SinHands gun){user.A_StartSound("weapons/sshoto");}
	Override void OnUnequip(SinPlayer user, SinHands gun){}
	Override void WeaponFire(SinPlayer shooter, SinHands gun){
		If(ammoload=="Malice12GaugeSlug"){
			shooter.A_StartSound("SlugShotgunner/Fire",CHAN_5);
		}
		Else{
			shooter.A_StartSound("GenericShotgunFire",CHAN_5);
			shooter.A_StartSound("ShotgunnerGunDistant",CHAN_7,CHANF_OVERLAP);
		}
	}
}
//	WORK
Class MaliceSawedOff : SinWeapon{
	Default{
		Inventory.Icon "SAWDA0";
		Tag "$SINWEAP_SSGMOD";
		AttackSound "";
		Inventory.PickupMessage "$SINWEAP_SSGMODPKUP";
		SinItem.Description "$SINWEAP_SSGMODDESC";
		SinWeapon.AmmoType "12Gauge";
		SinWeapon.AmmoLoaded "Malice12GaugeBuckshot";
		SinWeapon.FireType FIRE_DOUBLE;
		SinWeapon.HitscanDamage -2;
		SinWeapon.SpreadMultiplier 2,2;
		SinWeapon.Climb 7,7;
		SinWeapon.BarrelsLoaded 1,1;
		SinWeapon.FireMode1 1,4;
		SinWeapon.OpenSound "weapons/sshoto";
		SinWeapon.CloseSound "weapons/sshotc";
		SinWeapon.LoadSound "weapons/sshotl";
		SinWeapon.CasingVelocity -8,0,2;
	}
	States{Spawn: SAWD A -1; Stop;}
	Override void HandleSprite(int status){cursprite=spawnstate.sprite;}
	Override void OnEquip(SinPlayer user, SinHands gun){user.A_StartSound("weapons/sshoto");}
	Override void OnUnequip(SinPlayer user, SinHands gun){}
	Override void WeaponFire(SinPlayer shooter, SinHands gun){
		If(ammoload=="Malice12GaugeSlug"){
			shooter.A_StartSound("SlugShotgunner/Fire",CHAN_5);
		}
		Else{
			shooter.A_StartSound("GenericShotgunFire",CHAN_5);
			shooter.A_StartSound("ShotgunnerGunDistant",CHAN_7,CHANF_OVERLAP);
		}
	}
}
