
Class G17 : SinWeapon{
	Default{
		Inventory.Icon "G17ZA0";
		Tag "G17";
		Inventory.PickupMessage "Picked up a G17.";
		SinItem.Description "A lightweight, semi-automatic handgun known for its reliability, durability, and high-capacity 17-round magazine. Widely used by law enforcement and military forces, it features a polymer frame and minimal design, making it easy to maintain and highly effective in various conditions.";
		SinWeapon.AmmoType "9x19mm";
		SinWeapon.AmmoLoaded "MA9x19mm";
		SinWeapon.DefaultMagazine "G17Mag";
		SinWeapon.FireType FIRE_AUTO;
		SinWeapon.ReloadType RELOAD_MAG;
		SinWeapon.CanChamber 1;
		SinWeapon.FireMode1 1,4;
		SinWeapon.CasingVelocity 0,-4,4;
		SinWeapon.DrySound "PM/GunClick";
		SinWeapon.MagOutSound "MaliciousArmory/Pistol/MagOut";
		SinWeapon.MagInSound "MaliciousArmory/Pistol/MagIn";
		SinWeapon.OpenSound "MaliciousArmory/Pistol/BoltOpen";
		SinWeapon.CloseSound "MaliciousArmory/Pistol/BoltClose";
	}
	States{Spawn: G17Z A -1; Stop;}
	Override void OnEquip(SinPlayer user, SinHands gun){user.A_StartSound("MaliciousArmory/Pistol/BoltOpen");}
	Override void OnUnequip(SinPlayer user, SinHands gun){}
	Override void WeaponFire(SinPlayer shooter, SinHands gun){
		shooter.A_StartSound("PistolZombie/FireDistant",CHAN_7,CHANF_OVERLAP);
		shooter.A_StartSound("PistolZombie/Fire");
	}
}
Class G17Mag : SinAmmoBox{
	Default{
		Inventory.Icon "PCLPA0";
		Tag "G17 Mag";
		Inventory.Amount 17;
		Inventory.MaxAmount 17;
		Inventory.PickupMessage "Picked up a G17 Magazine.";
		SinItem.Description "This magazine is fit for the Glock 17 Handgun.";
		SinAmmoBox.AmmoType "9x19mm";
		SinAmmoBox.LoadedAmmo "MA9x19mm";
		SinAmmoBox.Magazine 1;
	}
	States{Spawn: PCLP A -1; Stop;}
	Override void HandleSprite(int status){
		string ico = "PCLP";
		If(Amount>0){
			If(ammoload=="MA9x19mmPower"){frame=4; ico=ico.."E0";}
			Else If(ammoload=="MA9x19mmToxic"){frame=5; ico=ico.."F0";}
			Else{frame=0; ico=ico.."A0";}
		}
		Else{frame=1; ico=ico.."B0";}
		icon=TexMan.CheckForTexture(ico,TexMan.Type_Any);
	}
}
Class MP5 : SinWeapon{
	Default{
		Inventory.Icon "MP5ZA0";
		Tag "MP5";
		Inventory.PickupMessage "Picked up an MP5.";
		SinItem.Description "A compact, fully automatic submachine gun renowned for its accuracy, reliability, and controllable recoil. Widely used by military and law enforcement units worldwide, it chambers 9x19mm rounds and excels in close-quarters combat due to its lightweight design and rapid rate of fire.";
		SinWeapon.AmmoType "9x19mm";
		SinWeapon.AmmoLoaded "MA9x19mm";
		SinWeapon.DefaultMagazine "MP5Mag";
		SinWeapon.FireType FIRE_AUTO;
		SinWeapon.ReloadType RELOAD_MAG;
		SinWeapon.Spread -0.5,-0.5;
		SinWeapon.ClimbMultiplier 0.5,0.5;
		SinWeapon.CanChamber 1;
		SinWeapon.FireMode1 1,4;
		SinWeapon.FireMode2 3,1;
		SinWeapon.FireMode3 999,4;
		SinWeapon.CasingVelocity 0,-4,4;
		SinWeapon.DrySound "PM/GunClick";
		SinWeapon.MagOutSound "PM/SMGOut";
		SinWeapon.MagInSound "PM/SMGIn";
		SinWeapon.OpenSound "MaliciousArmory/Pistol/BoltOpen";
		SinWeapon.CloseSound "MaliciousArmory/Pistol/BoltClose";
	}
	States{Spawn: MP5Z A -1; Stop;}
	Override void OnEquip(SinPlayer user, SinHands gun){user.A_StartSound("MaliciousArmory/Pistol/BoltOpen");}
	Override void OnUnequip(SinPlayer user, SinHands gun){}
	Override void WeaponFire(SinPlayer shooter, SinHands gun){
		shooter.A_StartSound("PistolZombie/FireDistant",CHAN_7,CHANF_OVERLAP,volume:0.55);
		shooter.A_StartSound("Pregnant/SMG",8,pitch:1.15);
	}
}
Class MP5Mag : SinAmmoBox{
	Default{
		Inventory.Icon "PCLPC0";
		Tag "MP5 Mag";
		Inventory.Amount 30;
		Inventory.MaxAmount 30;
		Inventory.PickupMessage "Picked up an MP5 Magazine.";
		SinItem.Description "This long double-stack magazine is fit for the MP5 Sub-Machine Gun, but it can also be used in the Glock 17 Handgun.";
		SinAmmoBox.AmmoType "9x19mm";
		SinAmmoBox.LoadedAmmo "MA9x19mm";
		SinAmmoBox.Magazine 1;
	}
	States{Spawn: PCLP C -1; Stop;}
	Override void HandleSprite(int status){
		string ico = "PCLP";
		If(Amount>0){
			If(ammoload=="MA9x19mmPower"){frame=6; ico=ico.."G0";}
			Else If(ammoload=="MA9x19mmToxic"){frame=7; ico=ico.."H0";}
			Else{frame=2; ico=ico.."C0";}
		}
		Else{frame=3; ico=ico.."D0";}
		icon=TexMan.CheckForTexture(ico,TexMan.Type_Any);
	}
}
Class M29 : SinWeapon{
	Default{
		Scale 0.85;
		Inventory.Icon "M29ZA0";
		Tag "M29";
		Inventory.Amount 5;
		Inventory.MaxAmount 5;
		Inventory.PickupMessage "Picked up an M29.";
		SinItem.Description "A powerful double-action revolver chambered in .44 Magnum, known for its robust construction and stopping power. Made famous by the 'Dirty Harry' films, it is highly regarded for its precision and reliability in hunting and self-defense.";
		SinWeapon.AmmoType "9x19mm";
		SinWeapon.AmmoLoaded "MA9x19mmPower";
		SinWeapon.FireType FIRE_MANUAL;
		SinWeapon.ReloadType RELOAD_BOTTOM;
		SinWeapon.Spread 1,1;
		SinWeapon.Climb 2,2;
		SinWeapon.CanChamber 1;
		SinWeapon.Chambered 1;
		SinWeapon.SlamFire 1;
		SinWeapon.FireMode1 1,4;
		SinWeapon.CasingVelocity 0,-4,2;
		SinWeapon.DrySound "PM/RevolverHammer";
		SinWeapon.LoadSound "PM/RevolverBulletIn";
		SinWeapon.OpenSound "PM/RevolverHammer";
		SinWeapon.CloseSound "";
		//SinWeapon.OpenSound "PM/RevolverOpen";
		//SinWeapon.CloseSound "PM/RevolverClose";
	}
	States{Spawn: M29Z A -1; Stop;}
	Override void HandleSprite(int status){cursprite=spawnstate.sprite;}
	Override void OnEquip(SinPlayer user, SinHands gun){user.A_StartSound("PM/RevolverHammer");}
	Override void OnUnequip(SinPlayer user, SinHands gun){}
	Override void WeaponFire(SinPlayer shooter, SinHands gun){
		shooter.A_StartSound("PistolZombie/FireDistant",CHAN_7,CHANF_OVERLAP);
		shooter.A_StartSound("CivZombie/Shot",9,CHANF_OVERLAP);
	}
}
