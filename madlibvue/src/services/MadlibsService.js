import axios from 'axios';

const http = axios.create({
  baseURL: "http://localhost:8080"
});

export default {

    getMadlib(madlibId) {
      return http.get(`/madlib/${madlibId}`);
    }
}