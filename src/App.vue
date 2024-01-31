<script setup lang="ts">
import ProfilePicture from './components/ProfilePicture.vue';
import 'bootstrap-icons/font/bootstrap-icons.css';
</script>

<template>
  <div class="card">
    <ProfilePicture class="profile border" />
    <h1>Rodman Stuhlmuller</h1>
    <p class="title">DevSecOps Engineer</p>
    <p class="title">Seattle, WA</p>
    <div class="icons">
      <a href='//github.com/rstuhlmuller' target="_blank"><i class="bi bi-github"></i></a>
      <a href='//www.linkedin.com/in/rstuhlmuller' target="_blank"><i class="bi bi-linkedin"></i></a>
      <a href='//www.instagram.com/themanofrod' target="_blank"><i class="bi bi-instagram"></i></a>
    </div>
  </div>
  <div class="skills">
    <h6>Skills</h6>
    <ul>
      <li>Terraform</li>
      <li>AWS</li>
      <li>DevOps</li>
      <li>Github</li>
    </ul>
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
}

.icons {
  margin: 20px 0;
  height: 50px;
}

.icons a {
  margin: 0 10px;
  color: rgb(255, 255, 255);
  font-size: 30px;
}

.icons .bi {
  margin: 0 10px;
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
  border-bottom-left-radius: 10px;
  border-bottom-right-radius: 10px;
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
