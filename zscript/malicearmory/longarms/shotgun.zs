
Class MaliceM37 : SinWeapon replaces SinShotgun{
	Default{
		Inventory.Icon "SHOGA0";
		Tag "M37";
		Inventory.Amount 7;
		Inventory.MaxAmount 7;
		Inventory.PickupMessage "Picked up an M37.";
		SinItem.Description "The Ithaca Model 37 is a pump-action shotgun known for its bottom-ejection design, making it ambidextrous and less prone to debris jams. Popular with hunters, law enforcement, and the military, it is praised for its reliability, smooth operation, and durability.";
		SinWeapon.AmmoType "12Gauge";
		SinWeapon.AmmoLoaded "MaliceShellBuckshot";
		SinWeapon.FireType FIRE_MANUAL;
		SinWeapon.ReloadType RELOAD_BOTTOM;
		SinWeapon.HitscanDamage -1;
		SinWeapon.Spread 1,1;
		SinWeapon.Climb 2,2;
		SinWeapon.CanChamber 1;
		SinWeapon.Chambered 1;
		SinWeapon.SlamFire 0;
		SinWeapon.FireMode1 1,4;
		SinItem.BigItem 1;
		SinWeapon.CasingVelocity 0,-4,2;
		SinWeapon.DrySound "PM/GunClick";
		SinWeapon.LoadSound "PM/ShellInsert";
		SinWeapon.OpenSound "MaliciousArmory/Shotgun/BoltOpen";
		SinWeapon.CloseSound "MaliciousArmory/Shotgun/BoltClose";
	}
	States{Spawn: SHOG A -1; Stop; SHOS A 0; SHEG A 0; SHES A 0;}
	Override void HandleSprite(int status){
		string ico = "SH";
		If(attachments.Find("MaliceShotgunBarrel")!=attachments.Size()){ico=ico.."E";}
		Else{ico=ico.."O";}
		If(attachments.Find("MaliceShotgunStock")!=attachments.Size()){ico=ico.."S";}
		Else{ico=ico.."G";}
		cursprite=GetSpriteIndex(ico);
		If(status!=STATE_BOLTBACK){curframe=0; ico=ico.."A0";}
		Else{curframe=1; ico=ico.."B0";}
		icon=TexMan.CheckForTexture(ico,TexMan.Type_Any);
		sprite=cursprite;
	}
	Override void OnEquip(SinPlayer user, SinHands gun){user.A_StartSound("MaliciousArmory/Shotgun/BoltOpen");}
	Override void OnUnequip(SinPlayer user, SinHands gun){}
	Override void WeaponFire(SinPlayer shooter, SinHands gun){
		If(ammoload=="MaliceShellSlug"){
			shooter.A_StartSound("SlugShotgunner/Fire",CHAN_5);
		}
		Else{
			shooter.A_StartSound("GenericShotgunFire",CHAN_5);
			shooter.A_StartSound("ShotgunnerGunDistant",CHAN_7,CHANF_OVERLAP);
		}
	}
}
//	WORK
Class MaliceM21 : SinWeapon replaces SuperShotgun{
	Default{
		Inventory.Icon "DBSGA0";
		Tag "M21";
		AttackSound "";
		Inventory.PickupMessage "Picked up a Winchester M21.";
		SinItem.Description "The Winchester Model 21 is a premium double-barrel shotgun known for its durability and craftsmanship, offering side-by-side barrels. Manufactured between 1931 and 1960, it is highly regarded for its balance, reliability, and smooth handling, making it a favorite among hunters and collectors.";
		SinWeapon.AmmoType "12Gauge";
		SinWeapon.AmmoLoaded "MaliceShellBirdshot";
		SinWeapon.FireType FIRE_DOUBLE;
		SinWeapon.SpreadMultiplier 0.5,0.5;
		SinWeapon.Climb -1,-1;
		SinWeapon.BarrelsLoaded 1,1;
		SinWeapon.FireMode1 1,4;
		SinItem.BigItem 1;
		SinWeapon.OpenSound "weapons/sshoto";
		SinWeapon.CloseSound "weapons/sshotc";
		SinWeapon.LoadSound "weapons/sshotl";
		SinWeapon.CasingVelocity -8,0,2;
	}
	States{Spawn: DBSG A -1; Stop; DBCG A 0; DBSR A 0; DBCR A 0;}
	Override void HandleSprite(int status){
		string ico = "DB";
		If(attachments.Find("MaliceSSGChoke")!=attachments.Size()){ico=ico.."C";}
		Else{ico=ico.."S";}
		If(attachments.Find("MaliceSSGScope")!=attachments.Size()){ico=ico.."R";}
		Else{ico=ico.."G";}
		cursprite=GetSpriteIndex(ico);
		ico=ico.."A0";
		icon=TexMan.CheckForTexture(ico,TexMan.Type_Any);
		sprite=cursprite;
	}
	Override void OnEquip(SinPlayer user, SinHands gun){user.A_StartSound("weapons/sshoto");}
	Override void OnUnequip(SinPlayer user, SinHands gun){}
	Override void WeaponFire(SinPlayer shooter, SinHands gun){
		If(ammoload=="MaliceShellSlug"){
			shooter.A_StartSound("SlugShotgunner/Fire",CHAN_5);
		}
		Else{
			shooter.A_StartSound("GenericShotgunFire",CHAN_5);
			shooter.A_StartSound("ShotgunnerGunDistant",CHAN_7,CHANF_OVERLAP);
		}
	}
}
//	WORK
Class MaliceSawedOff : SinWeapon replaces SinSawedOff{
	Default{
		Inventory.Icon "SAWDA0";
		Tag "$SINWEAP_SSGMOD";
		AttackSound "";
		Inventory.PickupMessage "$SINWEAP_SSGMODPKUP";
		SinItem.Description "$SINWEAP_SSGMODDESC";
		SinWeapon.AmmoType "12Gauge";
		SinWeapon.AmmoLoaded "MaliceShellBuckshot";
		SinWeapon.FireType FIRE_DOUBLE;
		SinWeapon.HitscanDamage -2;
		SinWeapon.SpreadMultiplier 2,2;
		SinWeapon.Climb 7,7;
		SinWeapon.BarrelsLoaded 1,1;
		SinWeapon.FireMode1 1,4;
		SinWeapon.OpenSound "weapons/sshoto";
		SinWeapon.CloseSound "weapons/sshotc";
		SinWeapon.LoadSound "weapons/sshotl";
		SinWeapon.CasingVelocity -8,0,2;
	}
	States{Spawn: SAWD A -1; Stop;}
	Override void HandleSprite(int status){cursprite=spawnstate.sprite;}
	Override void OnEquip(SinPlayer user, SinHands gun){user.A_StartSound("weapons/sshoto");}
	Override void OnUnequip(SinPlayer user, SinHands gun){}
	Override void WeaponFire(SinPlayer shooter, SinHands gun){
		If(ammoload=="MaliceShellSlug"){
			shooter.A_StartSound("SlugShotgunner/Fire",CHAN_5);
		}
		Else{
			shooter.A_StartSound("GenericShotgunFire",CHAN_5);
			shooter.A_StartSound("ShotgunnerGunDistant",CHAN_7,CHANF_OVERLAP);
		}
	}
}
