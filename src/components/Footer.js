// Essentials
import React from "react";

// Modules
import InvHandler from "../modules/InventoryHandler";

function Footer() {
    return (
        <footer id="footerInventory">
            <li id="footerList"> 
                {InvHandler.inventorySort("ore")}
            </li>
        </footer>
    );
}

export default Footer;