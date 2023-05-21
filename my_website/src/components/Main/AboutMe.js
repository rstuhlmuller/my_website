import profile from './images/Profile.jpeg'
import './AboutMeStyles.css'

export default function AboutMe() {
    return (
        <div className='profilephoto'>
            <img src={profile}></img>
        </div>

    );
}