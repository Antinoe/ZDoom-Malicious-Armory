
Class MaliceArmory : EventHandler{
	Override void WorldThingDied(WorldEvent e){
		If(cvar.GetCVar("ma_dropweap").getbool()){
			If(e.thing is "PM_CivilianZombie"){e.thing.A_SpawnItem("MaliceM29",1);}
			If(e.thing is "PM_HeavyCarbineZombie"){e.thing.A_SpawnItem("MaliceHeavyCarbine",1);}
			If(e.thing is "PM_Sybarite"){e.thing.A_SpawnItem("MaliceSybariteCannon",1);}
		}
	}
	Override void CheckReplacement(ReplaceEvent e){
		//int rand = Random(1,10);
		//If(rand==1){Do something.}
		If(e.Replacee is "GreenArmor"){If(cvar.GetCVar("ma_enable").getbool()){e.Replacement="MaliceBallisticVest";}}
		If(e.Replacee is "BlueArmor"){If(cvar.GetCVar("ma_enable").getbool()){e.Replacement="MaliceOuterTacticalVest";}}
		If(e.Replacee is "SinGreenArmor"){If(cvar.GetCVar("ma_enable").getbool()){e.Replacement="MaliceBallisticVest";}}
		If(e.Replacee is "SinBlueArmor"){If(cvar.GetCVar("ma_enable").getbool()){e.Replacement="MaliceOuterTacticalVest";}}
		If(e.Replacee is "Pistol"){
			If(cvar.GetCVar("ma_enable").getbool()){e.Replacement="MaliceG17";}
		}
		If(e.Replacee is "Shotgun"){
			If(cvar.GetCVar("ma_enable").getbool()){e.Replacement="MaliceM37";}
		}
		If(e.Replacee is "Chaingun"){
			If(cvar.GetCVar("ma_enable").getbool()){e.Replacement="MaliceM16";}
		}
		If(e.Replacee is "PlasmaRifle"){
			If(cvar.GetCVar("ma_enable").getbool()){e.Replacement="MaliceM2";}
		}
		If(e.Replacee is "RocketLauncher"){
			If(cvar.GetCVar("ma_enable").getbool()){e.Replacement="MaliceM79";}
		}
		If(e.Replacee is "BFG9000"){
			If(cvar.GetCVar("ma_enable").getbool()){e.Replacement="MaliceM202";}
		}
		If(e.Replacee is "SinPistol"){
			If(cvar.GetCVar("ma_enable").getbool()){e.Replacement="MaliceG17";}
		}
		If(e.Replacee is "SinShotgun"){
			If(cvar.GetCVar("ma_enable").getbool()){e.Replacement="MaliceM37";}
		}
		If(e.Replacee is "SinSuperShotgun"){
			If(cvar.GetCVar("ma_enable").getbool()){e.Replacement="MaliceM21";}
		}
		If(e.Replacee is "SinSawedOff"){
			If(cvar.GetCVar("ma_enable").getbool()){e.Replacement="MaliceSawedOff";}
		}
		If(e.Replacee is "SinSMG"){
			If(cvar.GetCVar("ma_enable").getbool()){e.Replacement="MaliceMP5";}
		}
		If(e.Replacee is "SinChaingun"){
			If(cvar.GetCVar("ma_enable").getbool()){e.Replacement="MaliceM16";}
		}
		If(e.Replacee is "SinPlasmaRifle"){
			If(cvar.GetCVar("ma_enable").getbool()){e.Replacement="MaliceM2";}
		}
		If(e.Replacee is "SinRocketLauncher"){
			If(cvar.GetCVar("ma_enable").getbool()){e.Replacement="MaliceM202";}
		}
		If(e.Replacee is "SinAncientRifle"){
			If(cvar.GetCVar("ma_enable").getbool()){e.Replacement="MaliceMaroszek";}
		}
		If(e.Replacee is "SinPistolAmmoNormal"){If(cvar.GetCVar("ma_enable").getbool()){e.Replacement="Malice9mmAmmo";}}
		If(e.Replacee is "SinPistolAmmoPower"){If(cvar.GetCVar("ma_enable").getbool()){e.Replacement="Malice9mmAmmoPower";}}
		If(e.Replacee is "SinPistolAmmoToxic"){If(cvar.GetCVar("ma_enable").getbool()){e.Replacement="Malice9mmAmmoToxic";}}
		If(e.Replacee is "SinPistolBox"){If(cvar.GetCVar("ma_enable").getbool()){e.Replacement="Malice9mmBox";}}
		If(e.Replacee is "SinPistolClip"){If(cvar.GetCVar("ma_enable").getbool()){e.Replacement="Malice9mmMag";}}
		If(e.Replacee is "SinSMGClip"){If(cvar.GetCVar("ma_enable").getbool()){e.Replacement="Malice9mmMagExtended";}}
		If(e.Replacee is "SinShellBuckshot"){If(cvar.GetCVar("ma_enable").getbool()){e.Replacement="Malice12GaugeBuckshot";}}
		If(e.Replacee is "SinShellBirdshot"){If(cvar.GetCVar("ma_enable").getbool()){e.Replacement="Malice12GaugeBirdshot";}}
		If(e.Replacee is "SinShellSlug"){If(cvar.GetCVar("ma_enable").getbool()){e.Replacement="Malice12GaugeSlug";}}
		If(e.Replacee is "SinShellBox"){If(cvar.GetCVar("ma_enable").getbool()){e.Replacement="Malice12GaugeBox";}}
		If(e.Replacee is "SinShellBoxSarge"){If(cvar.GetCVar("ma_enable").getbool()){e.Replacement="Malice12GaugeBoxSarge";}}
		If(e.Replacee is "SinRifleAmmoNormal"){If(cvar.GetCVar("ma_enable").getbool()){e.Replacement="Malice556mmAmmo";}}
		If(e.Replacee is "SinRifleBox"){If(cvar.GetCVar("ma_enable").getbool()){e.Replacement="Malice556mmBox";}}
		If(e.Replacee is "SinRifleClip"){If(cvar.GetCVar("ma_enable").getbool()){e.Replacement="Malice556mmMag";}}
		If(e.Replacee is "SinAncientAmmo"){If(cvar.GetCVar("ma_enable").getbool()){e.Replacement="Malice792mmAmmo";}}
		If(e.Replacee is "SinCell"){If(cvar.GetCVar("ma_enable").getbool()){e.Replacement="MaliceGasoline";}}
		If(e.Replacee is "SinCellPack"){If(cvar.GetCVar("ma_enable").getbool()){e.Replacement="MaliceGasolineTank";}}
		If(e.Replacee is "SinGrenade"){If(cvar.GetCVar("ma_enable").getbool()){e.Replacement="MaliceM67";}}
	}
}
