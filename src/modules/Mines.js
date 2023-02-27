// Modules
import OresArray from "./FakeDatabase";
import OreClass from "./OreClass";

// Components
import SceneObject from "../components/SceneObject";

class Mines {
    constructor() {
        this.pageObjects = [];
        this.pageReactComponents = [];
    }

    get getPageObjects() {
        return this.pageObjects; 
    }

    get getPageReactComponents() {
        return this.pageReactComponents;
    }

    createOre(quantity) {
        let i;
        let luck;
    
        for (i=0;i<quantity;i++) {
            luck = Math.floor(Math.random() * 6);
            this.pageObjects.push(new OreClass(
                OresArray[luck].name, 
                OresArray[luck].hardness,
                OresArray[luck].img
                )
            );
            this.pageObjects[i].setReactComponent(
                <SceneObject img={this.pageObjects[i].img} onClick={this.pageObjects[i].oreClick} className="SceneObject"/>
            );
            this.pageReactComponents.push(
                this.pageObjects[i].getReactComponent
            );
       }
    }
}

export default Mines;