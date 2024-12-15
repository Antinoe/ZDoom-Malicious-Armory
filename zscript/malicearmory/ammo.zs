
Class MA9x19mm : SinAmmo{
	Default{
		Inventory.Icon "PBULA0";
		Tag "9x19mm Ammo";
		Inventory.Amount 10;
		Inventory.MaxAmount 20;
		Inventory.PickupMessage "Picked up a handful of 9x19mm rounds.";
		SinItem.Description "Small-caliber ammunition commonly used in handguns and submachine guns, known for their balance of manageable recoil and effective stopping power. They are popular among military, law enforcement, and civilian users due to their reliability and widespread availability.";
		SinAmmo.AmmoType "9x19mm";
		SinAmmo.TypeName "FMJ";
		SinAmmo.AttackType ATTACK_PROJECTILE;
		SinAmmo.Projectile "MA9x19mmTracer";
		SinAmmo.Spread 1.5,1.5;
		SinAmmo.Climb 0.4,0.4;
		SinAmmo.Noise 4096;
		SinAmmo.Casing "PM_SmallBulletCasing";
		SinAmmo.Recoil 0;
		SinItem.Stackable 1;
		SinItem.RemoveWhenEmpty 1;
	}
	States{Spawn: PBUL A -1; Stop;}
	Override void HandleSprite(int status){
		int fram = Amount;
		If(Amount>=10){fram=0;}
		frame=fram;
	}
	Override void PostBeginPlay(){
		If(cvar.GetCVar("ma_recoil").getbool()){self.recoil=5;}
	}
}
Class MA9x19mmTracer : PM_PelletTracer{Default{DamageFunction 20; DamageType "Pistol"; Speed 100;}}
Class MA9x19mmPower : SinAmmo{
	Default{
		Inventory.Icon "PBUPA0";
		Tag "9x19mm Overpressure Ammo";
		Inventory.Amount 10;
		Inventory.MaxAmount 20;
		Inventory.PickupMessage "Picked up a handful of 9x19mm Overpressure Rounds.";
		SinItem.Description "Loaded with more gunpowder than standard 9x19mm rounds, resulting in higher velocity and increased stopping power. These rounds are designed for use in firearms rated for higher pressure, offering enhanced performance in self-defense and tactical situations.";
		SinAmmo.AmmoType "9x19mm";
		SinAmmo.TypeName "P+";
		SinAmmo.AttackType ATTACK_PROJECTILE;
		SinAmmo.Projectile "MA9x19mmPowerTracer";
		SinAmmo.Spread 1,1;
		SinAmmo.Climb 4.0,4.0;
		SinAmmo.Noise 8192;
		SinAmmo.Casing "PM_SmallBulletCasing";
		SinAmmo.Recoil 0;
		SinItem.Stackable 1;
		SinItem.RemoveWhenEmpty 1;
	}
	States{Spawn: PBUP A -1; Stop;}
	Override void HandleSprite(int status){
		int fram = Amount;
		If(Amount>=10){fram=0;}
		frame=fram;
	}
}
Class MA9x19mmPowerTracer : PM_PelletTracer{Default{DamageFunction 30; DamageType "Pistol"; Speed 100;}}
//	WORK
Class MA9x19mmToxic : SinAmmo{
	Default{
		Inventory.Icon "PBUTA0";
		Tag "$SINAMMO_PISTOLTOXIC";
		Inventory.Amount 10;
		Inventory.MaxAmount 20;
		Inventory.PickupMessage "$SINAMMO_PISTOLTOXICPKUP";
		SinItem.Description "$SINAMMO_PISTOLTOXICDESC";
		SinAmmo.AmmoType "9x19mm";
		SinAmmo.TypeName "$SINAMMO_PISTOLTOXICTYPE";
		SinAmmo.AttackType ATTACK_PROJECTILE;
		SinAmmo.Projectile "PM_PelletTracer";
		SinAmmo.Spread 1.5,1.5;
		SinAmmo.Climb 0.4,0.4;
		SinAmmo.Noise 4096;
		SinAmmo.Casing "PM_SmallBulletCasing";
		SinAmmo.Recoil 0;
		SinItem.Stackable 1;
		SinItem.RemoveWhenEmpty 1;
	}
	States{Spawn: PBUT A -1; Stop;}
	Override void HandleSprite(int status){
		int fram = Amount;
		If(Amount>=10){fram=0;}
		frame=fram;
	}
}
Class MA9x19mmBox : SinAmmoBox{
	Default{
		Inventory.Icon "AMMOB0";
		Tag "Pistol Ammo Box";
		Inventory.Amount 50;
		Inventory.MaxAmount 100;
		Inventory.PickupMessage "Picked up a Pistol Box.";
		SinItem.Description "A small box designed to carry 100 9x19mm Rounds.";
		SinAmmoBox.AmmoType "9x19mm";
		SinAmmoBox.LoadedAmmo "MA9x19mm";
	}
	States{Spawn: Ammo B -1; Stop;}
}
Class MA12GaugeBuckshot : SinAmmo{
	Default{
		Inventory.Icon "SHELA0";
		Tag "12-Gauge Buckshot Ammo";
		Inventory.Amount 4;
		Inventory.MaxAmount 8;
		Inventory.PickupMessage "Picked up Buckshot Shells.";
		SinItem.Description "Contains multiple large lead pellets, designed for close-range effectiveness, spreading upon firing to cover a wider area. It is commonly used in shotguns for hunting large game, home defense, and tactical applications due to its stopping power and versatility.";
		SinAmmo.AmmoType "12Gauge";
		SinAmmo.TypeName "BUCK";
		SinAmmo.AttackType ATTACK_PROJECTILE;
		SinAmmo.Projectile "MA12GaugeBuckshotTracer";
		SinAmmo.Multishot 8;
		SinAmmo.Spread 4,4;
		SinAmmo.Climb 3,3;
		SinAmmo.Noise 8192;
		SinAmmo.Casing "PM_ShellCasing";
		SinAmmo.Recoil 0;
		SinItem.Stackable 1;
		SinItem.RemoveWhenEmpty 1;
	}
	States{Spawn: SHEL A -1; Stop;}
	Override void HandleSprite(int status){
		If(Amount<=4){
			int fram = 4-Amount;
			frame=fram;
		}
	}
}
Class MA12GaugeBuckshotTracer : PM_PelletTracer{Default{DamageFunction 8; DamageType "Shotgun"; Speed 100;}}
Class MA12GaugeBirdshot : SinAmmo{
	Default{
		Inventory.Icon "SHEMA0";
		Tag "12-Gauge Birdshot Ammo";
		Inventory.Amount 4;
		Inventory.MaxAmount 8;
		Inventory.PickupMessage "Picked up Birdshot Shells.";
		SinItem.Description "Loaded with numerous small pellets, designed to spread over a wide area upon firing, making it ideal for hunting birds and small game. Its lighter shot and wide spread pattern also make it useful for target shooting and situations requiring minimal penetration.";
		SinAmmo.AmmoType "12Gauge";
		SinAmmo.TypeName "BIRD";
		SinAmmo.AttackType ATTACK_PROJECTILE;
		SinAmmo.Projectile "MA12GaugeBirdshotTracer";
		//SinAmmo.Multishot 96;
		SinAmmo.Multishot 24;
		SinAmmo.Spread 12,12;
		SinAmmo.Climb 3,3;
		SinAmmo.Noise 8192;
		SinAmmo.Casing "PM_ShellCasing";
		SinAmmo.Recoil 0;
		SinItem.Stackable 1;
		SinItem.RemoveWhenEmpty 1;
	}
	States{Spawn: SHEM A -1; Stop;}
	Override void HandleSprite(int status){
		If(Amount<=4){
			int fram = 4-Amount;
			frame=fram;
		}
	}
}
Class MA12GaugeBirdshotTracer : PM_PelletTracer{Default{DamageFunction 4; DamageType "Minigun"; Speed 100;}}
Class MA12GaugeSlug : SinAmmo{
	Default{
		Inventory.Icon "SHENA0";
		Tag "12-Gauge Slug Ammo";
		Inventory.Amount 4;
		Inventory.MaxAmount 8;
		Inventory.PickupMessage "Picked up 12-Gauge Slug Shells.";
		SinItem.Description "A single large, solid projectile, offering high stopping power and accuracy over longer distances compared to buckshot or birdshot. It is commonly used for hunting large game or in tactical situations where deep penetration and precision are needed.";
		SinAmmo.AmmoType "12Gauge";
		SinAmmo.TypeName "SLUG";
		SinAmmo.AttackType ATTACK_PROJECTILE;
		SinAmmo.Projectile "MA12GaugeSlugTracer";
		SinAmmo.Multishot 1;
		SinAmmo.Spread 1,1;
		SinAmmo.Climb 3,3;
		SinAmmo.Noise 8192;
		SinAmmo.Casing "PM_ShellCasing";
		SinAmmo.Recoil 0;
		SinItem.Stackable 1;
		SinItem.RemoveWhenEmpty 1;
	}
	States{Spawn: SHEN A -1; Stop;}
	Override void HandleSprite(int status){
		If(Amount<=4){
			int fram = 4-Amount;
			frame=fram;
		}
	}
}
Class MA12GaugeSlugTracer : PM_SlugBullet{Default{DamageFunction 80; DamageType "Shotgun"; Speed 100;}}
Class MA12GaugeBox : SinAmmoBox{
	Default{
		Inventory.Icon "SBOXA0";
		Tag "12-Gauge Shell Box";
		Inventory.Amount 20;
		Inventory.MaxAmount 30;
		Inventory.PickupMessage "Picked up a Shell Box.";
		SinItem.Description "A box designed to carry 30 12-Gauge Shells.";
		SinAmmoBox.AmmoType "12Gauge";
		SinAmmoBox.LoadedAmmo "MA12GaugeBuckshot";
	}
	States{Spawn: SBOX B -1; Stop;}
	Override void HandleSprite(int status){
		string ico = "SBOX";
		If(Amount>0){
			If(ammoload=="MA12GaugeBirdshot"){frame=2; ico=ico.."C0";}
			Else If(ammoload=="MA12GaugeSlug"){frame=3; ico=ico.."D0";}
			Else{frame=0; ico=ico.."A0";}
		}
		Else{frame=1; ico=ico.."B0";}
		icon=TexMan.CheckForTexture(ico,TexMan.Type_Any);
	}
	Override void BeginPlay(){
		Super.BeginPlay();
		If(Amount<1){Return;}
		int shelltype = Random[shelltype](1,4);
		If(shelltype==3){ammoload="MA12GaugeBirdshot";}
		If(shelltype==4){ammoload="MA12GaugeSlug";}
		//	Failsafe
		If(ammoload=="SinShellBuckshot"){ammoload="MA12GaugeBuckshot";}
		If(ammoload=="SinShellBirdshot"){ammoload="MA12GaugeBirdshot";}
		If(ammoload=="SinShellSlug"){ammoload="MA12GaugeSlug";}
		HandleSprite();
	}
}
Class MA12GaugeBoxSarge : MA12GaugeBox{
	Override void BeginPlay(){
		Super.BeginPlay();
		If(Amount<1){Return;}
		ammoload="MA12GaugeBuckshot";
		HandleSprite();
	}
}
Class MA556x45mm : SinAmmo{
	Default{
		Inventory.Icon "MBULA0";
		Tag "5.56x45mm Ammo";
		Inventory.Amount 15;
		Inventory.MaxAmount 60;
		Inventory.PickupMessage "Picked up 5.56x45mm Ammo.";
		SinItem.Description "A lightweight, high-velocity cartridge commonly used in assault rifles like the M16 and AR-15. Known for its accuracy and reduced recoil, it is favored by military and law enforcement for its balance of range, penetration, and controllability.";
		SinAmmo.AmmoType "5.56x45mm";
		SinAmmo.TypeName "FMJ";
		SinAmmo.AttackType ATTACK_PROJECTILE;
		SinAmmo.Projectile "MA556x45mmTracer";
		SinAmmo.Spread 0.5,0.5;
		SinAmmo.Climb 1.5,1.5;
		SinAmmo.Noise 8192;
		SinAmmo.Casing "PM_BulletCasing";
		SinAmmo.Recoil 0;
		SinItem.Stackable 1;
		SinItem.RemoveWhenEmpty 1;
	}
	States{Spawn: MBUL A -1; Stop;}
	Override void HandleSprite(int status){
		int fram = Amount;
		If(Amount>=10){fram=0;}
		frame=fram;
	}
}
Class MA556x45mmTracer : PM_BulletTracer{Default{DamageFunction 40; DamageType "Rifle"; Speed 100;}}
Class MA556x45mmBox : SinAmmoBox{
	Default{
		Inventory.Icon "AMMOA0";
		Tag "5.56x45mm Box";
		Inventory.Amount 60;
		Inventory.MaxAmount 300;
		Inventory.PickupMessage "Picked up a 5.56x45mm Box.";
		SinItem.Description "A box meant to carry 300 5.56x45mm Rounds.";
		SinAmmoBox.AmmoType "5.56x45mm";
		SinAmmoBox.LoadedAmmo "MA556x45mm";
	}
	States{Spawn: Ammo A -1; Stop;}
}
Class MA762mm : SinAmmo{
	Default{
		Inventory.Icon "MBULA0";
		Tag "7.62mm Ammo";
		Inventory.Amount 15;
		Inventory.MaxAmount 60;
		Inventory.PickupMessage "Picked up 7.62mm Ammo.";
		SinItem.Description "A powerful, full-size rifle cartridge commonly used in battle rifles and machine guns, offering excellent range and stopping power. It is favored by military forces for its effectiveness in long-range engagements and its ability to penetrate armor and barriers.";
		SinAmmo.AmmoType "7.62mm";
		SinAmmo.TypeName "FMJ";
		SinAmmo.AttackType ATTACK_PROJECTILE;
		SinAmmo.Projectile "PM_RevolverTracer";
		SinAmmo.Spread 0.5,0.5;
		SinAmmo.Climb 1.5,1.5;
		SinAmmo.Noise 8192;
		SinAmmo.Casing "PM_BulletCasing";
		SinAmmo.Recoil 0;
		SinItem.Stackable 1;
		SinItem.RemoveWhenEmpty 1;
	}
	States{Spawn: MBUL A -1; Stop;}
	Override void HandleSprite(int status){
		int fram = Amount;
		If(Amount>=10){fram=0;}
		frame=fram;
	}
}
Class MA762mmMag : SinAmmoBox{
	Default{
		Inventory.Icon "CLIPA0";
		Tag "7.62mm Magazine";
		Inventory.Amount 30;
		Inventory.MaxAmount 30;
		Inventory.PickupMessage "Picked up a 7.62mm Magazine.";
		SinItem.Description "A Rifle Magazine, capable of holding 30 7.62mm Rounds.";
		SinAmmoBox.AmmoType "7.62mm";
		SinAmmoBox.LoadedAmmo "MA762mm";
		SinAmmoBox.Magazine 1;
	}
	States{Spawn: CLIP A -1; Stop;}
	Override void HandleSprite(int status){
		string ico = "CLIP";
		If(Amount>0){frame=0; ico=ico.."A0";}
		Else{frame=1; ico=ico.."B0";}
		icon=TexMan.CheckForTexture(ico,TexMan.Type_Any);
	}
}
Class MA762mmMagBox : SinAmmoBox{
	Default{
		Inventory.Icon "X012A0";
		Tag "7.62mm Box Magazine";
		Inventory.Amount 120;
		Inventory.MaxAmount 120;
		Inventory.PickupMessage "Picked up a 7.62mm Box Magazine.";
		SinItem.Description "A box magazine capable of holding 120 7.62mm rounds.";
		SinAmmoBox.AmmoType "7.62mm";
		SinAmmoBox.LoadedAmmo "MA762mm";
		SinAmmoBox.Magazine 1;
	}
	States{Spawn: X012 A -1; Stop;}
}
Class MA762mmMagMinigun : SinAmmoBox{
	Default{
		Inventory.Icon "X012A0";
		Tag "7.62mm Minigun Magazine";
		//Inventory.Amount 4400;
		//Inventory.MaxAmount 4400;
		Inventory.Amount 1500;
		Inventory.MaxAmount 1500;
		Inventory.PickupMessage "Picked up a 7.62mm Minigun Magazine.";
		SinItem.Description "The M134 Minigun's 4,400 round box magazine is a large ammunition container designed to feed the high rate of fire required by the minigun. It ensures continuous operation in combat, holding a massive quantity of 7.62mm rounds to support sustained suppressive fire for extended engagements.";
		SinAmmoBox.AmmoType "7.62mm";
		SinAmmoBox.LoadedAmmo "MA762mm";
		SinAmmoBox.Magazine 1;
	}
	States{Spawn: X012 A -1; Stop;}
}
//	WORK
Class MA792mm : SinAmmo{
	Default{
		Inventory.Icon "ABULA0";
		Tag "7.92mm Ammo";
		Inventory.Amount 10;
		Inventory.MaxAmount 30;
		Inventory.PickupMessage "Picked up 7.92mm Ammo.";
		SinItem.Description "Also known as 7.92×57mm Mauser, this is a powerful rifle cartridge widely used in German military firearms during both World Wars. Known for its long-range accuracy and stopping power, it was commonly employed in bolt-action rifles and machine guns.";
		SinAmmo.AmmoType "7.92mm";
		SinAmmo.TypeName "AP";
		SinAmmo.AttackType ATTACK_PROJECTILE;
		SinAmmo.Projectile "PM_RevolverTracer";
		SinAmmo.Spread 0.2,0.2;
		SinAmmo.Climb 1,1;
		SinAmmo.Noise 8192;
		SinAmmo.Casing "PM_BulletCasing";
		SinAmmo.Recoil 0;
		SinItem.Stackable 1;
		SinItem.RemoveWhenEmpty 1;
	}
	States{Spawn: ABUL A -1; Stop;}
	Override void HandleSprite(int status){
		int fram = Amount;
		If(Amount>=10){fram=0;}
		frame=fram;
	}
}
Class MA20x139mm : SinAmmo{
	Default{
		Inventory.Icon "MBULA0";
		Tag "20x139mm Ammo";
		Inventory.Amount 30;
		Inventory.MaxAmount 60;
		Inventory.PickupMessage "Picked up Autocannon Rounds.";
		SinItem.Description "A powerful round used primarily in autocannons, offering high-velocity performance and versatility in various roles, including anti-armor and anti-aircraft. It is available in multiple variants, such as high-explosive incendiary and armor-piercing, making it effective against both soft targets and light vehicles.";
		SinAmmo.AmmoType "20x139mm";
		SinAmmo.TypeName "FMJ";
		SinAmmo.AttackType ATTACK_PROJECTILE;
		SinAmmo.Projectile "PM_HellionFlare";
		SinAmmo.Spread 0.5,0.5;
		SinAmmo.Climb 1.5,1.5;
		SinAmmo.Noise 8192;
		SinAmmo.Casing "PM_BigBulletCasing";
		SinAmmo.Recoil 0;
		SinItem.Stackable 1;
		SinItem.RemoveWhenEmpty 1;
	}
	States{Spawn: MBUL A -1; Stop;}
	Override void HandleSprite(int status){
		int fram = Amount;
		If(Amount>=10){fram=0;}
		frame=fram;
	}
}
Class MACell : SinAmmoBox{
	Default{
		Inventory.Icon "CELLA0";
		Tag "$SINAMMO_CELL";
		Inventory.Amount 200;
		Inventory.MaxAmount 200;
		Inventory.PickupMessage "$SINAMMO_CELLPKUP";
		SinItem.Description "$SINAMMO_CELLDESC";
		SinAmmoBox.AmmoType "Battery";
		SinAmmoBox.Magazine 1;
		SinItem.OnBattery 1;
		SinItem.AmountMultiplier 1.0;
	}
	States{Spawn: CELL A -1; Stop;}
	Override void HandleSprite(int status){
		string ico = "CELL";
		If(Amount>=200){frame=0; ico=ico.."A0";}
		Else If(Amount>150){frame=1; ico=ico.."B0";}
		Else If(Amount>100){frame=2; ico=ico.."C0";}
		Else If(Amount>50){frame=3; ico=ico.."D0";}
		Else If(Amount>0){frame=4; ico=ico.."E0";}
		Else{frame=5; ico=ico.."F0";}
		icon=TexMan.CheckForTexture(ico,TexMan.Type_Any);
	}
}
Class MACellPack : SinMisc{
	Default{
		Inventory.Icon "CELPA0";
		Tag "$SINITEM_POWERBANK";
		Inventory.Amount 1000;
		Inventory.MaxAmount 1000;
		Inventory.PickupMessage "$SINITEM_POWERBANKPKUP";
		SinItem.Description "$SINITEM_POWERBANKDESC";
		SinItem.AmountMultiplier 0.1;
		SinItem.PowerBank 1;
		Inventory.PickupSound "misc/ammo_pkup";
		SinItem.RandomType RAND_AMMO;
	}
	States{Spawn: CELP A -1; Stop;}
}
