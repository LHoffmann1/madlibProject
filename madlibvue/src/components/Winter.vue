<template>
<div class="form" >
    <form class="winter" v-on:submit.prevent = "displayMadlib">
        <h2 id="form-directions">Fill in the parts of speech to <br> complete the Winter Madlib! </h2>
        <div class="form-group">
            <label for="input1">Plural Noun:</label>
            <input class='input' type="text" id="input1" placeholder="Enter a plural noun">
        </div>
        <div class="form-group">
            <label for="input2">Adjective:</label>
            <input class='input' type="text" id="input2" placeholder="Enter an adjective">
        </div>
        <div class="form-group">
                <label for="input3">Verb:</label>
                <input class='input' type="text" id="input3" placeholder="Enter a verb">
            </div>
            <div class="form-group">
                <label for="input4">Adjective:</label>
                <input class='input' type="text" id="input4" placeholder="Enter an adjective">
            </div>
            <div class="form-group">
                <label for="input5">Adjective:</label>
                <input class='input' type="text" id="input5" placeholder="Enter an adjective">
            </div>
            <div class="form-group">
                <label for="input6">Noun:</label>
                <input class='input' type="text" id="input6" placeholder="Enter a noun">
            </div>
            <div class = "form-group">
                <button type="submit" class="submit" id="submit-winter">Submit Words</button>
            </div>
    </form>
</div>
</template>

<script>
import MadlibsService from '../services/MadlibsService.js'
export default {
    data(){
        return{
            madlib: {},
            madlibId: 'winter'
        }
    },
   
        methods:{
            displayMadlib(){
                MadlibsService.getMadlib(this.madlibId).then(
                    (response)=>{
                        this.madlib= response.data;
                    }
                ).catch((error) => {
                    if(error.response){
                        window.alert("Bad Request");
                    } else if (error.request){
                        window.alert("Could Not Reach Service");
                    }
                })
                
            }
        }
    }
</script>

<style scoped>
form{
    margin-top: 50px;
    display: inline-block;
    margin-left:auto;
    margin-right:auto;
    border: 5px white dashed;
    width: 60vw;
    text-align: center;
}

div.form{
    text-align:center;
    grid-area: grid3
}
#form-directions{
    font-size: 30px;
}
.input{
    width: 20vw;
    height: 30px;
}
.submit{
    font-weight: bold;
    border-radius: 25px;
    
}

.winter{
    display:none;
    background-color: lightblue;
    color: white;
}
#submit-winter{
    color: lightblue;
    background-color: white;
    border: 2px solid white;
}
</style>