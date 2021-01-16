#priority 2600

import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.liquid.ILiquidStack;

static oresAdd as IItemStack[][IOreDictEntry] = {
    <ore:bamboo> : [
        <biomesoplenty:bamboo>,
        <futureminecraf:bambooitem>,
        <futureminecraf:bamboo2>
    ]
};

static oresRemove as IItemStack[][IOreDictEntry] = {
    <ore:stickWood> : [
        <biomesoplenty:bamboo>
    ]
};

function specialWork() {

}

function run(){
    specialWork();

    //remove item from oredict
    for ore, items in oresRemove {
        ore.removeItems(items);
    }

    //add item to oredict
    for ore, items in oresAdd {
        ore.addItems(items);
    }
}