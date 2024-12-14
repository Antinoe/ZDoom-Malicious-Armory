
Class MaliceRecipeSawedOff : SinRecipe{
	Default{
		SinRecipe.Ingredients "M21", "SinGunsmithKit";
		SinRecipe.Result "MASawedOff", 1;
	}
}
Class MaliceRecipeAncientRifle : SinRecipe{
	Default{
		SinRecipe.Ingredients "Maroszek", "SinGunsmithKit";
		SinRecipe.Result "MaroszekMod", 1;
	}
}
Class MaliceRecipePistolAmmoPower : SinRecipe{
	Default{
		SinRecipe.Ingredients "MA9x19mm", "SinGunpowder1";
		SinRecipe.IngredientAmounts 10, 1;
		SinRecipe.Result "MA9x19mmPower", 10;
	}
}
Class MaliceRecipeBallisticVestKevlar : SinRecipe{
	Default{
		SinRecipe.Ingredients "MABallisticVest", "MASoftArmorPanelKevlar";
		SinRecipe.IngredientAmounts 50, 1;
		SinRecipe.Result "MABallisticVestKevlar", 75;
	}
}
Class MaliceRecipeBallisticVestSteel : SinRecipe{
	Default{
		SinRecipe.Ingredients "MABallisticVest", "MABallisticPlateSteel";
		SinRecipe.IngredientAmounts 50, 1;
		SinRecipe.Result "MABallisticVestSteel", 150;
	}
}
Class MaliceRecipeBallisticVestCeramic : SinRecipe{
	Default{
		SinRecipe.Ingredients "MABallisticVest", "MABallisticPlateCeramic";
		SinRecipe.IngredientAmounts 50, 1;
		SinRecipe.Result "MABallisticVestCeramic", 125;
	}
}
Class MaliceRecipeOuterTacticalVestKevlar : SinRecipe{
	Default{
		SinRecipe.Ingredients "MAOuterTacticalVest", "MASoftArmorPanelKevlar";
		SinRecipe.IngredientAmounts 100, 1;
		SinRecipe.Result "MAOuterTacticalVestKevlar", 125;
	}
}
Class MaliceRecipeOuterTacticalVestSteel : SinRecipe{
	Default{
		SinRecipe.Ingredients "MAOuterTacticalVest", "MABallisticPlateSteel";
		SinRecipe.IngredientAmounts 100, 1;
		SinRecipe.Result "MAOuterTacticalVestSteel", 200;
	}
}
Class MaliceRecipeOuterTacticalVestCeramic : SinRecipe{
	Default{
		SinRecipe.Ingredients "MAOuterTacticalVest", "MABallisticPlateCeramic";
		SinRecipe.IngredientAmounts 100, 1;
		SinRecipe.Result "MAOuterTacticalVestCeramic", 150;
	}
}
