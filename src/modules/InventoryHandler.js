// Essentials
import React from "react";

// Modules 
import database from "./FakeDatabase";

// Components
import InventoryObject from "../components/InventoryObject";

class InventoryHandler {
    oreInventory() {
        let x = [];
        database.getOres.forEach(ore => {
            let randomKey = Math.floor(Math.random() * 999999);
            x.push(<InventoryObject key={randomKey} img={ore.getImg} value="0"/>)
        });

        return x;
    }
}

const InvHandler = new InventoryHandler();
export default InvHandler;