
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
		SinWeapon.DefaultMagazine "MACell";
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
		If(attachments.Find("PlasmaRifleBarrel")!=attachments.Size()){ico=ico.."B";}
		Else{ico=ico.."A";}
		If(attachments.Find("PlasmaRifleHeatsink")!=attachments.Size()){ico=ico.."H";}
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
			//If(attachments.Find("PlasmaRifleHeatsink")!=attachments.Size()){multishot=50;}
			//Else{multishot=40;}
		}Else{
			AttackSound="";
			guncharge=0;
			If(attachments.Find("PlasmaRifleHeatsink")!=attachments.Size()){ammocost=1;}
			Else{ammocost=2;}
			coolmax=0;
			proj="PM_HellifiedSoldierBall";
			noise=256;
			multishot=1;
		}
		HandleSprite();
	}
	Override void WeaponFire(SinPlayer shooter, SinHands gun){
		shooter.A_Quake(2,10,0,100,0);
	}
}
//	WORK
Class M2 : SinWeapon{
	Default{
		Inventory.Icon "M2ZZA0";
		Tag "M2";
		Inventory.PickupMessage "Picked up an M2.";
		SinItem.Description "A portable, shoulder-fired weapon used during World War II, designed to project a stream of ignited fuel to clear enemy bunkers and trenches. It was highly effective at close range, creating intense fire and destruction, but limited by its weight and fuel capacity.";
		SinWeapon.AmmoType "Fuel";
		SinWeapon.DefaultMagazine "M2Tank";
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
	Override void OnUnequip(SinPlayer user, SinHands gun){
		user.A_StopSounds(5,5);
	}
	Override bool WeaponPreFire(SinPlayer shooter, SinHands gun){
		If(!Super.WeaponReFire(shooter,gun)){shooter.A_StopSounds(5,5);}
		If(Amount<=0){shooter.A_StopSounds(5,5);}
		Return Super.WeaponPreFire(shooter,gun);
	}
	Override void WeaponFire(SinPlayer shooter, SinHands gun){
		shooter.A_Quake(1,5,0,100,0);
		//shooter.A_StartSound("CyberFodder/Flamer",CHAN_5,1,1);
		shooter.A_StartSound("CyberFodder/Flamer",CHAN_5,CHANF_LOOPING);
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
Class MANapalm : SinAmmo{
	Default{
		Inventory.Icon "RKITA0";
		Tag "Napalm";
		Inventory.Amount 150;
		Inventory.MaxAmount 400;
		Inventory.PickupMessage "Picked up some Napalm.";
		SinItem.Description "A thick, gel-like incendiary substance designed to stick to surfaces while burning at extremely high temperatures. It is commonly used in military operations for its ability to create intense, prolonged fires and its effectiveness in denying terrain or neutralizing fortified positions.";
		SinAmmo.AmmoType "Fuel";
		SinAmmo.TypeName "NAPALM";
		SinAmmo.AttackType ATTACK_PROJECTILE;
		SinAmmo.Projectile "NapalmProjectile";
		SinAmmo.Spread 2,2;
		SinAmmo.Noise 256;
		SinAmmo.Recoil 0;
		SinItem.Stackable 1;
		SinItem.RemoveWhenEmpty 1;
	}
	States{Spawn: RKIT A -1; Stop;}
}
Class NapalmProjectile : PM_CyberFodderFire{Default{DamageFunction 10;}}
Class M2Tank : SinAmmoBox{
	Default{
		Inventory.Icon "RKITA0";
		Tag "M2 Tank";
		Inventory.Amount 400;
		Inventory.MaxAmount 400;
		Inventory.PickupMessage "Picked up an M2 Tank.";
		SinItem.Description "A portable fuel reservoir worn on the back, designed to supply the M2 Flamethrower with pressurized liquid fuel. Its dual-cylinder configuration ensures a steady fuel flow, enabling sustained use in clearing obstacles or neutralizing threats in close combat scenarios.";
		SinAmmoBox.AmmoType "Fuel";
		SinAmmoBox.LoadedAmmo "MANapalm";
		SinAmmoBox.Magazine 1;
	}
	States{Spawn: RKIT A -1; Stop;}
}
