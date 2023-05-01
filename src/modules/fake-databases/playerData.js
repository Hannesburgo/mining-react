// Modules
import itemData from "./itemData"

const playerData = [
    {
        Health: 100,
        Max_Health: 100,
        Money: 0,
        Mining_Power: 1,
        Woodcutting_Power: 1
    }
]

function addItemsFromDatabase() {
    itemData.forEach(item => {
        delete item.hardness;
        delete item.img;
        item.quantity = 0;
        playerData.push(item);
    });
}

addItemsFromDatabase();
export default playerData;