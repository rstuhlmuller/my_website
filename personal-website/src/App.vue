<script>
import { ref, onMounted, watch } from 'vue'
import ProfileCard from './components/ProfileCard.vue'
import VisitorCounter from './components/VisitorCounter.vue'
import ThemeToggle from './components/ThemeToggle.vue'

export default {
  name: 'App',
  components: {
    ProfileCard,
    VisitorCounter,
    ThemeToggle
  },
  setup() {
    const theme = ref(localStorage.getItem('theme') || 'auto')
    const systemTheme = ref(window.matchMedia('(prefers-color-scheme: dark)').matches ? 'dark' : 'light')

    const applyTheme = (newTheme) => {
      const themeToApply = newTheme === 'auto' ? systemTheme.value : newTheme
      document.documentElement.classList.remove('light', 'dark')
      document.documentElement.classList.add(themeToApply)
    }

    watch(theme, (newTheme) => {
      localStorage.setItem('theme', newTheme)
      applyTheme(newTheme)
    })

    onMounted(() => {
      applyTheme(theme.value)

      // Listen for system theme changes
      window.matchMedia('(prefers-color-scheme: dark)').addEventListener('change', (e) => {
        systemTheme.value = e.matches ? 'dark' : 'light'
        if (theme.value === 'auto') {
          applyTheme('auto')
        }
      })
    })

    return { theme }
  }
}
</script>

<template>
  <div class="container">
    <ProfileCard />
    <ThemeToggle v-model="theme" class="theme-toggle" />
    <VisitorCounter class="visitor-counter" />
  </div>
</template>

<style>
:root {
  --bg-color: #f0f0f0;
  --text-color: #333;
  --card-bg: #ffffff;
  --card-shadow: 0 10px 20px rgba(0, 0, 0, 0.1), 0 6px 6px rgba(0, 0, 0, 0.1);
}

.dark {
  --bg-color: #1a1a1a;
  --text-color: #f0f0f0;
  --card-bg: #2a2a2a;
  --card-shadow: 0 10px 20px rgba(0, 0, 0, 0.3), 0 6px 6px rgba(0, 0, 0, 0.2);
}

body {
  margin: 0;
  font-family: Arial, sans-serif;
  background-color: var(--bg-color);
  color: var(--text-color);
  transition: background-color 0.3s, color 0.3s;
}

.container {
  display: flex;
  flex-direction: column;
  justify-content: center;
  align-items: center;
  min-height: 100vh;
  padding: 20px;
}

.theme-toggle {
  margin-top: 20px;
}

.visitor-counter {
  position: fixed;
  bottom: 10px;
  right: 10px;
  background-color: var(--card-bg);
  color: var(--text-color);
  padding: 5px 10px;
  border-radius: 5px;
  box-shadow: var(--card-shadow);
}
</style>