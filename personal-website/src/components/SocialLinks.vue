<template>
    <div class="social-links">
        <a href="https://github.com/rstuhlmuller" target="_blank" rel="noopener noreferrer" class="social-button">
            <font-awesome-icon :icon="['fab', 'github']" />
        </a>
        <a href="https://www.linkedin.com/in/rstuhlmuller" target="_blank" rel="noopener noreferrer"
            class="social-button">
            <font-awesome-icon :icon="['fab', 'linkedin-in']" />
        </a>
        <a href="https://www.instagram.com/themanofrod" target="_blank" rel="noopener noreferrer" class="social-button">
            <font-awesome-icon :icon="['fab', 'instagram']" />
        </a>
    </div>
</template>

<script>
export default {
    name: 'SocialLinks'
}
</script>

<style scoped>
.social-links {
    display: flex;
    justify-content: center;
    gap: 1rem;
    margin-top: 1rem;
}

.social-button {
    display: flex;
    justify-content: center;
    align-items: center;
    width: 40px;
    height: 40px;
    border-radius: 50%;
    background-color: var(--bg-color);
    color: var(--text-color);
    text-decoration: none;
    transition: background-color 0.3s, color 0.3s;
}

.social-button:hover {
    background-color: var(--text-color);
    color: var(--bg-color);
}

.social-button svg {
    width: 1.2rem;
    height: 1.2rem;
}
</style>