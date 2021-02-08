#priority 0

import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.item.IItemDefinition;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.liquid.ILiquidStack;
import mods.gregtech.recipe.FuelRecipe;
import mods.gtadditions.recipe.Utils;

static shapedRecipes as IIngredient[][][][IItemStack] = {
};

static shapelessRecipes as IIngredient[][][IItemStack] = {
};

static removeRecipes as IItemStack[] = [
];

static removeFurnace as IIngredient[] = [
];

function biomassRecipes() {
    gt.brewer.recipeBuilder()
        .inputs([<ore:bamboo>])
        .fluidInputs([<liquid:water> * 20])
        .fluidOutputs([<liquid:biomass> * 20])
        .EUt(3).duration(sec(8))
        .buildAndRegister();
    gt.brewer.recipeBuilder()
        .inputs([<ore:bamboo>])
        .fluidInputs([<liquid:honey> * 20])
        .fluidOutputs([<liquid:biomass> * 30])
        .EUt(3).duration(sec(12))
        .buildAndRegister();
    gt.brewer.recipeBuilder()
        .inputs([<ore:bamboo>])
        .fluidInputs([<liquid:juice> * 20])
        .fluidOutputs([<liquid:biomass> * 30])
        .EUt(3).duration(sec(12))
        .buildAndRegister();
}

function machineRecipes() {
    biomassRecipes();
    //bamboo
    gt.compressor.recipeBuilder()
        .inputs([<ore:bamboo> * 8])
        .outputs([<gregtech:meta_item_2:32570>])
        .EUt(2).duration(sec(15))
        .buildAndRegister();
    gt.centrifuge.recipeBuilder()
        .inputs([<sakura:bamboo_block_sunburnt> * 5])
        .outputs([
            <gregtech:meta_item_1:2012>,
            <gregtech:meta_item_1:2196>,
            <gregtech:meta_item_2:32570>])
        .fluidOutputs([<liquid:methane> * 60])
        .EUt(32).duration(sec(15))
        .buildAndRegister();

    //Barrel Recipes
    gt.chemical_bath.recipeBuilder().inputs([<ore:dust>]).fluidInputs([<liquid:water>*1000]).outputs([<minecraft:clay>]).EUt(1).duration(16).buildAndRegister();
    gt.chemical_bath.recipeBuilder().inputs([<ore:dustRedstone>]).fluidInputs([<liquid:lava>*1000]).outputs([<minecraft:netherrack>]).EUt(1).duration(16).buildAndRegister();
    gt.chemical_bath.recipeBuilder().inputs([<ore:dustGlowstone>]).fluidInputs([<liquid:deuterium>*1000]).outputs([<minecraft:end_stone>]).EUt(1).duration(16).buildAndRegister();
    gt.chemical_bath.recipeBuilder().inputs([<minecraft:brown_mushroom>]).fluidInputs([<liquid:milk>*1000]).outputs([<minecraft:slime>,<minecraft:slime_ball>]).EUt(2).duration(20).buildAndRegister();
    gt.chemical_bath.recipeBuilder().inputs([<minecraft:red_mushroom>]).fluidInputs([<liquid:milk>*1000]).outputs([<minecraft:slime>,<minecraft:slime_ball>]).EUt(2).duration(20).buildAndRegister();

    //Storage Drawers
    gt.cutting_saw.recipeBuilder()
        .inputs([<ore:drawerTrim>])
        .outputs([<storagedrawers:upgrade_template>*2])
        .EUt(4).duration(50)
        .buildAndRegister();

    //opencomputers gate
    gt.assembler.recipeBuilder()
        .inputs([gt.getCirc("LV"), <ore:wireFineGold> * 4, <ore:wireFineRedAlloy> * 2])
        .fluidInputs([<liquid:rubber> * 288])
        .outputs([<opencomputers:material:6> * 8])
        .duration(sec(10)).EUt(120)
        .buildAndRegister();

    //Fix mistakes
    gt.centrifuge.findRecipe(5,[null],[<liquid:liquid_air>*53000]).remove();

    val aluminiumDusts as IOreDictEntry[] = [<ore:ingotAluminium>, <ore:ingotAluminum>];
    for od in aluminiumDusts {
        for ore in od.items {
            Utils.removeRecipeByOutput(gt.blast_furnace, [ore], [], false);
        }
    }

    //lava
    val lavaRecipe = FuelRecipe.create(<liquid:lava>*64, 1,32);
    mods.gregtech.recipe.RecipeMaps.SEMI_FLUID_GENERATOR_FUELS.addRecipe(lavaRecipe);
}

function run() {
	// Un-named recipes
	craft.removeRecipes(removeRecipes);
	craft.removeFurnace(removeFurnace);
	craft.process(shapedRecipes, false);
    craft.process(shapelessRecipes);

    machineRecipes();
}
