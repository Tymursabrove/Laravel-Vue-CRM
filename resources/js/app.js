require('./bootstrap');


import Vue from 'vue';
import VueRouter from "vue-router";

Vue.use(VueRouter);
Vue.component('home', require('./components/Home.vue').default);


let router = new VueRouter({});
const app = new Vue({
    el: "#app",
    router
});
