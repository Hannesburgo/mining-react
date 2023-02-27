class OreClass {
    constructor(name, hardness, img) {
        this.name = name;
        this.hardness = hardness;
        this.img = img;
        this.reactComponent = 0;
    }

    get getName() {
        return this.name;
    }

    get getHardness() {
        return this.hardness;
    }

    get getReactComponent() {
        return this.reactComponent;
    }

    set setHardness(value) {
        this.getHardness += value;
    }

    set setReactComponent(value) {
        this.reactComponent = value;
    }

    oreClick() {
        this.hardness -= 1;
    }
}

export default OreClass;
