<script setup lang="ts">
import { computed } from 'vue';
import md5 from 'md5';

const email = "rodman@stuhlmuller.net";
const gravatarUrl = computed(() => {
    const hash = md5(email.trim().toLowerCase());
    return `https://www.gravatar.com/avatar/${hash}?s=300&?r=pg`;
});
</script>

<template>
    <img :src="gravatarUrl" alt="user profile image" />
</template>