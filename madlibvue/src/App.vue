<template>
  <div id="app">
    <router-link to="/">MainMenu</router-link>
    <main-view></main-view>
    <router-view/>
  </div>
</template>

<script>
import MainView from '@/views/MainView.vue';
export default {
  components: { MainView },};
</script>


<style>
#app {
    background-color: teal;
    font-family: Arial, Helvetica, sans-serif;
    color: white;
    height: 100vh;
}


</style>
