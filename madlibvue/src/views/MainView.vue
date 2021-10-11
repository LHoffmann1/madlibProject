<template>
  <div id="body">
    <div id="first-step">
      <h2 id="directions">Choose Your Madlib Theme:</h2>
      <div id="themes">
        <nav>
          <div class="button" id="winter">
            <router-link
              id="winterBtn"
              v-bind:to="{ name: 'WinterView', params: { madlibId: 'winter' } }"
              >Winter</router-link
            >
          </div>
          <div class="button" id="summer">
            <router-link
              id="summerBtn"
              v-bind:to="{ name: 'SummerView', params: { madlibId: 'summer' } }"
              >Summer</router-link
            >
          </div>
          <div class="button" id="fall">
            <router-link
              id="fallBtn"
              v-bind:to="{ name: 'FallView', params: { madlibId: 'fall' } }"
              >Fall</router-link
            ></div>
            <div class="button" id="spring">
              <router-link
                id="springBtn"
                v-bind:to="{
                  name: 'SpringView',
                  params: { madlibId: 'spring' },
                }"
                >Spring</router-link
              >
            </div>
          
        </nav>
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
  font-family: 'Patua One', Arial, Helvetica, sans-serif;
  color: white;
  
}
#directions{
  grid-area: title;
  color: white;
  font-size: 45px;
  text-align: center;
  padding-bottom: 30px;
}
#first-step{
  padding-bottom:50px;
}

.button {
  font-size: 30px;
  margin: 20px;
}
nav{
  display: flex;
  align-items: center;
  justify-content: space-evenly;
  flex-wrap: wrap;
}
#winterBtn {
  grid-area: winterBtn;
  background-color: lightblue;
  color: white;
  border-radius: 5px;
  border: 2px solid white;
  padding: 30px;
  display:inline-block;
  width: 125px;
  text-align: center;
  text-decoration: none;
  
  
  
}
#winter {
  grid-area: winter;
}
#summerBtn {
  grid-area: summerBtn;
  background-color: yellow;
  color: magenta;
  border-radius: 5px;
  border: 2px solid magenta;
  padding: 30px;
  display:inline-block;
  width: 125px;
  text-align: center;
  text-decoration: none;
  
}
#summer {
  grid-area: summer;
}
#fallBtn {
  background-color: orange;
  color: brown;
  border-radius: 5px;
  border: 2px solid brown;
  padding: 30px;
  display:inline-block;
  width: 125px;
  text-align: center;
  text-decoration: none;
  
}
#fall {
  grid-area: fall;
}
#springBtn {
  background-color: lightpink;
  color: purple;
  border-radius: 5px;
  border: 2px solid purple;
  padding: 30px;
  display:inline-block;
  width: 125px;
  text-align: center;
  text-decoration: none;
  
}
#spring {
  grid-area: spring;
  
}
</style>