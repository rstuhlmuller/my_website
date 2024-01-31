import './assets/main.css'

import { createApp } from 'vue'
import App from './App.vue'
import HashicorpCert from './components/HashicorpCert.vue'

createApp(App).mount('#app')
createApp(HashicorpCert).mount('#hashicorp-cert')
