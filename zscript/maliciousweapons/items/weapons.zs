
Class MalicePistol : SinPistol{
	Default
	{
		SinWeapon.AmmoLoaded "MalicePistolAmmoNormal";
		SinWeapon.DefaultMagazine "MalicePistolClip";
		AttackSound "";
		SinWeapon.DrySound "PM/GunClick";
		SinWeapon.MagOutSound "PM/PistolMagOut";
		SinWeapon.MagInSound "PM/PistolMagIn";
		SinWeapon.OpenSound "";
		SinWeapon.CloseSound "";
	}
	Override Void WeaponFire(SinPlayer shooter, SinHands gun)
	{
		Super.WeaponFire(shooter,gun);
		shooter.A_StartSound("PistolZombie/FireDistant",CHAN_AUTO,CHANF_OVERLAP);
		shooter.A_StartSound("PistolZombie/Fire",CHAN_AUTO,CHANF_OVERLAP);
	}
}
Class MaliceShotgun : SinShotgun
{
	Default
	{
		AttackSound "";
		SinWeapon.AmmoLoaded "MaliceShellBuckshot";
		SinWeapon.DrySound "PM/GunClick";
		SinWeapon.OpenSound "GenericShotgunPump";
		SinWeapon.CloseSound "";
		SinWeapon.LoadSound "PM/ShellInsert";
	}
	Override Void WeaponFire(SinPlayer shooter, SinHands gun)
	{
		Super.WeaponFire(shooter,gun);
		//shooter.Light("YellowMediumFlicker2");
		shooter.A_StartSound("ShotgunnerGunDistant",CHAN_AUTO,CHANF_OVERLAP);
		shooter.A_StartSound("FSGunner/Fire", CHAN_AUTO,CHANF_OVERLAP);
	}
}
