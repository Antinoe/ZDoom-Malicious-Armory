
Class MaliceRPG7 : SinWeapon{
	Default{
		Inventory.Icon "LAUNA0";
		Tag "RPG-7";
		Inventory.Amount 1;
		Inventory.MaxAmount 1;
		Inventory.PickupMessage "Picked up an RPG-7.";
		SinItem.Description "The RPG-7 is a portable, shoulder-fired rocket launcher designed for anti-tank and anti-personnel use. It fires rocket-propelled grenades with an explosive warhead, making it highly effective against armored vehicles and fortified positions.";
		SinItem.BigItem 1;
		SinWeapon.AmmoType "40mm";
		SinWeapon.AmmoLoaded "MaliceRPG";
		SinWeapon.FireType FIRE_AUTO;
		SinWeapon.ReloadType RELOAD_BOTTOM;
		SinWeapon.FireMode1 1,10;
		SinWeapon.LoadSound "Sybarite/SlotIn";
	}
	States{Spawn: LAUN A -1; Stop;}
	Override void HandleSprite(int status){cursprite=spawnstate.sprite;}
	Override void OnEquip(SinPlayer user, SinHands gun){user.A_StartSound("PM/HeavyRifleOpen");}
	Override void OnUnequip(SinPlayer user, SinHands gun){}
	Override void WeaponFire(SinPlayer shooter, SinHands gun){
		shooter.A_StartSound("Tyrant/ShellFire",CHANF_OVERLAP);
		shooter.A_StartSound("Tyrant/ShellFireAdd",8,CHANF_OVERLAP);
		shooter.A_StartSound("Tyrant/ShellFireAdd2",9,CHANF_OVERLAP);
	}
}
Class MaliceRPG : SinAmmo{
	Default{
		Inventory.Icon "ROCKA0";
		Tag "RPG Round";
		Inventory.Amount 1;
		Inventory.MaxAmount 10;
		Inventory.PickupMessage "Picked up an RPG.";
		SinItem.Description "RPG-7 rounds are rocket-propelled grenades designed to be fired from the RPG-7 launcher, typically featuring an explosive warhead for anti-armor or anti-personnel use. These rounds are versatile, with different variants offering capabilities such as high-explosive, anti-tank, or fragmentation effects.";
		SinAmmo.AmmoType "40mm";
		SinAmmo.TypeName "HEAT";
		SinAmmo.AttackType ATTACK_PROJECTILE;
		SinAmmo.Projectile "PM_TyrantTankShell";
		SinAmmo.Spread 1.5,1.5;
		SinAmmo.Climb 0.4,0.4;
		SinAmmo.Noise 256;
		SinAmmo.Recoil 6;
		SinItem.Stackable 1;
		SinItem.RemoveWhenEmpty 1;
	}
	States{Spawn: ROCK A -1; Stop;}
}
Class MaliceM202 : SinWeapon{
	Default{
		Inventory.Icon "M202A0";
		Tag "M202";
		Inventory.Amount 4;
		Inventory.MaxAmount 4;
		Inventory.PickupMessage "Picked up an M202.";
		SinItem.Description "The M202 FLASH is a shoulder-fired rocket launcher that fires incendiary rockets designed to create intense fire and heat on impact. Primarily used for anti-personnel and anti-structure purposes, it can rapidly launch four rockets in succession, making it highly effective for clearing fortified positions.";
		SinItem.BigItem 1;
		SinWeapon.AmmoType "66mm";
		SinWeapon.DefaultMagazine "MaliceM202Clip";
		SinWeapon.FireType FIRE_AUTO;
		SinWeapon.ReloadType RELOAD_MAG;
		SinWeapon.FireMode1 1,10;
		SinWeapon.DrySound "PM/GunClick";
		SinWeapon.MagOutSound "PM/HeavyRifleMagOut";
		SinWeapon.MagInSound "PM/HeavyRifleMagIn";
	}
	States{Spawn: M202 A -1; Stop;}
	Override void HandleSprite(int status){cursprite=spawnstate.sprite;}
	Override void OnEquip(SinPlayer user, SinHands gun){user.A_StartSound("PM/HeavyRifleOpen");}
	Override void OnUnequip(SinPlayer user, SinHands gun){}
	Override void WeaponFire(SinPlayer shooter, SinHands gun){
		shooter.A_StartSound("Tyrant/ShellFire",CHANF_OVERLAP);
		shooter.A_StartSound("Tyrant/ShellFireAdd",8,CHANF_OVERLAP);
		shooter.A_StartSound("Tyrant/ShellFireAdd2",9,CHANF_OVERLAP);
	}
}
Class MaliceM74 : SinAmmo{
	Default{
		Inventory.Icon "ROCKA0";
		Tag "M74";
		Inventory.Amount 1;
		Inventory.MaxAmount 10;
		Inventory.PickupMessage "Picked up an M74.";
		SinItem.Description "The M74 rocket is an incendiary projectile used with the M202 FLASH rocket launcher, designed to disperse a highly flammable substance upon impact. It creates intense heat and fire, making it effective for targeting enemy personnel, structures, and equipment in close-quarters combat.";
		SinAmmo.AmmoType "66mm";
		SinAmmo.TypeName "INCEN";
		SinAmmo.AttackType ATTACK_PROJECTILE;
		SinAmmo.Projectile "PM_TyrantTankShell";
		SinAmmo.Spread 1.5,1.5;
		SinAmmo.Climb 0.4,0.4;
		SinAmmo.Noise 256;
		SinAmmo.Recoil 3;
		SinItem.Stackable 1;
		SinItem.RemoveWhenEmpty 1;
	}
	States{Spawn: ROCK A -1; Stop;}
}
Class MaliceM202Clip : SinAmmoBox{
	Default{
		Inventory.Icon "BROKA0";
		Tag "M202 Clip";
		Inventory.Amount 4;
		Inventory.MaxAmount 4;
		Inventory.PickupMessage "Picked up an M202 Clip.";
		SinItem.Description "A large clip meant to hold 4 M74 Rockets together. This is to be inserted into the rear of the M202 FLASH.";
		SinItem.BigItem 1;
		SinAmmoBox.AmmoType "66mm";
		SinAmmoBox.LoadedAmmo "MaliceM74";
		SinAmmoBox.Magazine 1;
	}
	States{Spawn: BROK A -1; Stop;}
}
