// Essentials
import React from "react";

function Scene(props) {
    const [pageObjects, setPageObjects] = React.setState(props.objectsInside);
    const [hasChanged, refresh] = React.setState(false);

    React.useEffect(() => {
        setPageObjects(props.objectsInside);
    }, [hasChanged])

    return (
        props.objectsInside
    );
}

class Page {
    constructor(id, name) {
        this.id = id;
        this.name = name;
        this.objectsInside = [];
    }

    renderPage() {
        <Scene objectsInside={this.objectsInside}/>
    }
}

export default Page;