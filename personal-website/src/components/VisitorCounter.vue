<script>
import { ref, onMounted } from 'vue'
import axios from 'axios'

export default {
    name: 'VisitorCounter',
    setup() {
        const visitorCount = ref(0)

        onMounted(async () => {
            try {
                // Get the initial visitor count
                const response = await axios.get('https://api.rodman.stuhlmuller.net/visitor_count')
                visitorCount.value = response.data

                // Increment the visitor count
                await axios.post('https://api.rodman.stuhlmuller.net/visitor_count')
            } catch (error) {
                console.error('Error fetching or updating visitor count:', error)
            }
        })

        return {
            visitorCount
        }
    }
}
</script>

<template>
    <p class="visitor-count">Visitors: {{ visitorCount }}</p>
</template>

<style scoped>
.visitor-count {
    margin-top: 1rem;
    font-size: 0.9em;
    color: #888;
}
</style>