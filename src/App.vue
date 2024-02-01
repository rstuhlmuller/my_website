<script setup lang="ts">
import ProfilePicture from './components/ProfilePicture.vue'
import 'bootstrap-icons/font/bootstrap-icons.css'
</script>

<template>
  <div class="card">
    <ProfilePicture class="profile border" />
    <h1>Rodman Stuhlmuller</h1>
    <p class="title">DevSecOps Engineer</p>
    <p class="title">Seattle, WA</p>
    <div class="icons">
      <a href="//github.com/rstuhlmuller" target="_blank"><i class="bi bi-github"></i></a>
      <a href="//www.linkedin.com/in/rstuhlmuller" target="_blank"
        ><i class="bi bi-linkedin"></i
      ></a>
      <a href="//www.instagram.com/themanofrod" target="_blank"><i class="bi bi-instagram"></i></a>
    </div>
  </div>
  <div class="skills">
    <h5>Skills</h5>
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
  background-color: var(--color-background-mute);
  width: 350px;
  height: 500px;
  margin: auto;
  text-align: center;
  border-radius: 10px;
  padding-top: 20px;
}

.title {
  color: grey;
  font-size: 18px;
}

.icons {
  margin: 10px;
}

.icons a {
  margin: 0 10px;
  color: var(--color-text);
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
  border: 2px inset var(--color-border);
}

.skills {
  background-color: var(--color-background-soft);
  position: relative;
  bottom: 100%;
  text-align: left;
  padding: 10px;
  border-bottom-left-radius: 10px;
  border-bottom-right-radius: 10px;
}

.skills h5 {
  margin: 0;
  padding-bottom: 10px;
}

.skills ul {
  list-style-type: none;
  margin: 0;
  padding: 0;
}

.skills ul li {
  border: 1px solid var(--color-border);
  border-radius: 2px;
  display: inline-block;
  font-size: 12px;
  margin: 0 7px 7px 0;
  padding: 7px;
}
</style>
