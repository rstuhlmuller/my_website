<script>
import { ref, computed } from 'vue'
import md5 from 'md5'
import CertificationBadge from './CertificationBadge.vue'
import SocialLinks from './SocialLinks.vue'

export default {
  name: 'ProfileCard',
  components: {
    CertificationBadge,
    SocialLinks
  },
  setup() {
    const name = ref('Rodman Stuhlmuller')
    const description = ref('Tech enthusiast and problem solver based in Seattle. Passionate about crafting efficient systems and exploring the great outdoors.')
    const email = ref('rodman@stuhlmuller.net')

    const gravatarUrl = computed(() => {
      const hash = md5(email.value.trim().toLowerCase())
      return `https://www.gravatar.com/avatar/${hash}?s=200`
    })

    return {
      name,
      description,
      gravatarUrl
    }
  }
}
</script>

<template>
  <div class="card">
    <CertificationBadge />
    <div class="profile-pic-container">
      <div class="profile-pic-border">
        <div class="profile-pic-background">
          <img :src="gravatarUrl" alt="Profile Picture" class="profile-pic">
        </div>
      </div>
    </div>
    <div class="card-content">
      <h1>{{ name }}</h1>
      <p>{{ description }}</p>
      <SocialLinks />
    </div>
  </div>
</template>

<style scoped>
.card {
  position: relative;
  background-color: var(--card-bg);
  border-radius: 8px;
  box-shadow: var(--card-shadow);
  padding: 2rem;
  text-align: center;
  max-width: 400px;
  width: 100%;
  transition: box-shadow 0.3s ease;
}

.profile-pic-container {
  display: flex;
  justify-content: center;
  margin-bottom: 1.5rem;
}

.profile-pic-border {
  width: 210px;
  height: 210px;
  border-radius: 50%;
  display: flex;
  justify-content: center;
  align-items: center;
  margin-top: 1rem;
  background: conic-gradient(from 0deg,
      #ff6b6b,
      #feca57,
      #48dbfb,
      #ff9ff3,
      #ff6b6b);
}

.profile-pic-background {
  width: 200px;
  height: 200px;
  border-radius: 50%;
  background-color: var(--card-bg);
  display: flex;
  justify-content: center;
  align-items: center;
}

.profile-pic {
  width: 195px;
  height: 195px;
  border-radius: 50%;
  object-fit: cover;
}

.card-content {
  display: flex;
  flex-direction: column;
  align-items: center;
}

h1 {
  color: var(--text-color);
  margin-bottom: 1rem;
}

p {
  color: var(--text-color);
  line-height: 1.6;
  text-align: center;
}
</style>