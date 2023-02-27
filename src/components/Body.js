// Essentials
import React from "react";

// Modules
import database from "../modules/FakeDatabase";
import resourceGenerator from "../modules/PrimaryResourceGenerator";

resourceGenerator.createRandomOres(1);

function Body() {
    return (
        <div id="contentZone">
            <div id="contentBackground"></div>
            {database.getPageObjectsReactComponents}
        </div>
    )
}

export default Body;