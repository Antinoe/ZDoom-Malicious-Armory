
Class RPG7 : SinWeapon{
	Default{
		Inventory.Icon "LAUNA0";
		Inventory.Amount 1;
		Inventory.MaxAmount 1;
		Tag "RPG-7";
		Inventory.PickupMessage "Picked up an RPG-7.";
		SinItem.Description "A portable, shoulder-fired rocket launcher designed for anti-tank and anti-personnel use. It fires rocket-propelled grenades with an explosive warhead, making it highly effective against armored vehicles and fortified positions.";
		SinItem.BigItem 1;
		SinWeapon.AmmoType "40mm";
		SinWeapon.AmmoLoaded "RPG";
		SinWeapon.FireType FIRE_AUTO;
		SinWeapon.ReloadType RELOAD_BOTTOM;
		SinWeapon.FireMode1 1,10;
		SinWeapon.DrySound "PM/GunClick";
		SinWeapon.LoadSound "Sybarite/SlotIn";
		SinWeapon.MagOutSound "PM/HeavyRifleMagOut";
		SinWeapon.MagInSound "PM/HeavyRifleMagIn";
	}
	States{Spawn: LAUN A -1; Stop;}
	Override void PostBeginPlay(){
		If(!random(0,3)){
			self.A_SpawnItem("RPG",1);
		}
	}
	Override void HandleSprite(int status){cursprite=spawnstate.sprite;}
	Override void OnEquip(SinPlayer user, SinHands gun){user.A_StartSound("PM/HeavyRifleOpen");}
	Override void OnUnequip(SinPlayer user, SinHands gun){}
	Override void WeaponFire(SinPlayer shooter, SinHands gun){
		shooter.A_StartSound("Tyrant/ShellFire",CHANF_OVERLAP);
		shooter.A_StartSound("Tyrant/ShellFireAdd",8,CHANF_OVERLAP);
		shooter.A_StartSound("Tyrant/ShellFireAdd2",9,CHANF_OVERLAP);
	}
}
Class RPG : SinAmmo{
	Default{
		Inventory.Icon "ROCKA0";
		Inventory.Amount 1;
		Inventory.MaxAmount 10;
		Tag "PG-7VL";
		Inventory.PickupMessage "Picked up an RPG.";
		SinItem.Description "Rocket-propelled grenade designed to be fired from the RPG-7 launcher, typically featuring an explosive warhead for anti-armor or anti-personnel use. These rounds are versatile, with different variants offering capabilities such as high-explosive, anti-tank, or fragmentation effects.";
		SinAmmo.AmmoType "40mm";
		SinAmmo.TypeName "HEAT";
		SinAmmo.AttackType ATTACK_PROJECTILE;
		SinAmmo.Projectile "RPGTracer";
		SinAmmo.Spread 1.5,1.5;
		SinAmmo.Climb 0.4,0.4;
		SinAmmo.Noise 256;
		SinAmmo.Recoil 6;
		SinItem.Stackable 1;
		SinItem.RemoveWhenEmpty 1;
	}
	States{Spawn: ROCK A -1; Stop;}
}
Class RPGTracer : PM_TyrantTankShell{
	Default{
		DamageFunction(350);
		DamageType "Explosive";
	}
}
Class M202 : SinWeapon{
	Default{
		Inventory.Icon "M202A0";
		Inventory.Amount 4;
		Inventory.MaxAmount 4;
		Tag "M202";
		Inventory.PickupMessage "Picked up an M202.";
		SinItem.Description "A shoulder-fired rocket launcher that fires incendiary rockets designed to create intense fire and heat on impact. Primarily used for anti-personnel and anti-structure purposes, it can rapidly launch four rockets in succession, making it highly effective for clearing fortified positions.";
		SinItem.BigItem 1;
		SinWeapon.AmmoType "66mm";
		SinWeapon.AmmoLoaded "M74";
		SinWeapon.FireType FIRE_AUTO;
		SinWeapon.ReloadType RELOAD_BOTTOM;
		SinWeapon.FireMode1 1,10;
		SinWeapon.DrySound "PM/GunClick";
		SinWeapon.LoadSound "Sybarite/SlotIn";
		SinWeapon.MagOutSound "PM/HeavyRifleMagOut";
		SinWeapon.MagInSound "PM/HeavyRifleMagIn";
	}
	States{Spawn: M202 A -1; Stop;}
	Override void PostBeginPlay(){
		If(!random(0,3)){
			self.A_SpawnItem("M74",4);
		}
	}
	Override void HandleSprite(int status){cursprite=spawnstate.sprite;}
	Override void OnEquip(SinPlayer user, SinHands gun){user.A_StartSound("PM/HeavyRifleOpen");}
	Override void OnUnequip(SinPlayer user, SinHands gun){}
	Override void WeaponFire(SinPlayer shooter, SinHands gun){
		shooter.A_StartSound("Tyrant/ShellFire",CHANF_OVERLAP);
		shooter.A_StartSound("Tyrant/ShellFireAdd",8,CHANF_OVERLAP);
		shooter.A_StartSound("Tyrant/ShellFireAdd2",9,CHANF_OVERLAP);
	}
}
Class M74 : SinAmmo{
	Default{
		Inventory.Icon "ROCKA0";
		Inventory.Amount 1;
		Inventory.MaxAmount 10;
		Tag "M74";
		Inventory.PickupMessage "Picked up an M74.";
		SinItem.Description "An incendiary projectile used with the M202 FLASH rocket launcher, designed to disperse a highly flammable substance upon impact. It creates intense heat and fire, making it effective for targeting enemy personnel, structures, and equipment in close-quarters combat.";
		SinAmmo.AmmoType "66mm";
		SinAmmo.TypeName "INCEN";
		SinAmmo.AttackType ATTACK_PROJECTILE;
		SinAmmo.Projectile "RPGTracer";
		SinAmmo.Spread 1.5,1.5;
		SinAmmo.Climb 0.4,0.4;
		SinAmmo.Noise 256;
		SinAmmo.Recoil 3;
		SinItem.Stackable 1;
		SinItem.RemoveWhenEmpty 1;
	}
	States{Spawn: ROCK A -1; Stop;}
}
