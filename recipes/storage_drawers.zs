#priority 0

import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.liquid.ILiquidStack;

static shapedRecipes as IIngredient[][][][IItemStack] = {
    //Drawer Recipe Changes
    <storagedrawers:framingtable> : [[
            [<ore:drawerTrim>,<ore:drawerTrim>,<ore:drawerTrim>],
            [<ore:drawerTrim>,<gregtech:meta_tool:5>,<ore:drawerTrim>]
    ]],
    <storagedrawers:drawer_key> : [[
        [<ore:nuggetGold>,<ore:ingotGold>],
        [<gregtech:meta_tool:9>,<ore:ingotGold>],
        [null,<storagedrawers:upgrade_template>]
    ]],
    <storagedrawers:controllerslave> : [[
        [<ore:stone>,<ore:circuitBasic>,<ore:stone>],
        [<ore:stone>,<storagedrawers:customdrawers:*>,<ore:stone>],
        [<ore:stone>,<ore:ingotGold>,<ore:stone>]
    ]],
    <storagedrawers:controller> : [[
        [<ore:stone>,<ore:circuitGood>,<ore:stone>],
        [<ore:stone>,<storagedrawers:customdrawers:*>,<ore:stone>],
        [<ore:stone>,<ore:gemDiamond>,<ore:stone>]
    ]],
    //Upgrade Recipe Changes
    <storagedrawers:upgrade_template>*2 : [[
        [<gregtech:meta_tool:5>],
        [null,<ore:drawerTrim>]
    ]],
    <storagedrawers:upgrade_storage> : [[
        [<ore:plateBronze>,<ore:plateBronze>,<ore:plateBronze>],
        [<ore:plateBronze>,<storagedrawers:upgrade_template>,<ore:plateBronze>],
        [<ore:plateBronze>,<ore:plateBronze>,<ore:plateBronze>]
    ]],
    <storagedrawers:upgrade_storage:1> : [[
        [<ore:plateSteel>,<ore:plateSteel>,<ore:plateSteel>],
        [<ore:plateSteel>,<storagedrawers:upgrade_template>,<ore:plateSteel>],
        [<ore:plateSteel>,<ore:plateSteel>,<ore:plateSteel>]
    ]],
    <storagedrawers:upgrade_storage:2> : [[
        [<ore:plateStainlessSteel>,<ore:plateStainlessSteel>,<ore:plateStainlessSteel>],
        [<ore:plateStainlessSteel>,<storagedrawers:upgrade_template>,<ore:plateStainlessSteel>],
        [<ore:plateStainlessSteel>,<ore:plateStainlessSteel>,<ore:plateStainlessSteel>]
    ]],
    <storagedrawers:upgrade_storage:3> : [[
        [<ore:plateTitanium>,<ore:plateTitanium>,<ore:plateTitanium>],
        [<ore:plateTitanium>,<storagedrawers:upgrade_template>,<ore:plateTitanium>],
        [<ore:plateTitanium>,<ore:plateTitanium>,<ore:plateTitanium>]
    ]],
    <storagedrawers:upgrade_storage:4> : [[
        [<ore:plateTungstenSteel>,<ore:plateTungstenSteel>,<ore:plateTungstenSteel>],
        [<ore:plateTungstenSteel>,<storagedrawers:upgrade_template>,<ore:plateTungstenSteel>],
        [<ore:plateTungstenSteel>,<ore:plateTungstenSteel>,<ore:plateTungstenSteel>]
    ]],
    <storagedrawers:upgrade_one_stack> : [[
        [<minecraft:flint>,<minecraft:flint>,<minecraft:flint>],
        [<minecraft:flint>,<storagedrawers:upgrade_template>,<minecraft:flint>],
        [<minecraft:flint>,<minecraft:flint>,<minecraft:flint>]
    ]]
};

static shapelessRecipes as IIngredient[][][IItemStack] = {
};

static removeRecipes as IItemStack[] = [
    //Drawer Recipe Changes
    <storagedrawers:framingtable>,
    <storagedrawers:drawer_key>,
    <storagedrawers:controllerslave>,
    <storagedrawers:controller>,
    //Upgrade Recipe Changes
    <storagedrawers:upgrade_template>,
    <storagedrawers:upgrade_storage>,
    <storagedrawers:upgrade_storage:1>,
    <storagedrawers:upgrade_storage:2>,
    <storagedrawers:upgrade_storage:3>,
    <storagedrawers:upgrade_storage:4>,
    <storagedrawers:upgrade_one_stack>
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