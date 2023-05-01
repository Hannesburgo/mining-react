<<<<<<< Updated upstream
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
=======
// Modules
import Page from "./Page";

// Components
import SceneObject from "../components/SceneObject";

class FakeDatabase {
    constructor() {
        this.itemData = [
            {
                id: 0,
                type: "ore",
                name: "Stone",
                hardness: 1,
                img: "StoneOre.webp"
            },
            {
                id: 1,
                type: "ore",
                name: "Coal",
                hardness: 5,
                img: "CoalOre.webp"
            },
            {
                id: 2,
                type: "ore",
                name: "Copper",
                hardness: 10,
                img: "CopperOre.webp"
            },
            {
                id: 3,
                type: "ore",
                name: "Tin",
                hardness: 10,
                img: "TinOre.webp"
            },
            {
                id: 4,
                type: "ore",
                name: "Silver",
                hardness: 25,
                img: "SilverOre.webp"
            },
            {
                id: 5,
                type: "ore",
                name: "Gold",
                hardness: 50,
                img: "GoldOre.webp"
            },
            {
                id: 6,
                type: "log",
                name: "Pine",
                hardness: 1,
                img: "PineLog.webp"
            },
            {
                id: 7,
                type: "log",
                name: "Oak",
                hardness: 5,
                img: "OakLog.webp"
            },
            {
                id: 8,
                type: "log",
                name: "Willow",
                hardness: 10,
                img: "WillowLog.webp"
            },
            {
                id: 9,
                type: "log",
                name: "Mahogany",
                hardness: 25,
                img: "MahoganyLog.webp"
            },
            {
                id: 10,
                type: "log",
                name: "Maple",
                hardness: 50,
                img: "MapleLog.webp"
            }
        ]

        this.pageData = [
            new Page(0, "Mines"),
            new Page(1, "Forest")
        ]

        this.playerData = [
            {
                id: -1,
                Health: 100,
                Max_Health: 100,
                Money: 0,
                Mining_Power: 1,
                Woodcutting_Power: 1
            },            
            {
                id: 0,
                type: "ore",
                name: "Stone",
                quantity: 0 
            },
            {
                id: 1,
                type: "ore",
                name: "Coal",
                quantity: 0 
            },
            {
                id: 2,
                type: "ore",
                name: "Copper",
                quantity: 0 
            },
            {
                id: 3,
                type: "ore",
                name: "Tin",
                quantity: 0 
            },
            {
                id: 4,
                type: "ore",
                name: "Silver",
                quantity: 0 
            },
            {
                id: 5,
                type: "ore",
                name: "Gold",
                quantity: 0 
            },
            {
                id: 6,
                type: "log",
                name: "Pine",
                quantity: 0 
            },
            {
                id: 7,
                type: "log",
                name: "Oak",
                quantity: 0 
            },
            {
                id: 8,
                type: "log",
                name: "Willow",
                quantity: 0 
            },
            {
                id: 9,
                type: "log",
                name: "Mahogany",
                quantity: 0 
            },
            {
                id: 10,
                type: "log",
                name: "Maple",
                quantity: 0 
            }
        ]
    }

    filterItemData(type) {
        let filterResult = [];

        this.itemData.filter(item => {
            return (item.type === type ? true : false);
        }).forEach(filtered => {
            filterResult.push(filtered);
        })

        return filterResult;
    }

    filterPlayerData(id) {
        let filterResult = [];

        this.playerData.filter(item => {
            return (item.id === id ? true : false);
        }).forEach(filtered => {
            filterResult.push(filtered);
        })

        return filterResult;
    }
}

const database = new FakeDatabase();
export default database;
>>>>>>> Stashed changes
