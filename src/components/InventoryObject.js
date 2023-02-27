// Essentials
import React from "react";

// Components
import SceneObject from "./SceneObject";

function FooterObject(props) {
    return (
        <ul className="InventoryObject">
            {<SceneObject img={props.img} className="InventoryIcon"/>}
            <h4>{props.value}</h4>
        </ul>
    )
}

export default FooterObject;