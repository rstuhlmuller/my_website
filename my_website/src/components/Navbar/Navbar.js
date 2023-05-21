import { Component } from "react";
import "./NavbarStyle.css"
import logo from '../../logo.svg'
import titleImage from './images/Rodman Stuhlmuller Portfolio.png'

class Navbar extends Component {
    state = { clicked: false }
    handleClick = () => {
        this.setState({ clicked: !this.state.clicked })
    }
    render() {
        return (
            <>
                <nav>
                    <a id="logo" href="/">
                        <img
                            src={logo}
                            alt=""
                        />
                    </a>
                    <img id="titleImage" src={titleImage} alt="">
                    </img>
                    <div>
                        <ul id="navlist" className={this.state.clicked ? "#navbar active" : "#navbar"}>
                            <li>
                                <a href="https://github.com/rstuhlmuller">
                                    Github
                                </a>
                            </li>
                            <li>
                                <a href="https://www.linkedin.com/in/rodman-s-307831124">
                                    LinkedIn
                                </a>
                            </li>
                        </ul>
                    </div>

                    <div id="mobile" onClick={this.handleClick}>
                        <i
                            id="bar"
                            className={this.state.clicked ? "fas fa-times" : "fas fa-bars"}
                        ></i>
                    </div>
                </nav>
            </>
        )
    }
}

export default Navbar;