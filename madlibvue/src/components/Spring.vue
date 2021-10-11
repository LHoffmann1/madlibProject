<template>
  <div class="form">
    <!-- <form class="winter" v-bind:style="{'display': (this.isHidden? 'none': 'inline-block')}"> -->
        <form id = "spring" v-on:submit.prevent="toggleClass">
      <h2 id="form-directions">
        Fill in the parts of speech to <br />
        complete the Spring Madlib!
      </h2>
      <div class="form-group">
        <label for="input1">Plural Noun:</label>
        <input
          class="input"
          type="text"
          v-model="input1"
          id="input1" required
          placeholder="Enter a plural noun"
        />
      </div>
      <div class="form-group">
        <label for="input2">Verb:</label>
        <input
          class="input"
          type="text"
          v-model="input2"
          id="input2" required
          placeholder="Enter a verb ending -ing"
        />
      </div>
      <div class="form-group">
        <label for="input3">Adjective:</label>
        <input
          class="input"
          type="text"
          v-model="input3"
          id="input3" required
          placeholder="Enter an adjective"
        />
      </div>
      <div class="form-group">
        <label for="input4">Plural Noun:</label>
        <input
          class="input"
          type="text"
          v-model="input4"
          id="input4" required
          placeholder="Enter a plural noun"
        />
      </div>
      <div class="form-group">
        <label for="input5">Verb:</label>
        <input
          class="input"
          type="text"
          v-model="input5"
          id="input5" required
          placeholder="Enter a verb ending -ing"
        />
      </div>
      <div class="form-group">
        <label for="input6">Noun:</label>
        <input
          class="input"
          type="text"
          v-model="input6"
          id="input6" required
          placeholder="Enter a noun"
        />
      </div>
      <div class="form-group">
        <label for="input7">Adjective:</label>
        <input
          class="input"
          type="text"
          v-model="input7"
          id="input7" required
          placeholder="Enter an adjective"
        />
      </div>
      <div class="form-group">
        <button type="submit" class="submit" id="submit-spring">
          Submit Words
        </button>
      </div>
    </form>
    <div  id="complete-madlib"> 
        <h1> Spring Madlib</h1>
        <p>{{madlib.madlibString1}} <em>{{this.input1}}</em> {{madlib.madlibString2}} <em>{{this.input2}}</em>. {{madlib.madlibString3}} <em>{{this.input3}}</em>
             {{madlib.madlibString4}} <em>{{this.input4}}</em> {{madlib.madlibString5}} <em>{{this.input5}}</em>{{madlib.madlibString6}} <em>{{this.input6}}</em>
             {{madlib.madlibString7}} <em>{{this.input7}}</em>. <br>
             <router-link id="return" to="/">RETURN TO MADLIBS</router-link>
        </p></div>
  </div>
</template>

<script>
import MadlibsService from "../services/MadlibsService.js";
export default {
  data() {
    return {
      
      madlib: {},
      madlibId: 'spring',
      input1: "",
      input2: "",
      input3: "",
      input4: "",
      input5: "",
      input6: "",
      input7:""
    };
  },

  methods: {
      toggleClass(){
          //this.isHidden=!this.isHidden;
          document.getElementById('spring').style.display="none";
          
          document.getElementById('complete-madlib').style.display="inline-block";
          
      }
      },

  created() {
    MadlibsService.getMadlib(this.madlibId)
      .then((response) => {
        this.madlib = response.data;
      })
      .catch((error) => {
        if (error.response) {
          window.alert("Bad Request");
        } else if (error.request) {
          window.alert("Could Not Reach Service");
        }
      });
  },
};
</script>

<style scoped>
form {
  margin-top: 50px;
  display: inline-block;
  margin-left: auto;
  margin-right: auto;
  border: 5px purple dashed;
  width: 60vw;
  text-align: center;
  height: 675px;
  font-family: "Patua One", cursive;
}

div.form {
  text-align: center;

  background-color: teal;
  padding-bottom: 30px;
}
#form-directions {
  font-size: 30px;
}
.input {
  width: 20vw;
  height: 30px;
  font-family: "Patua One", cursive;
  text-transform: lowercase;
  text-align:center;
  border: 5px solid purple;
}
::placeholder{
    color: lightpink;
    padding-left: 5px;
}
.submit {
  font-weight: bold;
  border-radius: 25px;
  padding: 25px;
  font-size: 24px;
  font-family: "Patua One", cursive;
}
.input {
  font-size: 24px;
  margin-bottom: 20px;
  color: lightpink;
  background-color: purple;
}
label {
  font-size: 30px;
  margin-right: 5px;
  display: inline-block;
  width: 200px;
}
#spring{
  background-color: lightpink;
  color: purple;
}
#submit-spring{
  color: lightpink;
  background-color: purple;
  border: 2px solid purple;
}
#complete-madlib{
    font-size: 28px;
    display:none;
 width: 900px;
    padding-left: 20px;
    padding-right:20px;
    background-color: purple;
    border: lightpink 5px dashed;
    color: lightpink;
}
#return{
  margin-top: 50px;
  font-size: 20px;
  display:inline-block;
  color: lightpink;
  text-decoration: none;
  color:inherit;
}
</style>