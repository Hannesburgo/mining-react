// Images
import StoneOre from "../images/StoneOre.webp";
import CoalOre from "../images/CoalOre.webp";
import CopperOre from "../images/CopperOre.webp";
import TinOre from "../images/TinOre.webp";
import SilverOre from "../images/SilverOre.webp";
import GoldOre from "../images/GoldOre.webp";

// Ore Dictionary
const Ores = {
    Stone: {
        name: "Stone",
        type: "ore",        
        img: StoneOre,
        hardness: 1
    }, 
    Coal: {
        name: "Coal",
        type: "ore",
        img: CoalOre,
        hardness: 5
    }, 
    Copper: {
        name: "Copper",
        type: "ore",
        img: CopperOre,
        hardness: 10
    }, 
    Tin: {
        name: "Tin",
        type: "ore",
        img: TinOre,
        hardness: 10
    }, 
    Silver: {
        name: "Silver",
        type: "ore",
        img: SilverOre,
        hardness: 25
    }, 
    Gold: {
        name: "Gold",
        type: "ore",
        img: GoldOre,
        hardness: 50
    }
}

const OresArray = [
    Ores.Stone,
    Ores.Coal,
    Ores.Copper,
    Ores.Tin,
    Ores.Silver,
    Ores.Gold
];

export default OresArray;