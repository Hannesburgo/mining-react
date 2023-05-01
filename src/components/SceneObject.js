// Essentials
import React from "react";

function SceneObject(props) {
    return (
<<<<<<< Updated upstream
        <div>
            <img 
                src={props.img} 
                alt="" 
                id={props.id} 
                className={props.className}
                onClick={props.function}
            ></img>
        </div>
=======
        <img 
        key={Date.now()}
        src={"../images/"+props.type+"/"+props.img} 
        alt="" 
        className={props.className}
        onClick={props.onClick}
        />
>>>>>>> Stashed changes
    )
}

export default SceneObject;

