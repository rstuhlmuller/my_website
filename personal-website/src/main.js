import { createApp } from 'vue'
import App from './App.vue'
import { FontAwesomeIcon } from './fontawesome.js'

const app = createApp(App)
app.component('font-awesome-icon', FontAwesomeIcon)
app.mount('#app')