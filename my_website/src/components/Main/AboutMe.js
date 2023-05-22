import React, { useState, useEffect, useRef } from "react";
import profilePhoto from "./images/Profile.jpg"
import "./AboutMeStyles.css"

function Typewriter({ text }) {
    const index = useRef(0);
    const [currentText, setCurrentText] = useState("");

    useEffect(() => {
        index.current = 0;
        setCurrentText("");
    }, [text]);

    useEffect(() => {
        if (index.current < text.length) {
            const timeoutID = setTimeout(() => {
                setCurrentText((value) => value + text.charAt(index.current));
            }, 30);
            return () => {
                index.current += 1;
                clearTimeout(timeoutID);
            };
        };
    }, [currentText, text]);
    return <p id="Typewriter">{currentText}</p>;
};

export default function AboutMe() {
    return (
        <section>
            <div id="Introduction">
                <h1>Rodman Stuhlmuller</h1>
                <h2>DevOps Engineer</h2>
                <Typewriter text="Welcome to my personal website! I'm Rodman Stuhlmuller,
                a passionate and driven DevOps engineer based out of Seattle, WA." />
            </div>
            <div id="ProfilePhoto">
                <img alt="Profile" src={profilePhoto}></img>
            </div>
        </section>
    );
}