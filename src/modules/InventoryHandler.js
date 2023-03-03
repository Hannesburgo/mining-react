// Essentials
import React from "react";

// Database
import itemData from "./fake-databases/itemData";

// Components
import InventoryObject from "../components/InventoryObject";

class InventoryHandler {
    inventorySort(type) {
        let x = itemData.filter(resource => {
            return (resource.type === type ? true : false);
        }).map(filtered => {
            return (
            <InventoryObject
                key={filtered.id}
                type={filtered.type}
                img={filtered.img}
            />);
        })
        return x;
    }
}

const InvHandler = new InventoryHandler();
export default InvHandler;