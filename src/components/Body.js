// Essentials
import React from "react";

// Modules
import Mines from "../modules/Mines";

var Page = new Mines();
Page.createOre(3);

function Body() {
    return (
        <div id="contentZone">
            <div id="contentBackground"></div>
            {Page.getPageReactComponents}
        </div>
    )
}

export default Body;