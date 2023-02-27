// Essentials
import React from "react";

// Components
import SceneObject from "../components/SceneObject";

class PrimaryResource {
    constructor(name, hardness, img, type) {
        this.name = name;
        this.hardness = hardness;
        this.img = img;
        this.type = type;

        this.randomKey = Math.floor(Math.random() * 999999);
        this.clickFunction = undefined;
        this.reactComponent = (<SceneObject key={this.randomKey} img={this.img} clickFunction={this.clickFunction} className="SceneObject"/>);
    }

    get getName() {
        return this.name;
    }

    get getHardness() {
        return this.hardness;
    }

    get getImg() {
        return this.img;
    }

    get getType() {
        return this.type;
    }

    get getRandomKey() {
        return this.randomKey;
    }

    get getReactComponent() {
        return this.reactComponent;
    }

    set setHardness(value) {
        this.hardness += value;
    }

    set setClickFunction(value) {
        this.clickFunction = value;
    }

    refreshReactComponent() {
        this.reactComponent = (<SceneObject key={this.randomKey} img={this.img} clickFunction={this.clickFunction} className="SceneObject"/>);
    }
}

export default PrimaryResource;