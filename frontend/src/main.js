import './assets/main.css'

import { createApp } from 'vue'
import { createPinia } from 'pinia'
import { createSSRApp } from 'vue'

import App from './App.vue'
import router from './router'

import 'preline'


const app = createApp(App)

app.use(createPinia())
app.use(router)

app.mount('#app')
