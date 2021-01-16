#priority 2601

import crafttweaker.item.IItemDefinition;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;

static disabledItems as IIngredient[][string] = {
};

function run() {
    for mod, items in disabledItems {
        utils.removeAndHide(items);
    }
}