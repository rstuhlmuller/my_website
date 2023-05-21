import React from "react";
import profilePhoto from "./images/ProfilePhoto.jpeg"
import "./AboutMeStyles.css"

export default function AboutMe() {
    return (
        <div id="ProfilePhoto">
            <img alt="Profile" src={profilePhoto}></img>
        </div>
    );
}