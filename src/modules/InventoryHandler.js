// Essentials
import React from "react";

// Database
import primaryResourceData from "./fake-databases/primaryResourceData";

// Components
import InventoryObject from "../components/InventoryObject";

class InventoryHandler {
    oreInventory() {
        let x = primaryResourceData.filter(resource => {
            return (resource.type === "ore" ? true : false);
        }).map(ore => {
            return (
            <InventoryObject
                key={ore.id}
                type={ore.type}
                img={ore.img}
            />);
        })
        return x;
    }
}

const InvHandler = new InventoryHandler();
export default InvHandler;