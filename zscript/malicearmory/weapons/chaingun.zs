
Class MaliceM16 : SinWeapon{
	Default{
		Inventory.Icon "M16ZA0";
		Tag "M16";
		Inventory.PickupMessage "Picked up an M16.";
		SinItem.Description "The M16 is a lightweight, gas-operated, 5.56mm NATO assault rifle, known for its high rate of fire and accuracy at range. It has been the standard-issue rifle for the U.S. military since the Vietnam War, praised for its adaptability and modular design.";
		SinWeapon.AmmoType "5.56mm";
		SinWeapon.AmmoLoaded "Malice556mmAmmo";
		SinWeapon.DefaultMagazine "Malice556mmMag";
		SinWeapon.FireType FIRE_AUTO;
		SinWeapon.ReloadType RELOAD_MAG;
		SinWeapon.Spread -0.5,-0.5;
		SinWeapon.ClimbMultiplier 0.5,0.5;
		SinWeapon.CanChamber 1;
		SinWeapon.FireMode1 1,4;
		SinWeapon.FireMode2 3,1;
		SinItem.BigItem 1;
		SinWeapon.CasingVelocity 0,-4,4;
		SinWeapon.MaxMagSize 100;
		SinWeapon.DrySound "PM/GunClick";
		SinWeapon.MagOutSound "PM/RifleMagOut";
		SinWeapon.MagInSound "PM/RifleMagIn";
		//	NEED RIFLE OPEN/CLOSE ROUNDS.
		SinWeapon.OpenSound "PM/HeavyRifleOpen";
		SinWeapon.CloseSound "PM/HeavyRifleClose";
	}
	States{Spawn: M16Z A -1; Stop;}
	Override void HandleSprite(int status){cursprite=spawnstate.sprite;}
	Override void OnEquip(SinPlayer user, SinHands gun){user.A_StartSound("PM/HeavyRifleOpen");}
	Override void OnUnequip(SinPlayer user, SinHands gun){}
	Override void WeaponFire(SinPlayer shooter, SinHands gun){
		shooter.A_StartSound("ZombieRifleDistant",CHAN_7,CHANF_OVERLAP);
		shooter.A_StartSound("ZombieSoldier/Rifle");
	}
}
Class MaliceMaroszek : SinWeapon{
	Default{
		Inventory.Icon "BR38A0";
		Tag "Maroszek";
		AttackSound "";
		Inventory.Amount 9;
		Inventory.MaxAmount 10;
		Inventory.PickupMessage "Picked up a Maroszek.";
		SinItem.Description "The Maroszek rifle, officially known as the Kb Ur wz. 35, is a Polish anti-tank rifle developed in the 1930s, designed to penetrate armored vehicles with its powerful 7.92mm armor-piercing rounds. Despite its lightweight design and portability, it was highly effective against early WWII tanks and armored vehicles.";
		SinWeapon.AmmoType "7.92mm";
		SinWeapon.AmmoLoaded "Malice792mmAmmo";
		SinWeapon.FireType FIRE_AUTO;
		SinWeapon.ReloadType RELOAD_TOP;
		SinWeapon.ClimbMultiplier 0.5,0.5;
		SinWeapon.CanChamber 1;
		SinWeapon.Chambered 1;
		SinWeapon.FireMode1 1,4;
		SinItem.BigItem 1;
		SinWeapon.CasingVelocity 0,-2,8;
		SinWeapon.DrySound "PM/GunClick";
		SinWeapon.LoadSound "PM/RevolverBulletIn";
		//	NEED RIFLE OPEN/CLOSE ROUNDS.
		SinWeapon.OpenSound "PM/HeavyRifleOpen";
		SinWeapon.CloseSound "PM/HeavyRifleClose";
	}
	States{Spawn: BR38 A -1; Stop;}
	Override void HandleSprite(int status){
		cursprite=spawnstate.sprite;
		string ico = "BR38";
		If(type=="Rifle"){ico="BR39";}
		If(chambered>0&&status!=STATE_FIRE&&status!=STATE_BOLTBACK){curframe=0; ico=ico.."A0";}
		Else{curframe=1; ico=ico.."B0";}
		icon=TexMan.CheckForTexture(ico,TexMan.Type_Any);
		frame=curframe;
	}
	Override void OnEquip(SinPlayer user, SinHands gun){user.A_StartSound("PM/HeavyRifleOpen");}
	Override void OnUnequip(SinPlayer user, SinHands gun){}
	Override void WeaponFire(SinPlayer shooter, SinHands gun){
		shooter.A_StartSound("ZombieRifleDistant",CHAN_7,CHANF_OVERLAP);
		shooter.A_StartSound("ZombieSoldier/Rifle");
	}
}
Class MaliceMaroszekMod : MaliceMaroszek{
	Default{
		Tag "$SINWEAP_SECRETMOD";
		SinItem.Description "$SINWEAP_SECRETMODDESC";
		SinWeapon.AmmoType "5.56mm";
		SinWeapon.AmmoLoaded "Malice556mmAmmo";
	}
	States{Spawn: BR39 A -1; Stop;}
}
//	WORK
Class MaliceM134 : SinWeapon{
	int windupTimer;
	Default{
		Inventory.Icon "M134A0";
		Tag "M134";
		Inventory.PickupMessage "Picked up an M134.";
		SinItem.Description "The M134 Minigun is a rotary, multi-barrel machine gun capable of firing up to 6,000 rounds per minute, using an electrically-driven system. It is highly effective in providing sustained, high-volume fire and is often mounted on helicopters, vehicles, and aircraft for suppressing enemy forces.";
		SinWeapon.AmmoType "7.62mm";
		SinWeapon.AmmoLoaded "Malice762mmAmmo";
		SinWeapon.DefaultMagazine "Malice762mmMagBox";
		SinWeapon.FireType FIRE_AUTO;
		SinWeapon.ReloadType RELOAD_MAG;
		SinWeapon.CanChamber 1;
		SinWeapon.FireMode1 999,2;
		SinItem.BigItem 1;
		SinWeapon.CasingVelocity 0,-4,2;
		SinWeapon.MinMagSize 100;
		SinWeapon.DrySound "PM/GunClick";
		SinWeapon.MagOutSound "PM/GatlingReady";
		SinWeapon.MagInSound "PM/GatlingBeltCram";
		SinWeapon.OpenSound "PM/HeavyRifleOpen";
		SinWeapon.CloseSound "PM/HeavyRifleClose";
	}
	States{Spawn: M134 A -1; Stop;}
	/*
	Override void PostBeginPlay(){
		Super.PostBeginPlay();
		windupTimer=0;
	}
	Override bool WeaponPreFire(SinPlayer shooter, SinHands gun){
		If(windupTimer>=20){
			Return 1;
		}
		Else{
			shooter.A_StartSound("MutatedGunner/WindUp");
			windupTimer++;
			Return 0;
		}
		Return Super.WeaponPreFire(shooter,gun);
	}
	*/
	Override void OnEquip(SinPlayer user, SinHands gun){user.A_StartSound("PM/HeavyRifleOpen");}
	Override void OnUnequip(SinPlayer user, SinHands gun){
		user.A_StopSounds(5,5);
	}
	Override bool WeaponPreFire(SinPlayer shooter, SinHands gun){
		If(!Super.WeaponReFire(shooter,gun)){shooter.A_StopSounds(5,5);}
		If(Amount<=0){shooter.A_StopSounds(5,5);}
		Return Super.WeaponPreFire(shooter,gun);
	}
	Override void WeaponFire(SinPlayer shooter, SinHands gun){
		shooter.A_StartSound("MutatedGunner/Fire",CHAN_5,CHANF_LOOPING);
		shooter.A_StartSound("GunnerRifleDistant",CHAN_7,CHANF_OVERLAP);
	}
	Override bool WeaponReFire(SinPlayer shooter, SinHands gun){
		If(!Super.WeaponReFire(shooter,gun)){
			shooter.A_StopSounds(5,5);
			Return 0;
		}
		Else{Return 1;}
		Return Super.WeaponReFire(shooter,gun);
	}
}
Class MaliceHeavyCarbine : SinWeapon{
	Default{
		Inventory.Icon "PMHCA0";
		Tag "Heavy Carbine";
		Inventory.PickupMessage "Picked up a Heavy Carbine.";
		SinItem.Description "A compact yet robust firearm designed for close to mid-range combat, offering greater firepower and accuracy than standard carbines. It typically features a reinforced build for handling larger calibers, making it ideal for tactical scenarios where both mobility and stopping power are essential.";
		SinWeapon.AmmoType "7.62mm";
		SinWeapon.AmmoLoaded "Malice762mmAmmo";
		SinWeapon.DefaultMagazine "Malice762mmMagBox";
		SinWeapon.FireType FIRE_AUTO;
		SinWeapon.ReloadType RELOAD_MAG;
		SinWeapon.Spread -0.5,-0.5;
		SinWeapon.ClimbMultiplier 0.5,0.5;
		SinWeapon.CanChamber 1;
		SinWeapon.FireMode1 1,4;
		SinWeapon.FireMode2 999,6;
		SinItem.BigItem 1;
		SinWeapon.CasingVelocity 0,-4,4;
		SinWeapon.MinMagSize 100;
		SinWeapon.DrySound "PM/GunClick";
		SinWeapon.MagOutSound "PM/HeavyRifleMagOut";
		SinWeapon.MagInSound "PM/HeavyRifleMagIn";
		SinWeapon.OpenSound "PM/HeavyRifleOpen";
		SinWeapon.CloseSound "PM/HeavyRifleClose";
	}
	States{Spawn: PMHC A -1; Stop;}
	Override void OnEquip(SinPlayer user, SinHands gun){user.A_StartSound("PM/HeavyRifleOpen");}
	Override void OnUnequip(SinPlayer user, SinHands gun){}
	Override void WeaponFire(SinPlayer shooter, SinHands gun){
		shooter.A_StartSound("Carbine/Shot",CHAN_5,CHANF_OVERLAP);
		shooter.A_StartSound("GunnerRifleDistant",CHAN_7,CHANF_OVERLAP);
	}
}
//	WORK
Class MaliceAutocannon : SinWeapon{
	int shotsFired;
	Default{
		Inventory.Icon "ACNZA0";
		Tag "Handheld Autocannon";
		Inventory.PickupMessage "Picked up an Autocannon.";
		SinItem.Description "A powerful, high-caliber firearm designed to deliver rapid, sustained fire with explosive rounds, typically used against vehicles or fortified positions. Due to its size and recoil, it is rare and usually only handled by individuals with advanced strength or specialized equipment.";
		SinWeapon.AmmoType "20mm";
		SinWeapon.AmmoLoaded "MaliceAutocannonAmmo";
		SinWeapon.DefaultMagazine "MaliceAutocannonMag";
		SinWeapon.FireType FIRE_AUTO;
		SinWeapon.ReloadType RELOAD_MAG;
		SinWeapon.Spread -0.5,-0.5;
		SinWeapon.ClimbMultiplier 0.5,0.5;
		SinWeapon.CanChamber 1;
		SinWeapon.FireMode1 1,5;
		SinWeapon.FireMode2 999,5;
		SinItem.BigItem 1;
		SinWeapon.CasingVelocity 0,-4,4;
		SinWeapon.DrySound "PM/GunClick";
		SinWeapon.MagOutSound "PM/HeavyRifleMagOut";
		SinWeapon.MagInSound "PM/HeavyRifleMagIn";
		SinWeapon.OpenSound "PM/HeavyRifleOpen";
		SinWeapon.CloseSound "PM/HeavyRifleClose";
	}
	States{Spawn: ACNZ A -1; Stop;}
	Override void PostBeginPlay(){
		Super.PostBeginPlay();
		shotsFired=0;
	}
	Override bool WeaponPreFire(SinPlayer shooter, SinHands gun){
		//proj="PM_HellionFlare";
		If(shotsFired>=6){
			shooter.A_StartSound("Sybarite/SlotIn",12);
			shooter.A_Quake(3,10,0,50,0);
			shotsFired=0;
			Return 0;
		}
		Return Super.WeaponPreFire(shooter,gun);
	}
	Override void OnEquip(SinPlayer user, SinHands gun){user.A_StartSound("PM/HeavyRifleOpen");}
	Override void OnUnequip(SinPlayer user, SinHands gun){}
	Override void WeaponFire(SinPlayer shooter, SinHands gun){
		shooter.A_StartSound("Sybarite/Autocannon",11);
		shooter.A_StartSound("GunnerRifleDistant",12,CHANF_OVERLAP);
		shotsFired++;
	}
}
//	WORK
Class MaliceSybariteCannon : SinWeapon{
	int ammoMicroMissile;
	int ammoGrenade;
	int ammoNet;
	Default{
		Inventory.Icon "ACNZA0";
		Inventory.Amount 100;
		Inventory.MaxAmount 100;
		Tag "Sybarite Cannon";
		Inventory.PickupMessage "Picked up a Sybarite's Cannon.";
		SinItem.Description "Sybarites wield heavily modified cannons designed to better capture stragglers. Luckily for you, one of them happened to drop this upon death.";
		SinWeapon.FireType FIRE_AUTO;
		SinWeapon.AttackType ATTACK_PROJECTILE;
		SinWeapon.Projectile "PM_SybariteMicroMissile";
		SinWeapon.Spread -0.5,-0.5;
		SinWeapon.ClimbMultiplier 0.5,0.5;
		SinWeapon.FireMode1 5,5;
		SinWeapon.FireMode2 3,10;
		SinWeapon.FireMode3 3,35;
		SinItem.BigItem 1;
		SinWeapon.CasingVelocity 0,-4,4;
		SinWeapon.DrySound "PM/GunClick";
		SinWeapon.MagOutSound "PM/HeavyRifleMagOut";
		SinWeapon.MagInSound "PM/HeavyRifleMagIn";
		SinWeapon.OpenSound "PM/HeavyRifleOpen";
		SinWeapon.CloseSound "PM/HeavyRifleClose";
	}
	States{Spawn: ACNZ A -1; Stop;}
	Override void PostBeginPlay(){
		Super.PostBeginPlay();
	}
	/*
	Override void DoEffect(){
		If(amount<amountmax){amount++;}
		Return Super.DoEffect();
	}
	*/
	Override bool WeaponPreFire(SinPlayer shooter, SinHands gun){
		If(firemode==0){
			ammocost=1;
			proj="PM_SybariteMicroMissile";
		}
		If(firemode==1){
			ammocost=3;
			proj="PM_SybGrenade";
		}
		If(firemode==2){
			ammocost=1;
			proj="PM_SybariteNet";
		}
		Return Super.WeaponPreFire(shooter,gun);
	}
	Override void OnEquip(SinPlayer user, SinHands gun){user.A_StartSound("PM/HeavyRifleOpen");}
	Override void OnUnequip(SinPlayer user, SinHands gun){}
	Override void WeaponFire(SinPlayer shooter, SinHands gun){}
}
