
Class MaliceM79 : SinWeapon{
	Default{
		Inventory.Icon "M79ZA0";
		Tag "M79";
		Inventory.Amount 1;
		Inventory.MaxAmount 1;
		Inventory.PickupMessage "Picked up an M79.";
		SinItem.Description "The M79 Grenade Launcher is a single-shot, shoulder-fired weapon that launches 40mm grenades, offering precise, mid-range explosive firepower. Widely used during the Vietnam War, it is favored for its simplicity, reliability, and ability to engage targets with high-explosive or specialty rounds.";
		SinItem.BigItem 1;
		SinWeapon.AmmoType "40mm";
		SinWeapon.AmmoLoaded "MaliceM381";
		SinWeapon.FireType FIRE_AUTO;
		SinWeapon.ReloadType RELOAD_BOTTOM;
		SinWeapon.FireMode1 1,10;
		SinWeapon.LoadSound "Sybarite/SlotIn";
	}
	States{Spawn: M79Z A -1; Stop;}
	Override void PostBeginPlay(){
		If(!random(0,3)){
			self.A_SpawnItem("Malice40mmBox",1);
		}
	}
	Override void HandleSprite(int status){cursprite=spawnstate.sprite;}
	Override void OnEquip(SinPlayer user, SinHands gun){user.A_StartSound("PM/HeavyRifleOpen");}
	Override void OnUnequip(SinPlayer user, SinHands gun){}
	Override void WeaponFire(SinPlayer shooter, SinHands gun){
		shooter.A_StartSound("Sybarite/Thump",13);
	}
}
Class MaliceM381Thrown : PM_ZTrooperFragGrenade{
	Default{Speed 30;}
}
Class MaliceM381 : SinAmmo{
	Default{
		Inventory.Icon "M79AA0";
		Tag "M381";
		Inventory.Amount 1;
		Inventory.MaxAmount 10;
		Inventory.PickupMessage "Picked up an M381.";
		SinItem.Description "The M381 is a 40mm high-explosive grenade designed for use with grenade launchers like the M79, capable of delivering explosive force against enemy personnel or light vehicles. Upon impact, it detonates, producing a fragmentation effect to maximize damage within its blast radius.";
		SinAmmo.AmmoType "40mm";
		SinAmmo.TypeName "HE";
		SinAmmo.AttackType ATTACK_PROJECTILE;
		//SinAmmo.Projectile "PM_SybGrenade";
		SinAmmo.Projectile "MaliceM381Thrown";
		SinAmmo.Spread 1.5,1.5;
		SinAmmo.Climb 0.4,0.4;
		SinAmmo.Noise 256;
		SinAmmo.Recoil 6;
		SinItem.Stackable 1;
		SinItem.RemoveWhenEmpty 1;
	}
	States{Spawn: M79A A -1; Stop;}
}
Class Malice40mmBox : SinAmmoBox{
	Default{
		Inventory.Icon "M79AB0";
		Tag "40mm Ammo Box";
		Inventory.Amount 30;
		Inventory.MaxAmount 30;
		Inventory.PickupMessage "Picked up a 40mm Grenade Box.";
		SinItem.Description "A small box designed to carry 30 40mm Rounds.";
		SinAmmoBox.AmmoType "40mm";
		SinAmmoBox.LoadedAmmo "MaliceM381";
	}
	States{Spawn: M79A B -1; Stop;}
}
