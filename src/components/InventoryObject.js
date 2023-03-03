// Essentials
import React from "react";

// Components
import SceneObject from "./SceneObject";

function InventoryObject(props) {
    return (
        <ul className="InventoryFrame">
            <SceneObject 
                key={props.key} 
                img={"../images/"+props.type+"/"+props.img} 
                className="InventoryIcon"
            />
            <h4>0</h4>
        </ul>
    )
}

export default InventoryObject;