<script>
import { onMounted } from 'vue'

export default {
    name: 'CertificationBadge',
    setup() {
        onMounted(() => {
            let script = document.createElement('script')
            script.type = 'text/javascript'
            script.src = '//cdn.credly.com/assets/utilities/embed.js'
            script.async = true
            document.head.appendChild(script)
        })
    }
}
</script>

<template>
    <div class="certification-badge-container">
        <div id="myhashicorp" class="certification-badge">
            <div data-iframe-width="150" data-iframe-height="270"
                data-share-badge-id="46fd14a5-9d20-4d81-a893-11355efcdd2f"
                data-share-badge-host="https://www.credly.com"></div>
        </div>
    </div>
</template>

<style scoped>
.certification-badge-container {
    position: absolute;
    top: 10px;
    left: 10px;
    width: 150px;
    height: 270px;
}

.certification-badge {
    transform: scale(0.5);
    transform-origin: top left;
}
</style>