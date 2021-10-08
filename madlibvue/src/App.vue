<template>
  <div id="app">
    <img  id = "logo-banner" src="../images/Banner2.png" alt="logo"> <br>
    <div id="nav">
    <router-link id="menu" v-bind:to="{name: 'MainView'}">Main Menu</router-link>
    </div>
    <main-view/>
    <router-view/>
  </div>
</template>

<script>
import MainView from './views/MainView.vue'

export default {
  components: {MainView}
};
</script>


<style>
#app {
    background-color: teal;
    font-family: Arial, Helvetica, sans-serif;
    color: white;
    height: 100vh;
    width:100vw;
}

#menu{
  color:white;
  text-decoration: none;
  color: inherit;
  font-size:20px;
  margin-left: 10px;
}
#logo-banner{
  display: block;
  margin-left:auto;
  margin-right:auto;
  width: 100vw;
  border-radius: 10px; 
}

</style>
