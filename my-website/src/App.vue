<script setup lang="ts">
import ProfilePicture from './components/ProfilePicture.vue';
</script>

<template>
  <div class="card">
    <ProfilePicture class="profile border" />
    <h1>Rodman Stuhlmuller</h1>
    <p class="title">DevSecOps Engineer</p>
    <div class="skills">
      <h6>Skills</h6>
      <ul>
        <li>Terraform</li>
        <li>AWS</li>
        <li>DevOps</li>
        <li>Github</li>
      </ul>
    </div>
    <p><button>Contact</button></p>
  </div>
</template>

<style scoped>
.card {
  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
  width: 350px;
  margin: auto;
  text-align: center;
  border-radius: 10px;
  backdrop-filter: brightness(80%);
  padding-top: 20px;
}

.title {
  color: grey;
  font-size: 18px;
  padding-bottom: 100px;
}

button {
  border: none;
  outline: 0;
  display: inline-block;
  padding: 8px;
  color: white;
  background-color: #000;
  text-align: center;
  cursor: pointer;
  width: 100%;
  font-size: 18px;
  border-bottom-left-radius: 10px;
  border-bottom-right-radius: 10px;
}

a {
  text-decoration: none;
  font-size: 22px;
  color: black;
}

button:hover,
a:hover {
  opacity: 0.7;
}

.profile {
  max-width: 50%;
}

.profile.border {
  border-radius: 50%;
  border: 2px solid #2d82f8;
  padding: 5px;
}

.skills {
  background-color: rgb(96, 30, 130);
  text-align: left;
  padding: 10px;
}

.skills ul {
  list-style-type: none;
  margin: 0;
  padding: 0;
}

.skills ul li {
  border: 1px solid #301960;
  border-radius: 2px;
  display: inline-block;
  font-size: 12px;
  margin: 0 7px 7px 0;
  padding: 7px;
}
</style>
