// Essentials
import React from "react";

<<<<<<< Updated upstream
// Components
import InventoryObject from "./InventoryObject";

// Images
import StoneOre from "../images/StoneOre.webp";
import CoalOre from "../images/CoalOre.webp";
import CopperOre from "../images/CopperOre.webp";
import TinOre from "../images/TinOre.webp";
import SilverOre from "../images/SilverOre.webp";
import GoldOre from "../images/GoldOre.webp";

=======
// Modules
import tools from "../modules/tools"
>>>>>>> Stashed changes

function Footer() {
    const [inventoryObjects, setInventoryObjects] = React.useState(tools[0]("ore"));

    return (
        <footer>
            <div id="footerBackground"></div>
            <li id="footerList"> 
<<<<<<< Updated upstream
                <InventoryObject img={StoneOre} value="0"/>
                <InventoryObject img={CoalOre} value="0"/>
                <InventoryObject img={CopperOre} value="0"/>
                <InventoryObject img={TinOre} value="0"/>
                <InventoryObject img={SilverOre} value="0"/>
                <InventoryObject img={GoldOre} value="0"/>
=======
                {inventoryObjects}
>>>>>>> Stashed changes
            </li>
        </footer>
    );
}

export default Footer;