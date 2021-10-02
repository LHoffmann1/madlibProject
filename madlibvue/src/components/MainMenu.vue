<template>
  <div id="body">
    <div class="container">
      <h1 id="title">Mad About Madlibs</h1>
      <h3 id="subtitle">
        The game where you pick the words to complete the story!
      </h3>

      <div id="first-step">
        <h2 id="directions">Choose Your Madlib Theme:</h2>
        <div id="themes">
          <nav>
          <router-link
            id="winterBtn"
            v-bind:to="{ name: 'WinterView', params: { madlibId: madlib.id } }"
            >Winter</router-link
          >
          <router-link
            id="summerBtn"
            v-bind:to="{ name: 'SummerView', params: { madlibId: madlib.id } }"
            >Summer</router-link
          >
          <router-link
            id="springBtn"
            v-bind:to="{ name: 'SpringView', params: { madlibId: madlib.id } }"
            >Spring</router-link
          >
          <router-link
            id="fallBtn"
            v-bind:to="{ name: 'FallView', params: { madlibId: madlib.id } }"
            >Fall</router-link
          ></nav>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
export default {};
</script>

<style scoped>
#body {
  background-color: teal;
  font-family: Arial, Helvetica, sans-serif;
  color: white;
}
.container{
    display:grid;
    grid-template-columns: 1fr 1fr 1fr;
    grid-template-areas:
    "title title title"
    "subtitle subtitle subtitle"
    "grid2 grid2 grid2",
    
}
#title {
  grid-area: title;
  text-align: center;
  font-size: 100px;
  margin-bottom: 5px;
  color: white;
}

#subtitle {
  grid-area: subtitle;
  text-align: center;
  margin-bottom: 50px;
  padding-bottom: 50px;
  border-bottom: white 10px dotted;
}
#themes {
  display: flex;
  flex-direction: row;
  justify-content: space-evenly;
  flex-wrap: wrap;
  grid-area: grid2;
}
#first-step {
  grid-area: firstStep;
  text-align: center;
  margin-top: 5px;
}

#directions {
  margin-bottom: 50px;
  font-size: 36px;
}
#winterBtn {
  grid-area: winterBtn;
  background-color: lightblue;
  color: white;
  border-radius: 25px;
  border: 2px solid white;
}
#summerBtn {
  grid-area: summerBtn;
  background-color: yellow;
  color: magenta;
  border-radius: 25px;
  border: 2px solid magenta;
}
#fallBtn {
  grid-area: fallBtn;
  background-color: orange;
  color: brown;
  border-radius: 25px;
  border: 2px solid brown;
}
#springBtn {
  grid-area: springBtn;
  background-color: lightpink;
  color: purple;
  border-radius: 25px;
  border: 2px solid purple;
}
nav > {
  width: 150px;
  height: 100px;
  font-size: 24px;
}
</style>