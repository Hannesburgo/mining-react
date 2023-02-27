// Modules
import database from "./FakeDatabase";

class Player {
    constructor() {
        this.miningPower = 1;
    }

    oreClick(objKey) {
        database.getPageObjects.forEach(function(obj, index){
            let x = obj.getRandomKey();
            if (x === objKey) {
                obj.setHardness(-1);
            }
        })
    }
}

export default Player;