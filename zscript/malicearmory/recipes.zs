
Class MaliceRecipeSawedOff : SinRecipe{
	Default{
		SinRecipe.Ingredients "MaliceM21", "SinGunsmithKit";
		SinRecipe.Result "MaliceSawedOff", 1;
	}
}
Class MaliceRecipeAncientRifle : SinRecipe{
	Default{
		SinRecipe.Ingredients "MaliceMaroszek", "SinGunsmithKit";
		SinRecipe.Result "MaliceMaroszekMod", 1;
	}
}
Class MaliceRecipePistolAmmoPower : SinRecipe{
	Default{
		SinRecipe.Ingredients "Malice9mmAmmo", "SinGunpowder1";
		SinRecipe.IngredientAmounts 10, 1;
		SinRecipe.Result "Malice9mmAmmoPower", 10;
	}
}

Class MaliceRecipeGreenArmor : SinRecipe{
	Default{
		SinRecipe.Ingredients "MaliceBallisticVest", "SinGunpowder1";
		SinRecipe.IngredientAmounts 50, 1;
		SinRecipe.Result "SinGunpowder2", 1;
	}
}
Class MaliceRecipeBallisticVestKevlar : SinRecipe{
	Default{
		SinRecipe.Ingredients "MaliceBallisticVest", "MaliceSoftArmorPanelKevlar";
		SinRecipe.IngredientAmounts 50, 1;
		SinRecipe.Result "MaliceBallisticVestKevlar", 75;
	}
}
Class MaliceRecipeBallisticVestSteel : SinRecipe{
	Default{
		SinRecipe.Ingredients "MaliceBallisticVest", "MaliceBallisticPlateSteel";
		SinRecipe.IngredientAmounts 50, 1;
		SinRecipe.Result "MaliceBallisticVestSteel", 150;
	}
}
Class MaliceRecipeBallisticVestCeramic : SinRecipe{
	Default{
		SinRecipe.Ingredients "MaliceBallisticVest", "MaliceBallisticPlateCeramic";
		SinRecipe.IngredientAmounts 50, 1;
		SinRecipe.Result "MaliceBallisticVestCeramic", 125;
	}
}

Class MaliceRecipeOuterTacticalVestKevlar : SinRecipe{
	Default{
		SinRecipe.Ingredients "MaliceOuterTacticalVest", "MaliceSoftArmorPanelKevlar";
		SinRecipe.IngredientAmounts 100, 1;
		SinRecipe.Result "MaliceOuterTacticalVestKevlar", 125;
	}
}
Class MaliceRecipeOuterTacticalVestSteel : SinRecipe{
	Default{
		SinRecipe.Ingredients "MaliceOuterTacticalVest", "MaliceBallisticPlateSteel";
		SinRecipe.IngredientAmounts 100, 1;
		SinRecipe.Result "MaliceOuterTacticalVestSteel", 200;
	}
}
Class MaliceRecipeOuterTacticalVestCeramic : SinRecipe{
	Default{
		SinRecipe.Ingredients "MaliceOuterTacticalVest", "MaliceBallisticPlateCeramic";
		SinRecipe.IngredientAmounts 100, 1;
		SinRecipe.Result "MaliceOuterTacticalVestCeramic", 150;
	}
}
