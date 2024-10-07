
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
