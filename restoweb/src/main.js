import { createApp } from 'vue'
import {createRouter, createWebHashHistory} from 'vue-router'
import 'bulma/css/bulma.css';

import App from './App.vue'
import Home from '../src/views/home.view.vue'
import User from '../src/views/user.view.vue'
import Inventory from './views/inventory.view.vue'
import Orders from '../src/views/orders.view.vue'
import More from '../src/views/more.view.vue'
//import HelloWorld from '../src/views/HelloWorld.vue'


const routes =[
    {
        path:'/', component: Home,
    },{
        path:'/user', component: User
    },{    
        path:'/inventory', component: Inventory
    },{
        path:'/orders', component: Orders
    },{
        path:'/more', component: More  
    }
]


const router= createRouter({
    history: createWebHashHistory(),
    routes
})

const app= createApp(App);
app.use(router);

app.mount('#app');
