// Essentials
import React from "react";

// Components
import SceneObject from "../../components/SceneObject";

class PageData {
    constructor(name) {
        this.name = name;
        this.objectsInside = [];
    }

    pushObject(object) {
        this.objectsInside.push(
            {
                objectId: Date.now(),
                objectData: object
            }
        );
    }

    popObject(objectId) {
        delete this.objectsInside.filter(object => (object.objectId === objectId));
    }

    returnReact() {
         return this.objectsInside.map(element => {
            if (element.objectData.type === "ore") {
                return (
                    <SceneObject
                        type={element.objectData.type}
                        img={element.objectData.img}
                        className="SceneObject"
                    />
                )
            } else { return false; }
        })
    }
}

export default PageData;