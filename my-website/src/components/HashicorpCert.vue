<script setup lang="ts">
import { onMounted } from 'vue';

onMounted(() => {
    let script = document.createElement('script');
    script.type = 'text/javascript';
    script.src = '//cdn.credly.com/assets/utilities/embed.js';
    script.async = true;
    let hashicorp = document.getElementById('myhashicorp');
    hashicorp?.appendChild(script);
})

</script>

<template>
    <div id="myhashicorp">
        <div data-iframe-width="150" data-iframe-height="270" data-share-badge-id="46fd14a5-9d20-4d81-a893-11355efcdd2f"
            data-share-badge-host="https://www.credly.com">
        </div>
    </div>
</template>

<style scoped>
#myhashicorp {
    padding: 10px;
    border-radius: 10px;
}
</style>