// Essentials
import React from "react";

function SceneObject(props) {
    return (
        <div>
            <img 
                src={props.img} 
                alt="" 
                className={props.className}
                onClick={props.clickFunction}
                key={props.randomKey}
            ></img>
        </div>
    )
}

export default SceneObject;