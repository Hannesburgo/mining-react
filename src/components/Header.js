import React from "react";

function changePage(page) {

}

function Header() {
    return (
        <header>
            <nav id="headerNav">
                <ul id="navList">
                    <li><button onClick={changePage(1)}>Mines</button></li>
                    <li><button onClick={changePage(2)}>Forest</button></li>
                    <li><button onClick={changePage(3)}>Smith</button></li>
                    <li><button onClick={changePage(4)}>Build</button></li>
                </ul>
            </nav>
        </header>
    )
}

export default Header;