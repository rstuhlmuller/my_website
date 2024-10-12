<script>
export default {
    name: 'ThemeToggle',
    props: {
        modelValue: {
            type: String,
            required: true
        }
    },
    emits: ['update:modelValue'],
    computed: {
        theme: {
            get() {
                return this.modelValue
            },
            set(value) {
                this.$emit('update:modelValue', value)
            }
        }
    }
}
</script>

<template>
    <div class="theme-toggle">
        <div class="segmented-control">
            <input type="radio" id="light" value="light" v-model="theme">
            <label for="light">Light</label>

            <input type="radio" id="auto" value="auto" v-model="theme">
            <label for="auto">Auto</label>

            <input type="radio" id="dark" value="dark" v-model="theme">
            <label for="dark">Dark</label>
        </div>
    </div>
</template>

<style scoped>
.theme-toggle {
    display: inline-block;
}

.segmented-control {
    display: flex;
    border: 1px solid var(--text-color);
    border-radius: 20px;
    overflow: hidden;
}

.segmented-control input[type="radio"] {
    display: none;
}

.segmented-control label {
    padding: 8px 16px;
    cursor: pointer;
    transition: background-color 0.3s, color 0.3s;
    text-align: center;
    color: var(--text-color);
}

.segmented-control input[type="radio"]:checked+label {
    background-color: var(--text-color);
    color: var(--bg-color);
}
</style>