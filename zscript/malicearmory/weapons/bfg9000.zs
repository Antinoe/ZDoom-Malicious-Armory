
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
		shooter.A_Quake(2,10,0,100,0);
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
		DamageFunction(500);
		DamageType "Explosive";
	}
	States{
	Death:
		TNT1 A 0
		{
			A_Explode(250,200);
			Radius_Quake (5, 54, 0, 25, 0);
		}
		TNT1 A 0 A_StartSound("BigExplosionDistant", CHAN_7);
		TNT1 A 0 A_StartSound("Tyrant/ShellExplode", CHAN_6);
		TNT1 A 0 A_SpawnItemEx("OrangeShockwaveBig");
		TNT1 A 0 A_SpawnItemEx("OrangeExplosionFlare");
		TNT1 AAA 0 A_SpawnItemEx("PM_ExplosionFlareSpawner",0,0,0,0,0,0,0,SXF_NOCHECKPOSITION,0);
		TNT1 AAAAAAA 0 A_SpawnItemEx("PM_GenericExplosionFlames",0,0,0,random(-3,3),random(-3,3),random(-2,3),0,SXF_NOCHECKPOSITION);
		TNT1 A 0 A_SpawnParticleEx("",TexMan.CheckForTexture("LEYSO0"),style: STYLE_Add,flags: SPF_RELATIVE|SPF_ROLL|SPF_FULLBRIGHT,lifetime: 4,size: 450,xoff: -10,velx: frandom(5,13),startalphaf: 1.0,fadestepf: -0.002,sizestep: frandom(0.0,3),startroll: random(-180,180));
		TNT1 AAAA 0
		{
			A_SpawnParticleEx("",tex[3],style: STYLE_Add,flags: SPF_RELATIVE|SPF_FULLBRIGHT|SPF_ROLL,lifetime: 8,size: 360,zoff: 40,startalphaf: 1,startroll: random(-180,180));
			A_SpawnParticleEx("",tex[4],style: STYLE_Add,flags: SPF_ROLL|SPF_RELATIVE|SPF_FULLBRIGHT,lifetime: 20,size: 800,zoff: 50, startalphaf: 1,fadestepf: -1,sizestep: -25,startroll: random(-180,180));
			for(int i=random(15,35);i>0;i--)
			{
				A_SpawnParticleEx("727272",tex[5],style: STYLE_Normal,flags: SPF_RELATIVE|SPF_ROLL,lifetime: random(40,70),size: frandom(1,30),zoff: random(10,60),velx: frandom(-12,12),vely: frandom(-12,12),velz: frandom(-5,15),accelz: frandom(-0.1,-0.5),startalphaf: 1.0,fadestepf: 0,sizestep: -0.2,startroll: random(-180,180),rollvel: random(-4,4));
				A_SpawnParticleEx("6C6C6C",tex[6],style: STYLE_Normal,flags: SPF_RELATIVE|SPF_ROLL,lifetime: random(30,60),size: frandom(10,220),zoff: random(10,60),velx: random(-9,9),vely: random(-9,9),velz: random(-9,9),startalphaf: frandom(0.2,0.75),fadestepf: -1,sizestep: 12,startroll: random(-180,180),rollvel: random(-2,2));
			}
		}
		TNT1 AAA 0 A_SpawnItemEx("PM_ExplosionLongerSmokeBig",0,0,1,random(-8,8),random(-8,8),random(0,3),0,0,70);
		TNT1 A 18 BRIGHT Light("TyrantMExp");
		Stop;
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
		shooter.A_Quake(2,10,0,100,0);
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
