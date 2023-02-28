// Essentials
import React from "react";

function SceneObject(props) {
    return (
        <img 
        src={props.img} 
        alt="" 
        className={props.className}
        onClick={props.clickFunction}
        key={props.randomKey}
    ></img>
    )
}

export default SceneObject;