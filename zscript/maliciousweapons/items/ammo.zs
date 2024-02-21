//Class MaliceBulletTracer : PM_BulletTracer	{Default{DamageFunction 9;}}

Class MalicePistolAmmoNormal : SinPistolAmmoNormal
{
	Default
	{
		SinAmmo.AttackType ATTACK_PROJECTILE;
		SinAmmo.Projectile "PM_BulletTracer";
		SinAmmo.Casing "PM_SmallBulletCasing";
	}
}
Class MalicePistolAmmoPower : SinPistolAmmoPower
{
	Default
	{
		SinAmmo.AttackType ATTACK_PROJECTILE;
		SinAmmo.Projectile "PM_BulletTracer";
		SinAmmo.Casing "PM_SmallBulletCasing";
	}
}
Class MalicePistolAmmoToxic : SinPistolAmmoToxic
{
	Default
	{
		SinAmmo.AttackType ATTACK_PROJECTILE;
		SinAmmo.Projectile "PM_BulletTracer";
		SinAmmo.Casing "PM_SmallBulletCasing";
	}
}
Class MalicePistolBox : SinPistolBox
{
	Default
	{
		SinAmmoBox.LoadedAmmo "MalicePistolAmmoNormal";
	}
}
Class MalicePistolClip : SinPistolClip
{
	Default
	{
		Inventory.Amount 7;
		Inventory.MaxAmount 7;
		SinAmmoBox.LoadedAmmo "MalicePistolAmmoNormal";
	}
}
Class MaliceSMGClip : SinSMGClip
{
	Default
	{
		Inventory.Amount 20;
		Inventory.MaxAmount 20;
		SinAmmoBox.LoadedAmmo "MalicePistolAmmoNormal";
	}
}

Class MaliceShellBuckshot : SinShellBuckshot
{
	Default
	{
		SinAmmo.AttackType ATTACK_PROJECTILE;
		SinAmmo.Projectile "PM_PelletTracer";
		SinAmmo.Casing "PM_ShellCasing";
	}
}
Class MaliceShellBirdshot : SinShellBirdshot
{
	Default
	{
		SinAmmo.AttackType ATTACK_PROJECTILE;
		SinAmmo.Projectile "PM_PelletTracer";
	}
}
Class MaliceShellSlug : SinShellSlug
{
	Default
	{
		SinAmmo.AttackType ATTACK_PROJECTILE;
		SinAmmo.Projectile "PM_RevolverTracer";
	}
}
Class MaliceShellBox : SinShellBox
{
	Default
	{
		SinAmmoBox.LoadedAmmo "MaliceShellBuckshot";
	}
}
Class MaliceRifleAmmoNormal : SinRifleAmmoNormal
{
	Default
	{
		SinAmmo.AttackType ATTACK_PROJECTILE;
		SinAmmo.Projectile "PM_BulletTracer";
	}
}
Class MaliceRifleBox : SinRifleBox
{
	Default
	{
		SinAmmoBox.LoadedAmmo "MaliceRifleAmmoNormal";
	}
}
Class MaliceRifleClip : SinRifleClip
{
	Default
	{
		SinAmmoBox.LoadedAmmo "MaliceRifleAmmoNormal";
	}
}
