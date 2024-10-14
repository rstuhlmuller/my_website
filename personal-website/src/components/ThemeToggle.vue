<template>
  <div class="theme-toggle">
    <button 
      v-for="option in ['light', 'auto', 'dark']" 
      :key="option"
      @click="$emit('update:modelValue', option)"
      :class="['theme-button', { active: modelValue === option }]"
    >
      {{ option.charAt(0).toUpperCase() + option.slice(1) }}
    </button>
  </div>
</template>

<script>
export default {
  name: 'ThemeToggle',
  props: {
    modelValue: {
      type: String,
      required: true
    }
  },
  emits: ['update:modelValue']
}
</script>

<style scoped>
.theme-toggle {
  display: flex;
  justify-content: center;
  background-color: var(--card-bg);
  border-radius: 8px;
  padding: 4px;
  box-shadow: 0 10px 20px rgba(0, 0, 0, 0.2);
  margin-top: 20px;
}

.theme-button {
  background-color: transparent;
  border: none;
  padding: 8px 12px;
  margin: 0 4px;
  cursor: pointer;
  font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
  font-size: 14px;
  font-weight: 500;
  color: var(--text-color);
  opacity: 0.7;
  transition: all 0.3s ease;
  border-radius: 6px;
}

.theme-button:hover {
  opacity: 0.9;
}

.theme-button.active {
  background-color: var(--text-color);
  color: var(--card-bg);
  opacity: 1;
  box-shadow: 0 2px 5px rgba(0, 0, 0, 0.2);
}
</style>