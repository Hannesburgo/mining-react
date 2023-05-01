// Essentials
import React from "react";

// Modules
import tools from "../modules/tools";

// Components
import SceneObject from "./SceneObject";

<<<<<<< Updated upstream
function FooterObject(props) {
    return (
        <ul className="InventoryObject">
            {<SceneObject img={props.img} className="InventoryIcon"/>}
            <h4>{props.value}</h4>
=======
function InventoryObject(props) {
    const [itemQuantity, setItemQuantity] = React.useState(tools[0](props.id));
    const [hasChanged, setHasChanged] = React.useState(false);

    React.useEffect(() => {
        setItemQuantity(tools[1](0));
    }, [hasChanged])

    return (
        <ul className="InventoryFrame">
            <SceneObject 
                key={props.id}
                type={props.type}
                img={props.img}
                className="InventoryIcon"
            />
            <h4>{itemQuantity}</h4>
>>>>>>> Stashed changes
        </ul>
    )
}

export default FooterObject;