
//	WORK
Class MaliceChaingun : SinWeapon{
	int windupTimer;
	Default{
		Inventory.Icon "MGUNA0";
		Tag "$SINWEAP_CHAIN";
		Inventory.PickupMessage "$SINWEAP_CHAINPKUP";
		SinItem.Description "$SINWEAP_CHAINDESC";
		SinWeapon.AmmoType "5.56mm";
		SinWeapon.AmmoLoaded "Malice556mmAmmo";
		SinWeapon.DefaultMagazine "Malice556mmMagBox";
		SinWeapon.FireType FIRE_AUTO;
		SinWeapon.ReloadType RELOAD_MAG;
		SinWeapon.CanChamber 1;
		SinWeapon.FireMode1 999,2;
		SinItem.BigItem 1;
		SinWeapon.CasingVelocity 0,-4,2;
		SinWeapon.DrySound "PM/GunClick";
		SinWeapon.MagOutSound "PM/GatlingReady";
		SinWeapon.MagInSound "PM/GatlingBeltCram";
		SinWeapon.OpenSound "PM/HeavyRifleOpen";
		SinWeapon.CloseSound "PM/HeavyRifleClose";
	}
	States{Spawn: MGUN A -1; Stop; MGUB A 0; MGSN A 0; MGSB A 0;}
	Override void HandleSprite(int status){
		string ico = "MG";
		If(attachments.Find("MaliceChaingunBarrel")!=attachments.Size()){ico=ico.."S";}
		Else{ico=ico.."U";}
		If(attachments.Find("MaliceChaingunBipod")!=attachments.Size()){ico=ico.."B";}
		Else{ico=ico.."N";}
		cursprite=GetSpriteIndex(ico);
		If(MaxAmount>0){curframe=0; ico=ico.."A0";}
		Else{curframe=1; ico=ico.."B0";}
		icon=TexMan.CheckForTexture(ico,TexMan.Type_Any);
		sprite=cursprite; frame=curframe;
	}
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
	Override void OnUnequip(SinPlayer user, SinHands gun){}
	Override void WeaponFire(SinPlayer shooter, SinHands gun){
		shooter.A_StartSound("MutatedGunner/Fire");
		shooter.A_StartSound("GunnerRifleDistant", CHAN_7,CHANF_OVERLAP);
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
Class MalicePlasmaRifle : SinWeapon{
	Default{
		Inventory.Icon "PLASA0";
		Tag "$SINWEAP_PLASMA";
		AttackSound "";
		Inventory.PickupMessage "Picked up a Plasma Rifle.";
		SinItem.Description "An advanced energy-based weapon that fires superheated plasma bolts. It is highly effective against both armored and unarmored targets, causing significant thermal damage, and features a sleek, futuristic design.";
		SinWeapon.AmmoType "Battery";
		SinWeapon.FireType FIRE_AUTO;
		SinWeapon.ReloadType RELOAD_MAG;
		SinWeapon.AttackType ATTACK_PROJECTILE;
		SinWeapon.Projectile "PM_HellifiedSoldierBall";
		SinWeapon.Noise 256;
		SinWeapon.AmmoCost 2;
		SinWeapon.FireMode1 999,4;
		SinWeapon.FireMode2 1,7;
		SinWeapon.DefaultMagazine "MaliceCell";
		SinItem.AmountMultiplier 1.0;
		SinItem.BigItem 1;
		SinWeapon.DrySound "weapons/plasdry";
		SinWeapon.ChargeSound "HellSoldier/ChargeReady2";
		SinWeapon.FullSound "HellSoldier/ChargeReady";
		SinWeapon.CancelSound "HellSoldier/ChargeClose";
		SinWeapon.ReadySound "weapons/plsalt3";
	}
	States{Spawn: PLAS A -1; Stop; PLAH A 0; PLBS A 0; PLBH A 0;}
	Override void HandleSprite(int status){
		string ico = "PL";
		If(attachments.Find("MalicePlasmaRifleBarrel")!=attachments.Size()){ico=ico.."B";}
		Else{ico=ico.."A";}
		If(attachments.Find("MalicePlasmaRifleHeatsink")!=attachments.Size()){ico=ico.."H";}
		Else{ico=ico.."S";}
		cursprite=GetSpriteIndex(ico);
		If(MaxAmount>0){
			If(cooldown){curframe=4; ico=ico.."E0";}
			Else If(firemode==1){curframe=2; ico=ico.."C0";}
			Else{curframe=0; ico=ico.."A0";}
		}
		Else{
			If(cooldown){curframe=5; ico=ico.."F0";}
			Else If(firemode==1){curframe=3; ico=ico.."D0";}
			Else{curframe=1; ico=ico.."B0";}
		}
		icon=TexMan.CheckForTexture(ico,TexMan.Type_Any);
		sprite=cursprite; frame=curframe;
	}
	Override void ChangeMode(SinPlayer shooter){
		Super.ChangeMode(shooter);
		If(firemode==1){
			AttackSound="";
			guncharge=70;
			ammocost=4;
			coolmax=70;
			proj="PM_HellifiedSoldierChargeBall";
			noise=512;
			//If(attachments.Find("MalicePlasmaRifleHeatsink")!=attachments.Size()){multishot=50;}
			//Else{multishot=40;}
		}Else{
			AttackSound="";
			guncharge=0;
			If(attachments.Find("MalicePlasmaRifleHeatsink")!=attachments.Size()){ammocost=1;}
			Else{ammocost=2;}
			coolmax=0;
			proj="PM_HellifiedSoldierBall";
			noise=256;
			multishot=1;
		}
		HandleSprite();
	}
}
//	WORK
Class MaliceM2 : SinWeapon{
	Default{
		Inventory.Icon "M2ZZA0";
		Tag "M2";
		Inventory.PickupMessage "Picked up an M2.";
		SinItem.Description "The M2 Flamethrower is a portable, shoulder-fired weapon used during World War II, designed to project a stream of ignited fuel to clear enemy bunkers and trenches. It was highly effective at close range, creating intense fire and destruction, but limited by its weight and fuel capacity.";
		SinWeapon.AmmoType "Fuel";
		SinWeapon.DefaultMagazine "MaliceGasolineTank";
		SinWeapon.FireType FIRE_AUTO;
		SinWeapon.ReloadType RELOAD_MAG;
		SinWeapon.Spread -0.5,-0.5;
		SinWeapon.ClimbMultiplier 0.5,0.5;
		SinWeapon.AmmoCost 4;
		SinWeapon.FireMode1 999,2;
		SinItem.BigItem 1;
		SinWeapon.CasingVelocity 0,-4,4;
		SinWeapon.DrySound "PM/GunClick";
		SinWeapon.MagOutSound "PM/HeavyRifleMagOut";
		SinWeapon.MagInSound "PM/HeavyRifleMagIn";
		SinWeapon.OpenSound "PM/HeavyRifleOpen";
		SinWeapon.CloseSound "PM/HeavyRifleClose";
	}
	States{Spawn: M2ZZ A -1; Stop;}
	Override void OnEquip(SinPlayer user, SinHands gun){user.A_StartSound("PM/HeavyRifleOpen");}
	Override void OnUnequip(SinPlayer user, SinHands gun){}
	Override void WeaponFire(SinPlayer shooter, SinHands gun){
		//shooter.A_StartSound("CyberFodder/Flamer",CHAN_5,1,1);
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
