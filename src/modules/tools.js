// Modules
import database from "./FakeDatabase";

// Components
import InventoryObject from "../components/InventoryObject"

function renderInventory(type) {
    let filtered = [];
    let invObjects = [];

    filtered = database.filterItemData(type);
    filtered.forEach(item => {
        invObjects.push(
            <InventoryObject
                id={item.id}
                type={item.type}
                img={item.img}
            />
        )
    })

    return invObjects;
}

function returnItemQuantity(id) {
    return database.filterPlayerData(id)[0].quantity;
}

const tools = [
    renderInventory,
    returnItemQuantity,
]

export default tools;