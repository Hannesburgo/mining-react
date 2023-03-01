// Essentials
import React from "react";

function SceneObject(props) {
    return (
        <img 
        key={props.key}
        src={props.img} 
        alt="" 
        className={props.className}
        onClick={props.onClick}
        />
    )
}

export default SceneObject;