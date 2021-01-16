#priority 0

import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.liquid.ILiquidStack;

static shapedRecipes as IIngredient[][][][IItemStack] = {
};

static shapelessRecipes as IIngredient[][][IItemStack] = {
};

static removeRecipes as IItemStack[] = [
];

static removeFurnace as IIngredient[] = [
];

function machineRecipes() {
    
}

function run() {
	// Un-named recipes
	craft.removeRecipes(removeRecipes);
	craft.removeFurnace(removeFurnace);
	craft.process(shapedRecipes, false);
    craft.process(shapelessRecipes);
    
    machineRecipes();
}
