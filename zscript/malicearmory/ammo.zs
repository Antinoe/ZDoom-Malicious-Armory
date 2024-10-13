
Class Malice9mmAmmo : SinAmmo{
	Default{
		Inventory.Icon "PBULA0";
		Tag "9mm Ammunition";
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
Class Malice9mmAmmoPower : SinAmmo{
	Default{
		Inventory.Icon "PBUPA0";
		Tag "9mm Overpressure Ammunition";
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
//	WORK
Class Malice9mmAmmoToxic : SinAmmo{
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
Class Malice9mmBox : SinAmmoBox{
	Default{
		Inventory.Icon "AMMOB0";
		Tag "Pistol Ammo Box";
		Inventory.Amount 50;
		Inventory.MaxAmount 150;
		Inventory.PickupMessage "Picked up a Pistol Box.";
		SinItem.Description "A small box designed to carry 150 9mm Rounds.";
		SinAmmoBox.AmmoType "9mm";
		SinAmmoBox.LoadedAmmo "Malice9mmAmmo";
	}
	States{Spawn: AMMO B -1; Stop;}
}
Class Malice9mmMag : SinAmmoBox{
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
Class Malice9mmMagExtended : SinAmmoBox{
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
//	WORK
Class Malice44MagnumAmmo : SinAmmo{
	Default{
		Inventory.Icon "PBULA0";
		Tag "Magnum Ammunition";
		Inventory.Amount 10;
		Inventory.MaxAmount 30;
		Inventory.PickupMessage "Picked up a handful of .44 Magnum rounds.";
		SinItem.Description "Powerful rounds for Magnum-based firearms.";
		SinAmmo.AmmoType "44Magnum";
		SinAmmo.TypeName "FMJ";
		SinAmmo.AttackType ATTACK_PROJECTILE;
		SinAmmo.Projectile "PM_RevolverTracer";
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
Class Malice12GaugeBuckshot : SinAmmo{
	Default{
		Inventory.Icon "SHELA0";
		Tag "12-Gauge Buckshot Ammunition";
		Inventory.Amount 4;
		Inventory.MaxAmount 20;
		Inventory.PickupMessage "Picked up Buckshot Shells.";
		SinItem.Description "12-gauge buckshot ammo contains multiple large lead pellets, designed for close-range effectiveness, spreading upon firing to cover a wider area. It is commonly used in shotguns for hunting large game, home defense, and tactical applications due to its stopping power and versatility.";
		SinAmmo.AmmoType "12Gauge";
		SinAmmo.TypeName "BUCK";
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
Class Malice12GaugeBirdshot : SinAmmo{
	Default{
		Inventory.Icon "SHEMA0";
		Tag "12-Gauge Birdshot Ammunition";
		Inventory.Amount 4;
		Inventory.MaxAmount 20;
		Inventory.PickupMessage "Picked up Birdshot Shells.";
		SinItem.Description "12-gauge birdshot ammo is loaded with numerous small pellets, designed to spread over a wide area upon firing, making it ideal for hunting birds and small game. Its lighter shot and wide spread pattern also make it useful for target shooting and situations requiring minimal penetration.";
		SinAmmo.AmmoType "12Gauge";
		SinAmmo.TypeName "BIRD";
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
Class Malice12GaugeSlug : SinAmmo{
	Default{
		Inventory.Icon "SHENA0";
		Tag "12-Gauge Slug Ammunition";
		Inventory.Amount 4;
		Inventory.MaxAmount 20;
		Inventory.PickupMessage "Picked up 12-Gauge Slug Shells.";
		SinItem.Description "12-gauge slug ammo contains a single large, solid projectile, offering high stopping power and accuracy over longer distances compared to buckshot or birdshot. It is commonly used for hunting large game or in tactical situations where deep penetration and precision are needed.";
		SinAmmo.AmmoType "12Gauge";
		SinAmmo.TypeName "SLUG";
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
Class Malice12GaugeBox : SinAmmoBox{
	Default{
		Inventory.Icon "SBOXA0";
		Tag "$SINAMMO_SHELLBOX";
		Inventory.Amount 20;
		Inventory.MaxAmount 100;
		Inventory.PickupMessage "Picked up a Shell Box.";
		SinItem.Description "A box designed to carry 100 12-Gauge Shells.";
		SinAmmoBox.AmmoType "12Gauge";
		SinAmmoBox.LoadedAmmo "Malice12GaugeBuckshot";
	}
	States{Spawn: SBOX B -1; Stop;}
	Override void HandleSprite(int status){
		string ico = "SBOX";
		If(Amount>0){
			If(ammoload=="Malice12GaugeBirdshot"){frame=2; ico=ico.."C0";}
			Else If(ammoload=="Malice12GaugeSlug"){frame=3; ico=ico.."D0";}
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
		If(ammoload=="SinShellBuckshot"){ammoload="Malice12GaugeBuckshot";}
		If(ammoload=="SinShellBirdshot"){ammoload="Malice12GaugeBirdshot";}
		If(ammoload=="SinShellSlug"){ammoload="Malice12GaugeSlug";}
		HandleSprite();
	}
}
Class Malice12GaugeBoxSarge : Malice12GaugeBox{
	Override void BeginPlay(){
		Super.BeginPlay();
		If(Amount<1){Return;}
		ammoload="Malice12GaugeBuckshot";
		HandleSprite();
	}
}
Class Malice556mmAmmo : SinAmmo{
	Default{
		Inventory.Icon "MBULA0";
		Tag "5.56mm Ammunition";
		Inventory.Amount 15;
		Inventory.MaxAmount 60;
		Inventory.PickupMessage "Picked up 5.56mm Ammo.";
		SinItem.Description "5.56x45mm ammo is a lightweight, high-velocity cartridge commonly used in assault rifles like the M16 and AR-15. Known for its accuracy and reduced recoil, it is favored by military and law enforcement for its balance of range, penetration, and controllability.";
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
Class Malice556mmBox : SinAmmoBox{
	Default{
		Inventory.Icon "AMMOA0";
		Tag "5.56mm Box";
		Inventory.Amount 60;
		Inventory.MaxAmount 300;
		Inventory.PickupMessage "Picked up a 5.56mm Box.";
		SinItem.Description "A box meant to carry 300 5.56mm Rounds.";
		SinAmmoBox.AmmoType "5.56mm";
		SinAmmoBox.LoadedAmmo "Malice556mmAmmo";
	}
	States{Spawn: AMMO A -1; Stop;}
}
Class Malice556mmMag : SinAmmoBox{
	Default{
		Inventory.Icon "CLIPA0";
		Tag "5.56mm Magazine";
		Inventory.Amount 30;
		Inventory.MaxAmount 30;
		Inventory.PickupMessage "Picked up a 5.56mm Magazine.";
		SinItem.Description "A Rifle Magazine, capable of holding 30 5.56mm Rounds.";
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
		Tag "Extended 5.56mm Magazine";
		Inventory.Amount 60;
		Inventory.MaxAmount 60;
		Inventory.PickupMessage "Picked up an Extended 5.56mm Magazine.";
		SinItem.Description "An extended Rifle Magazine, capable of holding 60 5.56mm Rounds.";
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
		Tag "5.56mm Box Magazine";
		Inventory.Amount 120;
		Inventory.MaxAmount 120;
		Inventory.PickupMessage "Picked up a 5.56mm Box Magazine.";
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
Class Malice762mmAmmo : SinAmmo{
	Default{
		Inventory.Icon "MBULA0";
		Tag "7.62mm Ammunition";
		Inventory.Amount 15;
		Inventory.MaxAmount 60;
		Inventory.PickupMessage "Picked up 7.62mm Ammo.";
		SinItem.Description "7.62x51mm ammo is a powerful, full-size rifle cartridge commonly used in battle rifles and machine guns, offering excellent range and stopping power. It is favored by military forces for its effectiveness in long-range engagements and its ability to penetrate armor and barriers.";
		SinAmmo.AmmoType "7.62mm";
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
Class Malice762mmMag : SinAmmoBox{
	Default{
		Inventory.Icon "CLIPA0";
		Tag "7.62mm Magazine";
		Inventory.Amount 30;
		Inventory.MaxAmount 30;
		Inventory.PickupMessage "Picked up a 7.62mm Magazine.";
		SinItem.Description "A Rifle Magazine, capable of holding 30 7.62mm Rounds.";
		SinAmmoBox.AmmoType "7.62mm";
		SinAmmoBox.LoadedAmmo "Malice762mmAmmo";
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
Class Malice762mmMagBox : SinAmmoBox{
	Default{
		Inventory.Icon "X012A0";
		Tag "7.62mm Box Magazine";
		Inventory.Amount 120;
		Inventory.MaxAmount 120;
		Inventory.PickupMessage "Picked up a 7.62mm Box Magazine.";
		SinItem.Description "A box magazine capable of holding 120 7.62mm rounds.";
		SinAmmoBox.AmmoType "7.62mm";
		SinAmmoBox.LoadedAmmo "Malice762mmAmmo";
		SinAmmoBox.Magazine 1;
	}
	States{Spawn: X012 A -1; Stop;}
}
Class Malice762mmMagMinigun : SinAmmoBox{
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
		SinAmmoBox.LoadedAmmo "Malice762mmAmmo";
		SinAmmoBox.Magazine 1;
	}
	States{Spawn: X012 A -1; Stop;}
}
Class Malice792mmAmmo : SinAmmo{
	Default{
		Inventory.Icon "ABULA0";
		Tag "7.92mm Ammunition";
		Inventory.Amount 10;
		Inventory.MaxAmount 30;
		Inventory.PickupMessage "Picked up 7.92mm ammo.";
		SinItem.Description "7.92mm ammunition, also known as 7.92×57mm Mauser, is a powerful rifle cartridge widely used in German military firearms during both World Wars. Known for its long-range accuracy and stopping power, it was commonly employed in bolt-action rifles and machine guns.";
		SinAmmo.AmmoType "7.92mm";
		SinAmmo.TypeName "AP";
		SinAmmo.AttackType ATTACK_PROJECTILE;
		SinAmmo.Projectile "PM_RevolverTracer";
		SinAmmo.Spread 0.2,0.2;
		SinAmmo.Climb 1,1;
		SinAmmo.Noise 8192;
		SinAmmo.Casing "PM_BulletCasing";
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
		Tag "20mm Ammunition";
		Inventory.Amount 30;
		Inventory.MaxAmount 60;
		Inventory.PickupMessage "Picked up Autocannon Rounds.";
		SinItem.Description "Large-caliber ammunition typically used in heavy machine guns, aircraft cannons, and anti-aircraft weapons. These deliver significant firepower, capable of piercing armor and causing substantial damage to vehicles and fortified targets.";
		SinAmmo.AmmoType "20mm";
		SinAmmo.TypeName "FMJ";
		SinAmmo.AttackType ATTACK_PROJECTILE;
		SinAmmo.Projectile "PM_HellionFlare";
		SinAmmo.Spread 0.5,0.5;
		SinAmmo.Climb 1.5,1.5;
		SinAmmo.Noise 8192;
		SinAmmo.Casing "PM_BigBulletCasing";
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
Class MaliceAutocannonMag : SinAmmoBox{
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
Class MaliceGasoline : SinAmmo{
	Default{
		Inventory.Icon "MBULA0";
		Tag "Gasoline";
		Inventory.Amount 150;
		Inventory.MaxAmount 400;
		Inventory.PickupMessage "Picked up some Gasoline.";
		SinItem.Description "A highly flammable liquid fuel refined from crude oil, commonly used to power internal combustion engines in cars, motorcycles, and other vehicles. It is known for its energy density and volatility, making it essential for transportation but also hazardous if mishandled.";
		SinAmmo.AmmoType "Fuel";
		SinAmmo.TypeName "GAS";
		SinAmmo.AttackType ATTACK_PROJECTILE;
		SinAmmo.Projectile "PM_CyberFodderFire";
		SinAmmo.Spread 0.5,0.5;
		SinAmmo.Noise 256;
		SinAmmo.Recoil 0;
		SinItem.Stackable 1;
		SinItem.RemoveWhenEmpty 1;
	}
	States{Spawn: MBUL A -1; Stop;}
}
Class MaliceGasolineTank : SinAmmoBox{
	Default{
		Inventory.Icon "CLIPA0";
		Tag "Gasoline Tank";
		Inventory.Amount 400;
		Inventory.MaxAmount 400;
		Inventory.PickupMessage "Picked up a Gasoline Tank.";
		SinItem.Description "A storage container designed to hold gasoline, typically used to fuel vehicles, generators, or other machinery. Made from materials like steel or plastic, it is engineered to safely contain the flammable liquid and prevent leaks or spills.";
		SinAmmoBox.AmmoType "Fuel";
		SinAmmoBox.LoadedAmmo "MaliceGasoline";
		SinAmmoBox.Magazine 1;
	}
	States{Spawn: CLIP A -1; Stop;}
}
Class MaliceCell : SinAmmoBox{
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
Class MaliceCellPack : SinMisc{
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
