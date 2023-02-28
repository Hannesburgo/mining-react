// Essentials
import React from "react";

// Components
import SceneObject from "./SceneObject";

function InventoryObject(props) {
    return (
        <ul className="InventoryFrame">
            {<SceneObject key={props.randomKey} img={props.img} className="InventoryIcon"/>}
            <h4>{props.value}</h4>
        </ul>
    )
}

export default InventoryObject;