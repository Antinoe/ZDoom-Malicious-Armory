
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
