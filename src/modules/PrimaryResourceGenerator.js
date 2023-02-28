// Modules
import database from "./FakeDatabase";

class PrimaryResourceGenerator {
    createRandomOres(quantity) {
        for (let i=0;i<quantity;i++) {
            let luck = Math.floor(Math.random() * 6);
            database.addPageObjects(database.getOres[luck]);
        }
    }
}

var resourceGenerator = new PrimaryResourceGenerator();

export default resourceGenerator;