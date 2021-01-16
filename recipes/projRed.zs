#priority 0

import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.liquid.ILiquidStack;

static shapedRecipes as IIngredient[][][][IItemStack] = {
    <projectred-transmission:wire:0> : [
        [
            [<ore:wireFineRedAlloy>],
            [<ore:wireFineRedAlloy>],
            [<ore:wireFineRedAlloy>]
        ],
        [
            [<ore:wireFineRedAlloy>, <ore:wireFineRedAlloy>, <ore:wireFineRedAlloy>]
        ]
    ],
};

static shapelessRecipes as IIngredient[][][IItemStack] = {
};

static removeRecipes as IItemStack[] = [
];

static removeFurnace as IIngredient[] = [
];

function machineRecipes() {
    gt.compressor.findRecipe(2, [<projectred-core:resource_item:200> * 9], null).remove();
    gt.compressor.recipeBuilder()
        .inputs([<ore:gemRuby> * 9])
        .outputs([<ore:blockRuby>.firstItem])
        .EUt(2).duration(sec(20))
        .buildAndRegister();
    gt.compressor.findRecipe(2, [<projectred-core:resource_item:201> * 9], null).remove();
    gt.compressor.recipeBuilder()
        .inputs([<ore:gemSapphire> * 9])
        .outputs([<ore:blockSapphire>.firstItem])
        .EUt(2).duration(sec(20))
        .buildAndRegister();
    gt.compressor.findRecipe(2, [<projectred-core:resource_item:103> * 9], null).remove();
    gt.compressor.recipeBuilder()
        .inputs([<ore:ingotRedAlloy> * 9])
        .outputs([<ore:blockRedAlloy>.firstItem])
        .EUt(2).duration(sec(20))
        .buildAndRegister();
    // Redstone Alloy cable
    gt.assembler.recipeBuilder()
        .inputs([<ore:wireFineRedAlloy> * 2])
        .notConsumable(gt.getCirc(1))
        .outputs([<projectred-transmission:wire:0>])
        .EUt(8).duration(sec(6))
        .buildAndRegister();
}

function run() {
	// Un-named recipes
	craft.removeRecipes(removeRecipes);
	craft.removeFurnace(removeFurnace);
	craft.process(shapedRecipes, false);
    craft.process(shapelessRecipes);
    
    machineRecipes();
}
