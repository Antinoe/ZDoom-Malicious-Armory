
Class MaliceRecipePistolAmmoPower : SinRecipe{
	Default{
		SinRecipe.Ingredients "Malice9mmAmmo", "SinGunpowder1";
		SinRecipe.IngredientAmounts 10, 1;
		SinRecipe.Result "Malice9mmAmmoPower", 10;
	}
}

Class Malice9mmAmmo : SinAmmo replaces SinPistolAmmoNormal{
	Default{
		Inventory.Icon "PBULA0";
		Tag "Handgun Ammo";
		Inventory.Amount 10;
		Inventory.MaxAmount 30;
		Inventory.PickupMessage "Picked up a handful of 9mm rounds.";
		SinItem.Description "9mm rounds are small-caliber ammunition commonly used in handguns and submachine guns, known for their balance of manageable recoil and effective stopping power. They are popular among military, law enforcement, and civilian users due to their reliability and widespread availability.";
		SinAmmo.AmmoType "9mm";
		SinAmmo.TypeName "FMJ";
		SinAmmo.AttackType ATTACK_PROJECTILE;
		SinAmmo.Projectile "PM_PelletTracer";
		SinAmmo.Spread 1.5,1.5;
		SinAmmo.Climb 0.4,0.4;
		SinAmmo.Noise 4096;
		SinAmmo.Casing "PM_SmallBulletCasing";
		SinAmmo.Recoil 1;
		SinItem.Stackable 1;
		SinItem.RemoveWhenEmpty 1;
	}
	States{Spawn: PBUL A -1; Stop;}
	Override void HandleSprite(int status){
		int fram = Amount;
		If(Amount>=10){fram=0;}
		frame=fram;
	}
}
Class Malice9mmAmmoPower : SinAmmo replaces SinPistolAmmoPower{
	Default{
		Inventory.Icon "PBUPA0";
		Tag "$SINAMMO_PISTOLPOWER";
		Inventory.Amount 10;
		Inventory.MaxAmount 30;
		Inventory.PickupMessage "Picked up a handful of 9mm Overpressure Rounds.";
		SinItem.Description "9mm overpressure rounds, also known as +P or +P+ ammunition, are loaded with more gunpowder than standard 9mm rounds, resulting in higher velocity and increased stopping power. These rounds are designed for use in firearms rated for higher pressure, offering enhanced performance in self-defense and tactical situations.";
		SinAmmo.AmmoType "9mm";
		SinAmmo.TypeName "P+";
		SinAmmo.AttackType ATTACK_PROJECTILE;
		SinAmmo.Projectile "PM_BulletTracer";
		SinAmmo.Spread 1,1;
		SinAmmo.Climb 4.0,4.0;
		SinAmmo.Noise 8192;
		SinAmmo.Casing "PM_SmallBulletCasing";
		SinAmmo.Recoil 2;
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
Class Malice9mmAmmoToxic : SinAmmo replaces SinPistolAmmoToxic{
	Default{
		Inventory.Icon "PBUTA0";
		Tag "$SINAMMO_PISTOLTOXIC";
		Inventory.Amount 10;
		Inventory.MaxAmount 30;
		Inventory.PickupMessage "$SINAMMO_PISTOLTOXICPKUP";
		SinItem.Description "$SINAMMO_PISTOLTOXICDESC";
		SinAmmo.AmmoType "9mm";
		SinAmmo.TypeName "$SINAMMO_PISTOLTOXICTYPE";
		SinAmmo.AttackType ATTACK_PROJECTILE;
		SinAmmo.Projectile "PM_PelletTracer";
		SinAmmo.Spread 1.5,1.5;
		SinAmmo.Climb 0.4,0.4;
		SinAmmo.Noise 4096;
		SinAmmo.Casing "PM_SmallBulletCasing";
		SinAmmo.Recoil 1;
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
Class Malice9mmBox : SinAmmoBox replaces SinPistolBox{
	Default{
		Inventory.Icon "AMMOB0";
		Tag "Pistol Ammo Box";
		Inventory.Amount 50;
		Inventory.MaxAmount 150;
		Inventory.PickupMessage "$SINAMMO_PISTOLBOXPKUP";
		SinItem.Description "A small box designed to carry 50 Pistol Rounds of varying caliber.";
		SinAmmoBox.AmmoType "9mm";
		SinAmmoBox.LoadedAmmo "Malice9mmAmmo";
	}
	States{Spawn: AMMO B -1; Stop;}
}
Class Malice9mmMag : SinAmmoBox replaces SinPistolClip{
	Default{
		Inventory.Icon "PCLPA0";
		Tag "Pistol Magazine";
		Inventory.Amount 17;
		Inventory.MaxAmount 17;
		Inventory.PickupMessage "Picked up a Pistol Magazine.";
		SinItem.Description "This magazine is fit for the Glock 17 Handgun.";
		SinAmmoBox.AmmoType "9mm";
		SinAmmoBox.LoadedAmmo "Malice9mmAmmo";
		SinAmmoBox.Magazine 1;
	}
	States{Spawn: PCLP A -1; Stop;}
	Override void HandleSprite(int status){
		string ico = "PCLP";
		If(Amount>0){
			If(ammoload=="Malice9mmAmmoPower"){frame=4; ico=ico.."E0";}
			Else If(ammoload=="Malice9mmAmmoToxic"){frame=5; ico=ico.."F0";}
			Else{frame=0; ico=ico.."A0";}
		}
		Else{frame=1; ico=ico.."B0";}
		icon=TexMan.CheckForTexture(ico,TexMan.Type_Any);
	}
}
Class Malice9mmMagExtended : SinAmmoBox replaces SinSMGClip{
	Default{
		Inventory.Icon "PCLPC0";
		Tag "Extended Pistol Magazine";
		Inventory.Amount 30;
		Inventory.MaxAmount 30;
		Inventory.PickupMessage "Picked up an Extended Pistol Magazine.";
		SinItem.Description "This long double-stack magazine is fit for the MP5 Sub-Machine Gun, but it can also be used in the Glock 17 Handgun.";
		SinAmmoBox.AmmoType "9mm";
		SinAmmoBox.LoadedAmmo "Malice9mmAmmo";
		SinAmmoBox.Magazine 1;
	}
	States{Spawn: PCLP C -1; Stop;}
	Override void HandleSprite(int status){
		string ico = "PCLP";
		If(Amount>0){
			If(ammoload=="Malice9mmAmmoPower"){frame=6; ico=ico.."G0";}
			Else If(ammoload=="Malice9mmAmmoToxic"){frame=7; ico=ico.."H0";}
			Else{frame=2; ico=ico.."C0";}
		}
		Else{frame=3; ico=ico.."D0";}
		icon=TexMan.CheckForTexture(ico,TexMan.Type_Any);
	}
}
Class MaliceMagnumAmmo : SinAmmo replaces SinPistolAmmoNormal{
	Default{
		Inventory.Icon "PBULA0";
		Tag "Handgun Ammo";
		Inventory.Amount 10;
		Inventory.MaxAmount 30;
		Inventory.PickupMessage "Picked up a handful of 9mm rounds.";
		SinItem.Description "9mm rounds are small-caliber ammunition commonly used in handguns and submachine guns, known for their balance of manageable recoil and effective stopping power. They are popular among military, law enforcement, and civilian users due to their reliability and widespread availability.";
		SinAmmo.AmmoType "9mm";
		SinAmmo.TypeName "FMJ";
		SinAmmo.AttackType ATTACK_PROJECTILE;
		SinAmmo.Projectile "PM_PelletTracer";
		SinAmmo.Spread 1.5,1.5;
		SinAmmo.Climb 0.4,0.4;
		SinAmmo.Noise 4096;
		SinAmmo.Casing "PM_SmallBulletCasing";
		SinAmmo.Recoil 1;
		SinItem.Stackable 1;
		SinItem.RemoveWhenEmpty 1;
	}
	States{Spawn: PBUL A -1; Stop;}
	Override void HandleSprite(int status){
		int fram = Amount;
		If(Amount>=10){fram=0;}
		frame=fram;
	}
}
Class MaliceShellBuckshot : SinAmmo replaces SinShellBuckshot{
	Default{
		Inventory.Icon "SHELA0";
		Tag "$SINAMMO_SHELL";
		Inventory.Amount 20;
		Inventory.MaxAmount 20;
		Inventory.PickupMessage "$SINAMMO_SHELLPKUP";
		SinItem.Description "$SINAMMO_SHELLDESC";
		SinAmmo.AmmoType "12Gauge";
		SinAmmo.TypeName "$SINAMMO_SHELLTYPE";
		SinAmmo.AttackType ATTACK_PROJECTILE;
		SinAmmo.Projectile "PM_PelletTracer";
		SinAmmo.Multishot 8;
		SinAmmo.Spread 4,4;
		SinAmmo.Climb 3,3;
		SinAmmo.Noise 8192;
		SinAmmo.Casing "PM_ShellCasing";
		SinAmmo.Recoil 2;
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
Class MaliceShellBirdshot : SinAmmo replaces SinShellBirdshot{
	Default{
		Inventory.Icon "SHEMA0";
		Tag "$SINAMMO_SHELLBIRD";
		Inventory.Amount 20;
		Inventory.MaxAmount 20;
		Inventory.PickupMessage "$SINAMMO_SHELLBIRDPKUP";
		SinItem.Description "$SINAMMO_SHELLBIRDDESC";
		SinAmmo.AmmoType "12Gauge";
		SinAmmo.TypeName "$SINAMMO_SHELLBIRDTYPE";
		SinAmmo.AttackType ATTACK_PROJECTILE;
		SinAmmo.Projectile "PM_PelletTracer";
		//SinAmmo.Multishot 96;
		SinAmmo.Multishot 16;
		SinAmmo.Spread 12,12;
		SinAmmo.Climb 3,3;
		SinAmmo.Noise 8192;
		SinAmmo.Casing "PM_ShellCasing";
		SinAmmo.Recoil 2;
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
Class MaliceShellSlug : SinAmmo replaces SinShellSlug{
	Default{
		Inventory.Icon "SHENA0";
		Tag "$SINAMMO_SHELLSLUG";
		Inventory.Amount 20;
		Inventory.MaxAmount 20;
		Inventory.PickupMessage "$SINAMMO_SHELLSLUGPKUP";
		SinItem.Description "$SINAMMO_SHELLSLUGDESC";
		SinAmmo.AmmoType "12Gauge";
		SinAmmo.TypeName "$SINAMMO_SHELLSLUGTYPE";
		SinAmmo.AttackType ATTACK_PROJECTILE;
		SinAmmo.Projectile "PM_SlugBullet";
		SinAmmo.HitscanDamage 80;
		SinAmmo.Multishot 1;
		SinAmmo.Spread 1,1;
		SinAmmo.Climb 3,3;
		SinAmmo.Noise 8192;
		SinAmmo.Casing "PM_ShellCasing";
		SinAmmo.Recoil 3;
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
Class MaliceShellBox : SinAmmoBox replaces SinShellBox{
	Default{
		Inventory.Icon "SBOXA0";
		Tag "$SINAMMO_SHELLBOX";
		Inventory.Amount 20;
		Inventory.MaxAmount 100;
		Inventory.PickupMessage "Picked up a Shell Box.";
		SinItem.Description "A box designed to carry 100 Shotgun Shells.";
		SinAmmoBox.AmmoType "12Gauge";
		SinAmmoBox.LoadedAmmo "MaliceShellBuckshot";
	}
	States{Spawn: SBOX B -1; Stop;}
	Override void HandleSprite(int status){
		string ico = "SBOX";
		If(Amount>0){
			If(ammoload=="MaliceShellBirdshot"){frame=2; ico=ico.."C0";}
			Else If(ammoload=="MaliceShellSlug"){frame=3; ico=ico.."D0";}
			Else{frame=0; ico=ico.."A0";}
		}
		Else{frame=1; ico=ico.."B0";}
		icon=TexMan.CheckForTexture(ico,TexMan.Type_Any);
	}
	Override void BeginPlay(){
		Super.BeginPlay();
		If(Amount<1){Return;}
		int shelltype = Random[shelltype](1,4);
		If(shelltype==3){ammoload="SinShellBirdshot";}
		If(shelltype==4){ammoload="SinShellSlug";}
		//	Failsafe
		If(ammoload=="SinShellBuckshot"){ammoload="MaliceShellBuckshot";}
		If(ammoload=="SinShellBirdshot"){ammoload="MaliceShellBirdshot";}
		If(ammoload=="SinShellSlug"){ammoload="MaliceShellSlug";}
		HandleSprite();
	}
}
Class MaliceShellBoxSarge : MaliceShellBox replaces SinShellBoxSarge{
	Override void BeginPlay(){
		Super.BeginPlay();
		If(Amount<1){Return;}
		ammoload="MaliceShellBuckshot";
		HandleSprite();
	}
}
Class Malice556mmAmmo : SinAmmo replaces SinRifleAmmoNormal{
	Default{
		Inventory.Icon "MBULA0";
		Tag "Rifle Rounds";
		Inventory.Amount 15;
		Inventory.MaxAmount 60;
		Inventory.PickupMessage "Picked up Rifle Rounds.";
		SinItem.Description "An assortment of mixed rifle calibers, notably 5.56mm and 7.62mm.";
		SinAmmo.AmmoType "5.56mm";
		SinAmmo.TypeName "FMJ";
		SinAmmo.AttackType ATTACK_PROJECTILE;
		SinAmmo.Projectile "PM_RevolverTracer";
		SinAmmo.Spread 0.5,0.5;
		SinAmmo.Climb 1.5,1.5;
		SinAmmo.Noise 8192;
		SinAmmo.Casing "PM_BulletCasing";
		SinAmmo.Recoil 1;
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
Class Malice556mmBox : SinAmmoBox replaces SinRifleBox{
	Default{
		Inventory.Icon "AMMOA0";
		Tag "$SINAMMO_RIFLEBOX";
		Inventory.Amount 60;
		Inventory.MaxAmount 300;
		Inventory.PickupMessage "$SINAMMO_RIFLEBOXPKUP";
		SinItem.Description "$SINAMMO_RIFLEBOXDESC";
		SinAmmoBox.AmmoType "5.56mm";
		SinAmmoBox.LoadedAmmo "Malice556mmAmmo";
	}
	States{Spawn: AMMO A -1; Stop;}
}
Class Malice556mmMag : SinAmmoBox replaces SinRifleClip{
	Default{
		Inventory.Icon "CLIPA0";
		Tag "Rifle Clip";
		Inventory.Amount 30;
		Inventory.MaxAmount 30;
		Inventory.PickupMessage "$SINAMMO_CHAINMAGPKUP";
		SinItem.Description "A magazine fit for the Assault Rifle.";
		SinAmmoBox.AmmoType "5.56mm";
		SinAmmoBox.LoadedAmmo "Malice556mmAmmo";
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
Class Malice556mmMagExtended : SinAmmoBox{
	Default{
		Inventory.Icon "CLIPA0";
		Tag "$SINAMMO_CHAINMAG";
		Inventory.Amount 60;
		Inventory.MaxAmount 60;
		Inventory.PickupMessage "$SINAMMO_CHAINMAGPKUP";
		SinItem.Description "$SINAMMO_CHAINMAGDESC";
		SinAmmoBox.AmmoType "5.56mm";
		SinAmmoBox.LoadedAmmo "Malice556mmAmmo";
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
Class Malice556mmMagBox : SinAmmoBox{
	Default{
		Inventory.Icon "CLIPA0";
		Tag "Box Magazine";
		Inventory.Amount 120;
		Inventory.MaxAmount 120;
		Inventory.PickupMessage "Picked up a Box Magazine.";
		SinItem.Description "A box magazine for high-caliber machine guns.";
		SinAmmoBox.AmmoType "5.56mm";
		SinAmmoBox.LoadedAmmo "Malice556mmAmmo";
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
Class Malice762mmAmmo : SinAmmo replaces SinAncientAmmo{
	Default{
		Inventory.Icon "ABULA0";
		Tag "7.62mm Rounds";
		Inventory.Amount 10;
		Inventory.MaxAmount 60;
		Inventory.PickupMessage "$SINAMMO_SECRETPKUP";
		SinItem.Description "$SINAMMO_SECRETDESC";
		SinAmmo.AmmoType "7.62mm";
		SinAmmo.TypeName "$SINAMMO_SECRETTYPE";
		SinAmmo.AttackType ATTACK_PROJECTILE;
		SinAmmo.Projectile "PM_RevolverTracer";
		SinAmmo.Spread 0.2,0.2;
		SinAmmo.Climb 1,1;
		SinAmmo.Noise 8192;
		SinAmmo.Casing "SinCasingAncient";
		SinAmmo.Recoil 2;
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
Class MaliceAutocannonAmmo : SinAmmo{
	Default{
		Inventory.Icon "MBULA0";
		Tag "Autocannon Rounds";
		Inventory.Amount 30;
		Inventory.MaxAmount 60;
		Inventory.PickupMessage "Picked up Rifle Rounds.";
		SinItem.Description "Large-caliber ammunition typically used in heavy machine guns, aircraft cannons, and anti-aircraft weapons. These deliver significant firepower, capable of piercing armor and causing substantial damage to vehicles and fortified targets.";
		SinAmmo.AmmoType "20mm";
		SinAmmo.TypeName "FMJ";
		SinAmmo.AttackType ATTACK_PROJECTILE;
		SinAmmo.Projectile "PM_HellionFlare";
		SinAmmo.Spread 0.5,0.5;
		SinAmmo.Climb 1.5,1.5;
		SinAmmo.Noise 8192;
		SinAmmo.Casing "PM_BulletCasing";
		SinAmmo.Recoil 2;
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
Class MaliceAutocannonMag : SinAmmoBox replaces SinRifleClip{
	Default{
		Inventory.Icon "CLIPA0";
		Tag "Autocannon Clip";
		Inventory.Amount 240;
		Inventory.MaxAmount 240;
		Inventory.PickupMessage "Picked up an Autocannon clip.";
		SinItem.Description "A large, robust ammunition storage device designed to hold and feed 20mm rounds into firearms, such as autocannons or heavy machine guns. This ensures a continuous supply of high-caliber ammunition for rapid firing in combat or defense scenarios.";
		SinAmmoBox.AmmoType "20mm";
		SinAmmoBox.LoadedAmmo "MaliceAutocannonAmmo";
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
Class MaliceCell : SinAmmoBox replaces SinCell{
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
Class MaliceCellPack : SinMisc replaces SinCellPack{
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
