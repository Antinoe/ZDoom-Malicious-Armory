
Class MaliceArmory : EventHandler{
	Override void WorldThingDied(WorldEvent e){
		If(e.thing is "PM_CivilianZombie"){e.thing.A_SpawnItem("MaliceM29",1);}
	}
	Override void CheckReplacement(ReplaceEvent e){
		//int rand = Random(1,10);
		//If(rand==1){Do something.}
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
			If(cvar.GetCVar("ma_enable").getbool()){e.Replacement="MaliceAutocannon";}
		}
		If(e.Replacee is "RocketLauncher"){
			If(cvar.GetCVar("ma_enable").getbool()){e.Replacement="MaliceRPG7";}
		}
		If(e.Replacee is "BFG9000"){
			If(cvar.GetCVar("ma_enable").getbool()){e.Replacement="MaliceM202";}
		}
		If(e.Replacee is "SinPistolAmmoNormal"){If(cvar.GetCVar("ma_enable").getbool()){e.Replacement="Malice9mmAmmo";}}
		If(e.Replacee is "SinPistolAmmoPower"){If(cvar.GetCVar("ma_enable").getbool()){e.Replacement="Malice9mmAmmoPower";}}
		If(e.Replacee is "SinPistolBox"){If(cvar.GetCVar("ma_enable").getbool()){e.Replacement="Malice9mmBox";}}
		If(e.Replacee is "SinPistolClip"){If(cvar.GetCVar("ma_enable").getbool()){e.Replacement="Malice9mmMag";}}
		If(e.Replacee is "SinSMGClip"){If(cvar.GetCVar("ma_enable").getbool()){e.Replacement="Malice9mmMagExtended";}}
	}
}
