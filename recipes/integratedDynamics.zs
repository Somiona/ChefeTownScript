#priority 0

import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.liquid.ILiquidStack;
import mods.integrateddynamics.DryingBasin;
import mods.integrateddynamics.MechanicalDryingBasin;

static shapedRecipes as IIngredient[][][][IItemStack] = {
};

static shapelessRecipes as IIngredient[][][IItemStack] = {
};

static removeRecipes as IItemStack[] = [
];

static removeFurnace as IIngredient[] = [
];

function addDryingRecipe(inputStack as IItemStack, inputFluid as ILiquidStack, outputStack as IItemStack, outputFluid as ILiquidStack, duration as int) {
    DryingBasin.addRecipe(
        inputStack, inputFluid, outputStack, outputFluid, duration
    );
    MechanicalDryingBasin.addRecipe(
        inputStack, inputFluid, outputStack, outputFluid, duration
    );
}

function machineRecipes() {
    addDryingRecipe(
        <sakura:bamboo_block>,null,
        <sakura:bamboo_block_sunburnt>,null
        ,10);
}

function run() {
	// Un-named recipes
	craft.removeRecipes(removeRecipes);
	craft.removeFurnace(removeFurnace);
	craft.process(shapedRecipes, false);
    craft.process(shapelessRecipes);
    
    machineRecipes();
}
