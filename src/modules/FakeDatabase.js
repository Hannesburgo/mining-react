// Images
import StoneOre from "../images/StoneOre.webp";
import CoalOre from "../images/CoalOre.webp";
import CopperOre from "../images/CopperOre.webp";
import TinOre from "../images/TinOre.webp";
import SilverOre from "../images/SilverOre.webp";
import GoldOre from "../images/GoldOre.webp";

// Modules
import PrimaryResource from "./PrimaryResource";

class FakeDatabase {
    constructor() {
        this.Ores = [
            new PrimaryResource("Stone", 1, StoneOre, "ore"),
            new PrimaryResource("Coal", 5, CoalOre, "ore"),
            new PrimaryResource("Copper", 10, CopperOre, "ore"),
            new PrimaryResource("Tin", 10, TinOre, "ore"),
            new PrimaryResource("Silver", 25, SilverOre, "ore"),
            new PrimaryResource("Gold", 50, GoldOre, "ore")
        ]
        this.pageObjects = [];
    }

    get getOres() {
        return this.Ores;
    }

    get getPageObjects() {
        return this.pageObjects;
    }

    get getPageObjectsReactComponents() {
        let x = [];
        this.pageObjects.forEach(function(obj){
            x.push(obj.getReactComponent);
        })
        return x;
    }

    addPageObjects(obj) {
        this.pageObjects.push(obj);
    }

    removePageObjects(index) {
        this.pageObjects.pop(index);
    }
}

var database = new FakeDatabase();

export default database;