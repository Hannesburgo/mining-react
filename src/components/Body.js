// Essentials
import React from "react";

// Modules
<<<<<<< Updated upstream
import Mines from "../modules/Mines";

var Page = new Mines();
Page.createOre(3);
=======
import database from "../modules/FakeDatabase";
>>>>>>> Stashed changes

function Body() {
    return (
        <div id="contentZone">
<<<<<<< Updated upstream
            <div id="contentBackground"></div>
            {Page.getPageReactComponents}
=======
            {database.pageData[0].renderPage()}
>>>>>>> Stashed changes
        </div>
    )
}

export default Body;