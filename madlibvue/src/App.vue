<template>

  <div id="app">
    <img id="logo-banner" src="../images/Banner4.png" alt="logo" /> <br />
    <div id="nav">
      <router-link id="menu" v-bind:to="{ name: 'MainView' }"
        >Main Menu</router-link
      >
    </div>
    <router-view />
  </div>
</template>

<script>
export default {};
</script>


<style scoped>
@import url('https://fonts.googleapis.com/css2?family=Patua+One&display=swap');
#app {
  background-color: teal;
  font-family: 'Patua One', Arial, Helvetica, sans-serif;
  color: white;
  height: 100vh;
  width: 100vw;
}

#menu {
  color: white;
  text-decoration: none;
  color: inherit;
  font-size: 20px;
  margin-left: 10px;
}
#logo-banner {
  display: block;
  margin-left: auto;
  margin-right: auto;
  width: 100vw;
  border-radius: 10px;
}
img{
  border-bottom: double 10px rgb(32, 201, 201);
}
</style>
