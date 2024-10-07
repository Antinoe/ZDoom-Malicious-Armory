
Class MaliceG17 : SinWeapon{
	Default{
		Inventory.Icon "G17ZA0";
		Tag "G17";
		Inventory.PickupMessage "Picked up a G17.";
		SinItem.Description "The Glock 17 is a lightweight, semi-automatic handgun known for its reliability, durability, and high-capacity 17-round magazine. Widely used by law enforcement and military forces, it features a polymer frame and minimal design, making it easy to maintain and highly effective in various conditions.";
		SinWeapon.AmmoType "9mm";
		SinWeapon.AmmoLoaded "Malice9mmAmmo";
		SinWeapon.DefaultMagazine "Malice9mmMag";
		SinWeapon.FireType FIRE_AUTO;
		SinWeapon.ReloadType RELOAD_MAG;
		SinWeapon.CanChamber 1;
		SinWeapon.FireMode1 1,4;
		SinWeapon.CasingVelocity 0,-4,4;
		SinWeapon.DrySound "PM/GunClick";
		SinWeapon.MagOutSound "MaliciousArmory/Pistol/MagOut";
		SinWeapon.MagInSound "MaliciousArmory/Pistol/MagIn";
		SinWeapon.OpenSound "MaliciousArmory/Pistol/BoltOpen";
		SinWeapon.CloseSound "MaliciousArmory/Pistol/BoltClose";
	}
	States{Spawn: G17Z A -1; Stop;}
	Override void OnEquip(SinPlayer user, SinHands gun){user.A_StartSound("MaliciousArmory/Pistol/BoltOpen");}
	Override void OnUnequip(SinPlayer user, SinHands gun){}
	Override void WeaponFire(SinPlayer shooter, SinHands gun){
		shooter.A_StartSound("PistolZombie/FireDistant",CHAN_7,CHANF_OVERLAP);
		shooter.A_StartSound("PistolZombie/Fire");
	}
}
Class MaliceM29 : SinWeapon{
	Default{
		Scale 0.85;
		Inventory.Icon "REVZA0";
		Tag "M29";
		Inventory.Amount 5;
		Inventory.MaxAmount 5;
		Inventory.PickupMessage "Picked up an M29.";
		SinItem.Description "The Smith & Wesson Model 29 is a powerful double-action revolver chambered in .44 Magnum, known for its robust construction and stopping power. Made famous by the 'Dirty Harry' films, it is highly regarded for its precision and reliability in hunting and self-defense.";
		SinWeapon.AmmoType "9mm";
		SinWeapon.AmmoLoaded "Malice9mmAmmoPower";
		SinWeapon.FireType FIRE_MANUAL;
		SinWeapon.ReloadType RELOAD_BOTTOM;
		SinWeapon.Spread 1,1;
		SinWeapon.Climb 2,2;
		SinWeapon.CanChamber 1;
		SinWeapon.Chambered 1;
		SinWeapon.SlamFire 1;
		SinWeapon.FireMode1 1,4;
		SinWeapon.CasingVelocity 0,-4,2;
		SinWeapon.DrySound "PM/RevolverHammer";
		SinWeapon.LoadSound "PM/RevolverBulletIn";
		SinWeapon.OpenSound "PM/RevolverHammer";
		SinWeapon.CloseSound "";
		//SinWeapon.OpenSound "PM/RevolverOpen";
		//SinWeapon.CloseSound "PM/RevolverClose";
	}
	States{Spawn: REVZ A -1; Stop;}
	Override void HandleSprite(int status){cursprite=spawnstate.sprite;}
	Override void OnEquip(SinPlayer user, SinHands gun){user.A_StartSound("PM/RevolverHammer");}
	Override void OnUnequip(SinPlayer user, SinHands gun){}
	Override void WeaponFire(SinPlayer shooter, SinHands gun){
		shooter.A_StartSound("PistolZombie/FireDistant",CHAN_7,CHANF_OVERLAP);
		shooter.A_StartSound("CivZombie/Shot",9,CHANF_OVERLAP);
	}
}
Class MaliceMP5 : SinWeapon{
	Default{
		Inventory.Icon "MP5ZA0";
		Tag "MP5";
		Inventory.PickupMessage "Picked up an MP5.";
		SinItem.Description "The Heckler & Koch MP5 is a compact, fully automatic submachine gun renowned for its accuracy, reliability, and controllable recoil. Widely used by military and law enforcement units worldwide, it chambers 9mm rounds and excels in close-quarters combat due to its lightweight design and rapid rate of fire.";
		SinWeapon.AmmoType "9mm";
		SinWeapon.AmmoLoaded "Malice9mmAmmo";
		SinWeapon.DefaultMagazine "Malice9mmMagExtended";
		SinWeapon.FireType FIRE_AUTO;
		SinWeapon.ReloadType RELOAD_MAG;
		SinWeapon.Spread -0.5,-0.5;
		SinWeapon.ClimbMultiplier 0.5,0.5;
		SinWeapon.CanChamber 1;
		SinWeapon.FireMode1 1,4;
		SinWeapon.FireMode2 3,1;
		SinWeapon.FireMode3 999,4;
		SinWeapon.CasingVelocity 0,-4,4;
		SinWeapon.DrySound "PM/GunClick";
		SinWeapon.MagOutSound "PM/SMGOut";
		SinWeapon.MagInSound "PM/SMGIn";
		SinWeapon.OpenSound "MaliciousArmory/Pistol/BoltOpen";
		SinWeapon.CloseSound "MaliciousArmory/Pistol/BoltClose";
	}
	States{Spawn: MP5Z A -1; Stop;}
	Override void OnEquip(SinPlayer user, SinHands gun){user.A_StartSound("MaliciousArmory/Pistol/BoltOpen");}
	Override void OnUnequip(SinPlayer user, SinHands gun){}
	Override void WeaponFire(SinPlayer shooter, SinHands gun){
		shooter.A_StartSound("PistolZombie/FireDistant",CHAN_7,CHANF_OVERLAP,volume:0.55);
		shooter.A_StartSound("Pregnant/SMG",8,pitch:1.15);
	}
}
