
Class MaliceM37 : SinWeapon{
	Default{
		Inventory.Icon "1897A0";
		Tag "M37";
		Inventory.Amount 7;
		Inventory.MaxAmount 7;
		Inventory.PickupMessage "Picked up an M37.";
		SinItem.Description "The Ithaca Model 37 is a pump-action shotgun known for its bottom-ejection design, making it ambidextrous and less prone to debris jams. Popular with hunters, law enforcement, and the military, it is praised for its reliability, smooth operation, and durability.";
		SinWeapon.AmmoType "12Gauge";
		SinWeapon.AmmoLoaded "Malice12GaugeBuckshot";
		SinWeapon.FireType FIRE_MANUAL;
		SinWeapon.ReloadType RELOAD_BOTTOM;
		SinWeapon.HitscanDamage -1;
		SinWeapon.Spread 1,1;
		SinWeapon.Climb 2,2;
		SinWeapon.CanChamber 1;
		SinWeapon.Chambered 1;
		SinWeapon.SlamFire 0;
		SinWeapon.FireMode1 1,4;
		SinItem.BigItem 1;
		SinWeapon.CasingVelocity 0,-4,2;
		SinWeapon.DrySound "PM/GunClick";
		SinWeapon.LoadSound "PM/ShellInsert";
		SinWeapon.OpenSound "MaliciousArmory/Shotgun/BoltOpen";
		SinWeapon.CloseSound "MaliciousArmory/Shotgun/BoltClose";
	}
	States{Spawn: 1897 A -1; Stop;}
	Override void OnEquip(SinPlayer user, SinHands gun){user.A_StartSound("MaliciousArmory/Shotgun/BoltOpen");}
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
