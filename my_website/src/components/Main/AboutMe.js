import React from "react";
import profilePhoto from "./images/Profile.jpg"
import "./AboutMeStyles.css"

export default function AboutMe() {
    return (
        <section>
            <div id="Introduction">
                <h1>Rodman Stuhlmuller</h1>
                <h2>DevOps Engineer</h2>
                <p>
                    Welcome to my personal website! I'm Rodman Stuhlmuller,
                    a passionate and driven DevOps engineer based out of Seattle, WA.
                </p>
            </div>
            <div id="ProfilePhoto">
                <img alt="Profile" src={profilePhoto}></img>
            </div>
        </section>
    );
}