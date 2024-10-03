
Class MaliceGrenade : SinWeapon replaces SinGrenade{
	Default{
		Inventory.Icon "ZGRNA0";
		Tag "$SINWEAP_GRENADE";
		AttackSound "weapons/throw";
		Inventory.Amount 1;
		Inventory.MaxAmount 4;
		Inventory.PickupSound "misc/i_pkup";
		Inventory.PickupMessage "$SINWEAP_GRENADEPKUP";
		SinItem.Description "$SINWEAP_GRENADEDESC";
		SinWeapon.FireType FIRE_THROWN;
		SinWeapon.AttackType ATTACK_PROJECTILE;
		SinWeapon.Projectile "MaliceGrenadeThrown";
		SinWeapon.Charge 30;
		SinItem.Stackable 1;
		SinItem.RemoveWhenEmpty 1;
		SinWeapon.ChargeSound "ZTrooper/FragArm";
		SinWeapon.CancelSound "weapons/nothrow";
	}
	States{Spawn: ZGRN A -1; Stop;}
	Override void HandleSprite(int status){cursprite=spawnstate.sprite;}
}
Class MaliceGrenadeThrown : PM_ZTrooperFragGrenade{Default{Speed 1;}}
