<template>
  <HeaderComponent />
  <HomePage />
</template>

<script>
import HomePage from './components/HomePage.vue'
import HeaderComponent from './components/HeaderComponent.vue'

export default {
  name: 'App',
  components: {
    HomePage,
    HeaderComponent,
}
}
</script>

<style>
#app {
  font-family: Avenir, Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;
}
</style>
