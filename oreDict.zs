#priority 2600

import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.liquid.ILiquidStack;

static oresAdd as IItemStack[][IOreDictEntry] = {
};

static oresRemove as IItemStack[][IOreDictEntry] = {
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