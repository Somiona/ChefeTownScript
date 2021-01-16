#priority -100

runDissable();
runOreDict();
doModOperations();

function runDissable() {
    scripts.disabled.run();
}

function runOreDict() {
    scripts.oreDict.run();
}

function doModOperations() {
    scripts.recipes.ae2.run();
    scripts.recipes.gregtech.run();
    scripts.recipes.integratedDynamics.run();
    scripts.recipes.projRed.run();
    scripts.recipes.steves_carts.run();
    scripts.recipes.storage_drawers.run();
    scripts.recipes.vanilla.run();
}