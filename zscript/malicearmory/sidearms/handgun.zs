
/*
Class MaliceM19 : SinWeapon replaces SinPistol{
	Default{
		Inventory.Icon "PISTA0";
		Tag "M19";
		Inventory.PickupMessage "Picked up an M19.";
		SinItem.Description "The Colt M1911 is a semi-automatic pistol designed by John Browning and adopted by the U.S. military in 1911, becoming a standard-issue sidearm for decades. Known for its reliability and powerful .45 ACP cartridge, it has seen widespread use in both military and civilian applications.";
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
	States{Spawn: PIST A -1; Stop; PISD A 0; PIHT A 0; PIHD A 0; PLST A 0; POST A 0; PLSD A 0; POSD A 0; PLHT A 0; POHT A 0; PLHD A 0; POHD A 0;}
	Override void HandleSprite(int status){
		string ico = "P";
		If(railmode==1){ico=ico.."O";}
		Else If(attachments.Find("Malice9mmLight")!=attachments.Size()){ico=ico.."L";}
		Else{ico=ico.."I";}
		If(attachments.Find("Malice9mmSuppressor")!=attachments.Size()){ico=ico.."H";}
		Else{ico=ico.."S";}
		If(MaxAmount>10){ico=ico.."D";}
		Else{ico=ico.."T";}
		cursprite=GetSpriteIndex(ico);
		If(chambered>0&&status!=STATE_FIRE&&status!=STATE_BOLTBACK){curframe=0; ico=ico.."A0";}
		Else{curframe=1; ico=ico.."B0";}
		icon=TexMan.CheckForTexture(ico,TexMan.Type_Any);
		sprite=cursprite; frame=curframe;
	}
	Override void OnEquip(SinPlayer user, SinHands gun){user.A_StartSound("MaliciousArmory/Pistol/BoltOpen");}
	Override void OnUnequip(SinPlayer user, SinHands gun){}
	Override void WeaponFire(SinPlayer shooter, SinHands gun){
		shooter.A_StartSound("PistolZombie/FireDistant",CHAN_7,CHANF_OVERLAP);
		shooter.A_StartSound("PistolZombie/Fire");
	}
}
*/
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
