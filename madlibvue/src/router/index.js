import Vue from 'vue'
import VueRouter from 'vue-router'
import MainView from '../views/MainView.vue'
import WinterView from '../views/WinterView.vue'
import SummerView from '../views/SummerView.vue'
import FallView from '../views/FallView.vue'
import SpringView from '../views/SpringView.vue'

Vue.use(VueRouter)

const router = new VueRouter({
  mode: 'history',
  base: process.env.BASE_URL,
  routes:[
  {
    path: '/',
    name: 'MainView',
    component: MainView
  },
  {
    path: '/madlib/winter',
    name: 'WinterView',
    component: WinterView
  },
  {
    path: '/madlib/summer',
    name: 'SummerView',
    component: SummerView
  },
  {
    path: '/madlib/fall',
    name: 'FallView',
    component: FallView
  },
  {
    path: '/madlib/spring',
    name: 'SpringView',
    component: SpringView
  },
]
})



export default router
