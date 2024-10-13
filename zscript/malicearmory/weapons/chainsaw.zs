
Class MaliceM67 : SinWeapon{
	Default{
		Inventory.Icon "ZGRNA0";
		Tag "M67";
		AttackSound "weapons/throw";
		Inventory.Amount 1;
		Inventory.MaxAmount 4;
		Inventory.PickupSound "misc/i_pkup";
		Inventory.PickupMessage "Picked up an M67.";
		SinItem.Description "The M67 grenade is a small, hand-thrown explosive device used by military forces, designed to produce a powerful blast with fragmentation. Upon detonation, it releases metal fragments, making it highly effective for clearing enemy positions and personnel within a short radius.";
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
