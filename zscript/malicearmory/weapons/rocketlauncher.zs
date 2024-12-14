
Class M79 : SinWeapon{
	Default{
		Inventory.Icon "M79ZA0";
		Tag "M79";
		Inventory.Amount 1;
		Inventory.MaxAmount 1;
		Inventory.PickupMessage "Picked up an M79.";
		SinItem.Description "A single-shot, shoulder-fired weapon that launches 40x46mm grenades, offering precise, mid-range explosive firepower. Widely used during the Vietnam War, it is favored for its simplicity, reliability, and ability to engage targets with high-explosive or specialty rounds.";
		SinItem.BigItem 1;
		SinWeapon.AmmoType "40x46mm";
		SinWeapon.AmmoLoaded "M381";
		SinWeapon.FireType FIRE_AUTO;
		SinWeapon.ReloadType RELOAD_BOTTOM;
		SinWeapon.FireMode1 1,10;
		SinWeapon.LoadSound "Sybarite/SlotIn";
	}
	States{Spawn: M79Z A -1; Stop;}
	Override void PostBeginPlay(){
		If(!random(0,3)){
			self.A_SpawnItem("M381",1);
		}
		If(!random(0,3)){
			self.A_SpawnItem("MA40x46mmBox",1);
		}
	}
	Override void HandleSprite(int status){cursprite=spawnstate.sprite;}
	Override void OnEquip(SinPlayer user, SinHands gun){user.A_StartSound("PM/HeavyRifleOpen");}
	Override void OnUnequip(SinPlayer user, SinHands gun){}
	Override void WeaponFire(SinPlayer shooter, SinHands gun){
		shooter.A_StartSound("Sybarite/Thump",13);
	}
}
Class M381Thrown : PM_ZTrooperFragGrenade{
	Default{
		Speed 75;
		BounceCount 0;
		-BOUNCEONFLOORS
		-BOUNCEONWALLS
		-BOUNCEONACTORS
		-BOUNCEONCEILINGS
		-CANBOUNCEWATER
	}
	States{
	Spawn:
		TNT1 A 0;
	Spawn2:
		ZGRN A 1 Light("SatyrLordRedMissile9")
		{
			A_SpawnParticle("FF2A2A",SPF_FULLBRIGHT|SPF_RELATIVE,95,13,0,0,0,0,0,0,0,0,0,0,0.85,-0.2,-1);
			A_SpawnItemEx("PM_DevilBallSmoke",0,frandom(-2,2),frandom(-2,2),0,0,frandom(0,2));
			A_SetRoll(roll+15);
		}
	Loop;
	Bounce:
	Death:
	Death2:
	XDeath:
	XDeath2:
	Explode:
		TNT1 A 0 A_StartSound("ZTrooper/FragExp",CHAN_6);
		TNT1 A 0 A_StartSound("ZTrooper/FragDebris",CHAN_7);
		TNT1 A 0 {bNoGravity = true;}
		TNT1 AAAA 0 A_SpawnItemEx("PM_GrenadeGenericExplosionFlames",0,0,0,random(-2,2),random(-2,2),random(-1,2),0,SXF_NOCHECKPOSITION);
		TNT1 AAAAAAAA 0 A_SpawnItemEx("PM_BigFireGlobs",0,0,0,random(-6,6),random(-6,6),random(-1,4),0,SXF_NOCHECKPOSITION);
		TNT1 AAAAA 0 A_SpawnProjectile("PM_DarkExpSmoke",7,0,random(0,360),2,random(0,360));
		TNT1 A 0 Radius_Quake (2, 24, 0, 15, 0);
		TNT1 A 1;
		TNT1 A 0 A_SpawnItemEx("PM_FragShrapnelSparks",0,0,1);
		TNT1 AAAAAAA 0 A_SpawnItemEx("PM_ExplosionLongerSmoke",0,0,1,random(-3,3),random(-3,3),random(0,2));
		TNT1 AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA 0 A_SpawnProjectile("PM_FragGrenadeShrapnel",random(2,20),random(-4,4),random(-180,180),CMF_OFFSETPITCH,random(5,80));
		TNT1 A 0 A_RemoveMaster(RMVF_EVERYTHING);
		TNT1 A 8 Bright Light("YellowMediumFlicker2") A_Explode(100,400);
		TNT1 A 6 Bright Light("YellowMediumFlicker2");
		TNT1 A 5 Bright Light("YellowMediumFlicker2");
		Stop;
	}
}
Class M381 : SinAmmo{
	Default{
		Inventory.Icon "M79AA0";
		Tag "M381";
		Inventory.Amount 1;
		Inventory.MaxAmount 10;
		Inventory.PickupMessage "Picked up an M381.";
		SinItem.Description "A 40x46mm high-explosive grenade designed for use with grenade launchers like the M79, capable of delivering explosive force against enemy personnel or light vehicles. Upon impact, it detonates, producing a fragmentation effect to maximize damage within its blast radius.";
		SinAmmo.AmmoType "40x46mm";
		SinAmmo.TypeName "HE";
		SinAmmo.AttackType ATTACK_PROJECTILE;
		//SinAmmo.Projectile "PM_SybGrenade";
		SinAmmo.Projectile "M381Thrown";
		SinAmmo.Spread 1.5,1.5;
		SinAmmo.Climb 0.4,0.4;
		SinAmmo.Noise 256;
		SinAmmo.Recoil 6;
		SinItem.Stackable 1;
		SinItem.RemoveWhenEmpty 1;
	}
	States{Spawn: M79A A -1; Stop;}
}
Class MA40x46mmBox : SinAmmoBox{
	Default{
		Inventory.Icon "M79AB0";
		Tag "40x46mm Ammo Box";
		Inventory.Amount 20;
		Inventory.MaxAmount 20;
		Inventory.PickupMessage "Picked up a 40x46mm Grenade Box.";
		SinItem.Description "A small box designed to carry 20 40x46mm Rounds.";
		SinAmmoBox.AmmoType "40x46mm";
		SinAmmoBox.LoadedAmmo "M381";
	}
	States{Spawn: M79A B -1; Stop;}
}
