// Essentials
import React from "react";

function SceneObject(props) {
    return (
        <div>
            <img 
                src={props.img} 
                alt="" 
                id={props.id} 
                className={props.className}
                onClick={props.function}
            ></img>
        </div>
    )
}

export default SceneObject;