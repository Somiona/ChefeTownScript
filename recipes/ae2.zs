//
// Applied Energistics 2
//

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;
import mods.gtadditions.recipe.LargeRecipeMap;
import mods.gtadditions.recipe.LargeRecipeBuilder;

static quartzGlass as IIngredient = <appliedenergistics2:quartz_glass>; 
static processor  as IIngredient[] = [<appliedenergistics2:material:23>, <appliedenergistics2:material:22>, <appliedenergistics2:material:24>];

static removeRecipes as IIngredient[] = [
];

static addShaped as IIngredient[][][][IItemStack] = {
};

static addShapeless as IIngredient[][][IItemStack] = {
    <appliedenergistics2:part:16> : [
        [<ore:cableFluix>, <minecraft:water_bucket>]
    ]
};

static removeFurnace as IIngredient[] = [
];

function machineRecipes() {
    // Add charged Certus to pure certus centrifuge
    gt.large_centrifuge.findRecipe(5, [<ore:dustPureCertusQuartz>.firstItem], null).remove();
    gt.centrifuge.findRecipe(5, [<ore:dustPureCertusQuartz>.firstItem], null).remove();
    gt.large_centrifuge.recipeBuilder()
        .inputs([<ore:dustPureCertusQuartz>])
        .outputs([<ore:dustCertusQuartz>.firstItem, <ore:dustTinyBarite>.firstItem * 3])
        .chancedOutput(<appliedenergistics2:material:1>, 300, 200)
        .EUt(5).duration(392)
        //.dupeForSmall()
        .buildAndRegister();
    gt.centrifuge.recipeBuilder()
        .inputs([<ore:dustPureCertusQuartz>])
        .outputs([<ore:dustCertusQuartz>.firstItem, <ore:dustTinyBarite>.firstItem * 3])
        .chancedOutput(<appliedenergistics2:material:1>, 300, 200)
        .EUt(5).duration(392)
        .buildAndRegister();

    // Fluix Dust
    gt.macerator.recipeBuilder()
        .inputs([<appliedenergistics2:material:7>])
        .outputs([<appliedenergistics2:material:8>])
        .EUt(16).duration(sec(4))
        .buildAndRegister();

    // Quartz Glass
    gt.alloy_smelter.recipeBuilder()
        .inputs([<ore:blockGlass>, <ore:dustQuartz> * 2])
        .outputs([<appliedenergistics2:quartz_glass>])
        .EUt(120).duration(sec(10))
        .buildAndRegister(); 

    // Processors
    gt.forming_press.recipeBuilder()
        .notConsumable(<appliedenergistics2:material:19>)
        .inputs([<ore:silicon>])
        .outputs([<appliedenergistics2:material:20>])
        .EUt(120).duration(sec(6))
        .buildAndRegister();
    gt.forming_press.recipeBuilder()
        .notConsumable(<appliedenergistics2:material:13>)
        .inputs([<ore:crystalPureCertusQuartz>])
        .outputs([<appliedenergistics2:material:16>])
        .EUt(120).duration(sec(6))
        .buildAndRegister();
    gt.forming_press.recipeBuilder()
        .notConsumable(<appliedenergistics2:material:14>)
        .inputs([<ore:plateDiamond>])
        .outputs([<appliedenergistics2:material:17>])
        .EUt(120).duration(sec(6))
        .buildAndRegister();
    gt.forming_press.recipeBuilder()
        .notConsumable(<appliedenergistics2:material:15>)
        .inputs([<ore:plateGold>])
        .outputs([<appliedenergistics2:material:18>])
        .EUt(120).duration(sec(6))
        .buildAndRegister();

    gt.forming_press.recipeBuilder()
        .inputs([<appliedenergistics2:material:16>, gt.getCirc("LV"), <appliedenergistics2:material:20>])
        .outputs([<appliedenergistics2:material:23>])
        .EUt(196).duration(sec(9))
        .buildAndRegister();
    gt.forming_press.recipeBuilder()
        .inputs([<appliedenergistics2:material:17>, gt.getCirc("LV"), <appliedenergistics2:material:20>])
        .outputs([<appliedenergistics2:material:24>])
        .EUt(196).duration(sec(9))
        .buildAndRegister();
    gt.forming_press.recipeBuilder()
        .inputs([<appliedenergistics2:material:18>, gt.getCirc("LV"), <appliedenergistics2:material:20>])
        .outputs([<appliedenergistics2:material:22>])
        .EUt(196).duration(sec(9))
        .buildAndRegister();

    //Cores
    gt.assembler.recipeBuilder()
        .inputs([<appliedenergistics2:material:22>, <ore:dustFluix> * 2, <ore:gemNetherQuartz> * 2])
        .outputs([<appliedenergistics2:material:43>])
        .EUt(410).duration(sec(13))
        .buildAndRegister();
    gt.assembler.recipeBuilder()
        .inputs([<appliedenergistics2:material:22>, <ore:dustFluix> * 2, <ore:crystalFluix> * 2])
        .outputs([<appliedenergistics2:material:44>])
        .EUt(410).duration(sec(13))
        .buildAndRegister();

    // Press recipes
    gt.laser_engraver.recipeBuilder()
        .inputs([<metaitem:shape.empty>])
        .notConsumable(<ore:craftingLensWhite>)
        .outputs([<appliedenergistics2:material:13>])
        .EUt(400).duration(sec(30))
        .buildAndRegister();
    gt.laser_engraver.recipeBuilder()
        .inputs([<metaitem:shape.empty>])
        .notConsumable(<ore:craftingLensLightBlue>)
        .outputs([<appliedenergistics2:material:14>])
        .EUt(400).duration(sec(30))
        .buildAndRegister();
    gt.laser_engraver.recipeBuilder()
        .inputs([<metaitem:shape.empty>])
        .notConsumable(<ore:craftingLensYellow>)
        .outputs([<appliedenergistics2:material:15>])
        .EUt(400).duration(sec(30))
        .buildAndRegister();
    gt.laser_engraver.recipeBuilder()
        .inputs([<metaitem:shape.empty>])
        .notConsumable(<ore:craftingLensRed>)
        .outputs([<appliedenergistics2:material:19>])
        .EUt(400).duration(sec(30))
        .buildAndRegister();

    gt.alloy_smelter.recipeBuilder()
        .inputs([<ore:dustGlass> * 2, <ore:dustQuartz>])
        .outputs([<appliedenergistics2:part:140>])
        .EUt(8).duration(sec(4))
        .buildAndRegister();

    //Add Blank Pattern Recipe
	gt.assembler.recipeBuilder()
        .inputs(<appliedenergistics2:material:23>, <appliedenergistics2:quartz_glass> * 2, <ore:plateIron> * 2)
        .fluidInputs([<liquid:plastic> * 288])
        .outputs(<appliedenergistics2:material:52>)
        .duration(80)
        .EUt(160)
        .buildAndRegister();
    //Add Charged Certus Quartz recipe
	gt.polarizer.recipeBuilder()
        .inputs(<appliedenergistics2:material:10>)
        .outputs(<appliedenergistics2:material:1>)
        .duration(20)
        .EUt(20)
        .buildAndRegister();

//Add 1k Storage cell Recipe
	gt.assembler.recipeBuilder()
        .inputs(<appliedenergistics2:material:22>, <ore:plateCertusQuartz> * 4, <ore:wireFineRedAlloy> * 8, gt.getCirc("MV"))
        .outputs(<appliedenergistics2:material:35>)
        .duration(sec(22))
        .EUt(160)
        .buildAndRegister();
    gt.assembler.recipeBuilder()
        .inputs(<appliedenergistics2:material:23>, <ore:plateCertusQuartz> * 4, <ore:wireFineRedAlloy> * 8, <appliedenergistics2:material:35> * 3)
        .outputs(<appliedenergistics2:material:36>)
        .duration(sec(22))
        .EUt(160)
        .buildAndRegister();
    gt.assembler.recipeBuilder()
        .inputs(<appliedenergistics2:material:23>, <ore:plateCertusQuartz> * 4, <ore:wireFineRedAlloy> * 8, <appliedenergistics2:material:36> * 3)
        .outputs(<appliedenergistics2:material:37>)
        .duration(sec(22))
        .EUt(160)
        .buildAndRegister();
    gt.assembler.recipeBuilder()
        .inputs(<appliedenergistics2:material:23>, <ore:plateCertusQuartz> * 4, <ore:wireFineRedAlloy> * 8, <appliedenergistics2:material:37> * 3)
        .outputs(<appliedenergistics2:material:38>)
        .duration(sec(22))
        .EUt(160)
        .buildAndRegister();
    gt.assembler.recipeBuilder()
        .inputs(<appliedenergistics2:material:22>, <appliedenergistics2:material:23>, <ore:plateCertusQuartz> * 16, <ore:wireFineRedAlloy> * 32, <appliedenergistics2:material:38> * 3)
        .outputs(<extracells:storage.component:0>)
        .duration(sec(30))
        .EUt(600)
        .buildAndRegister();
    gt.assembler.recipeBuilder()
        .inputs(<appliedenergistics2:material:22>, <appliedenergistics2:material:23>, <ore:plateCertusQuartz> * 16, <ore:wireFineRedAlloy> * 32, <extracells:storage.component:0> * 3)
        .outputs(<extracells:storage.component:1>)
        .duration(sec(30))
        .EUt(600)
        .buildAndRegister();
    gt.assembler.recipeBuilder()
        .inputs(<appliedenergistics2:material:22>, <appliedenergistics2:material:23>, <ore:plateCertusQuartz> * 16, <ore:wireFineRedAlloy> * 32, <extracells:storage.component:1> * 3)
        .outputs(<extracells:storage.component:2>)
        .duration(sec(30))
        .EUt(600)
        .buildAndRegister();
    gt.assembler.recipeBuilder()
        .inputs(<appliedenergistics2:material:22>, <appliedenergistics2:material:23>, <ore:plateCertusQuartz> * 16, <ore:wireFineRedAlloy> * 32, <extracells:storage.component:2> * 3)
        .outputs(<extracells:storage.component:3>)
        .duration(sec(30))
        .EUt(600)
        .buildAndRegister();

    //Add Fluix Glass Cable Recipe
	gt.alloy_smelter.recipeBuilder()
        .inputs(<appliedenergistics2:part:140>, <ore:crystalFluix>*2)
        .outputs(<appliedenergistics2:part:16> * 2)
        .duration(40)
        .EUt(40)
        .buildAndRegister();

    val waters as int[ILiquidStack] = {
        <liquid:water> : 80,
        <liquid:distilled_water> : 60
    };

    val aeSeeds as IItemStack[IItemStack] = {
        <appliedenergistics2:material:10> : <appliedenergistics2:crystal_seed:0>,
        <appliedenergistics2:material:11> : <appliedenergistics2:crystal_seed:600>,
        <appliedenergistics2:material:12> : <appliedenergistics2:crystal_seed:1200>
    };

    for water, duration in waters {
        for crystal, seed in aeSeeds {
            val meta = seed.metadata;
            gt.autoclave.recipeBuilder()
                .inputs([seed.withTag({progress: meta}).onlyWithTag({progress: meta})])
                .fluidInputs([water * 1000])
                .outputs([seed.withTag({progress: meta+200})])
                .duration(duration)
                .EUt(256)
                .buildAndRegister();
            gt.autoclave.recipeBuilder()
                .inputs([seed.withTag({progress: meta+200}).onlyWithTag({progress: meta+200})])
                .fluidInputs([water * 1000])
                .outputs([seed.withTag({progress: meta+400})])
                .duration(duration)
                .EUt(256)
                .buildAndRegister();    
            gt.autoclave.recipeBuilder()
                .inputs([seed.withTag({progress: meta+400}).onlyWithTag({progress: meta+400})])
                .fluidInputs([water * 1000])
                .outputs([crystal])
                .duration(duration)
                .EUt(256)
                .buildAndRegister();
        }
    }
}

function run() {
	// Un-named recipes
	craft.removeRecipes(removeRecipes);
	craft.removeFurnace(removeFurnace);
	craft.process(addShaped, false);
    craft.process(addShapeless);

    machineRecipes();
}