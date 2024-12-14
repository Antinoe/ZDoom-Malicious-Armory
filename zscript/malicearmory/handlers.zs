
Class MaliceArmory : EventHandler{
	/*
	Override void WorldThingSpawned(WorldEvent e){
		//	Probably not necessary.
		//let proj = PMProjectileBase(e.thing);
		//
		//	BUG: Damage is insanely randomized.
		//
		//	Basic Bullets
		If(e.thing is "PM_BulletTracer"){e.thing.SetDamage(9/2);}
		If(e.thing is "PM_RevolverTracer"){e.thing.SetDamage(10/2);}
		If(e.thing is "PM_DirectorTracer"){e.thing.SetDamage(10/2);}
		If(e.thing is "PM_PelletTracer"){e.thing.SetDamage(7/2);}
		//	Heavy Carbine Zombie
		If(e.thing is "PM_CarbineBullet"){e.thing.SetDamage(18/2);}
		//	Cyber Fodder
		If(e.thing is "PM_CyberFodderBall"){e.thing.SetDamage(24/2);}
		If(e.thing is "PM_CyberFodderFire"){e.thing.SetDamage(6/2);}
		//	Tyrant
		If(e.thing is "PM_TyrantBackMissile"){e.thing.SetDamage(25/2);}
		If(e.thing is "PM_TyrantTankShell"){e.thing.SetDamage(100/2);}
		If(e.thing is "TyrantHeavyRocket"){e.thing.SetDamage(70/2);}
		If(e.thing is "PM_TyrantStreamRocket"){e.thing.SetDamage(35/2);}
		If(e.thing is "PM_TyrantSmallRocket"){e.thing.SetDamage(35/2);}
		If(e.thing is "TyrantPlasmaThrower"){e.thing.SetDamage(7/2);}
	}
	*/
	Override void WorldThingDied(WorldEvent e){
		If(cvar.GetCVar("ma_dropweap").getbool()){
			If(e.thing is "PM_CivilianZombie"){e.thing.A_SpawnItem("M29",1);}
			If(e.thing is "PM_HeavyCarbineZombie"){e.thing.A_SpawnItem("HeavyCarbine",1);}
			If(e.thing is "PM_Sybarite"){e.thing.A_SpawnItem("SybariteCannon",1);}
		}
	}
	Override void CheckReplacement(ReplaceEvent e){
		//int rand = Random(1,10);
		//If(rand==1){Do something.}
		If(e.Replacee is "GreenArmor"){If(cvar.GetCVar("ma_enable").getbool()){e.Replacement="MABallisticVest";}}
		If(e.Replacee is "BlueArmor"){If(cvar.GetCVar("ma_enable").getbool()){e.Replacement="MAOuterTacticalVest";}}
		If(e.Replacee is "Pistol"){If(cvar.GetCVar("ma_enable").getbool()){e.Replacement="G17";}}
		If(e.Replacee is "Shotgun"){If(cvar.GetCVar("ma_enable").getbool()){e.Replacement="M37";}}
		If(e.Replacee is "Chaingun"){If(cvar.GetCVar("ma_enable").getbool()){e.Replacement="M16";}}
		If(e.Replacee is "PlasmaRifle"){If(cvar.GetCVar("ma_enable").getbool()){e.Replacement="M2";}}
		If(e.Replacee is "RocketLauncher"){If(cvar.GetCVar("ma_enable").getbool()){e.Replacement="M79";}}
		If(e.Replacee is "BFG9000"){If(cvar.GetCVar("ma_enable").getbool()){e.Replacement="M202";}}
		If(e.Replacee is "SinGreenArmor"){If(cvar.GetCVar("ma_enable").getbool()){e.Replacement="MABallisticVest";}}
		If(e.Replacee is "SinBlueArmor"){If(cvar.GetCVar("ma_enable").getbool()){e.Replacement="MAOuterTacticalVest";}}
		If(e.Replacee is "SinPistol"){If(cvar.GetCVar("ma_enable").getbool()){e.Replacement="G17";}}
		If(e.Replacee is "SinShotgun"){If(cvar.GetCVar("ma_enable").getbool()){e.Replacement="M37";}}
		If(e.Replacee is "SinSuperShotgun"){If(cvar.GetCVar("ma_enable").getbool()){e.Replacement="M21";}}
		If(e.Replacee is "SinSawedOff"){If(cvar.GetCVar("ma_enable").getbool()){e.Replacement="MASawedOff";}}
		If(e.Replacee is "SinSMG"){If(cvar.GetCVar("ma_enable").getbool()){e.Replacement="MP5";}}
		If(e.Replacee is "SinChaingun"){If(cvar.GetCVar("ma_enable").getbool()){e.Replacement="M16";}}
		If(e.Replacee is "SinPlasmaRifle"){If(cvar.GetCVar("ma_enable").getbool()){e.Replacement="M2";}}
		If(e.Replacee is "SinRocketLauncher"){If(cvar.GetCVar("ma_enable").getbool()){e.Replacement="M202";}}
		If(e.Replacee is "SinAncientRifle"){If(cvar.GetCVar("ma_enable").getbool()){e.Replacement="Maroszek";}}
		If(e.Replacee is "SinPistolAmmoNormal"){If(cvar.GetCVar("ma_enable").getbool()){e.Replacement="MA9x19mm";}}
		If(e.Replacee is "SinPistolAmmoPower"){If(cvar.GetCVar("ma_enable").getbool()){e.Replacement="MA9x19mmPower";}}
		If(e.Replacee is "SinPistolAmmoToxic"){If(cvar.GetCVar("ma_enable").getbool()){e.Replacement="MA9x19mmToxic";}}
		If(e.Replacee is "SinPistolBox"){If(cvar.GetCVar("ma_enable").getbool()){e.Replacement="MA9x19mmBox";}}
		If(e.Replacee is "SinPistolClip"){If(cvar.GetCVar("ma_enable").getbool()){e.Replacement="G17Mag";}}
		If(e.Replacee is "SinSMGClip"){If(cvar.GetCVar("ma_enable").getbool()){e.Replacement="MP5Mag";}}
		If(e.Replacee is "SinShellBuckshot"){If(cvar.GetCVar("ma_enable").getbool()){e.Replacement="MA12GaugeBuckshot";}}
		If(e.Replacee is "SinShellBirdshot"){If(cvar.GetCVar("ma_enable").getbool()){e.Replacement="MA12GaugeBirdshot";}}
		If(e.Replacee is "SinShellSlug"){If(cvar.GetCVar("ma_enable").getbool()){e.Replacement="MA12GaugeSlug";}}
		If(e.Replacee is "SinShellBox"){If(cvar.GetCVar("ma_enable").getbool()){e.Replacement="MA12GaugeBox";}}
		If(e.Replacee is "SinShellBoxSarge"){If(cvar.GetCVar("ma_enable").getbool()){e.Replacement="MA12GaugeBoxSarge";}}
		If(e.Replacee is "SinRifleAmmoNormal"){If(cvar.GetCVar("ma_enable").getbool()){e.Replacement="MA556x45mm";}}
		If(e.Replacee is "SinRifleBox"){If(cvar.GetCVar("ma_enable").getbool()){e.Replacement="MA556x45mmBox";}}
		If(e.Replacee is "SinRifleClip"){If(cvar.GetCVar("ma_enable").getbool()){e.Replacement="M16Mag";}}
		If(e.Replacee is "SinAncientAmmo"){If(cvar.GetCVar("ma_enable").getbool()){e.Replacement="MA792mm";}}
		If(e.Replacee is "SinCell"){If(cvar.GetCVar("ma_enable").getbool()){e.Replacement="MANapalm";}}
		If(e.Replacee is "SinCellPack"){If(cvar.GetCVar("ma_enable").getbool()){e.Replacement="M2Tank";}}
		If(e.Replacee is "SinGrenade"){If(cvar.GetCVar("ma_enable").getbool()){e.Replacement="M67";}}
	}
}
