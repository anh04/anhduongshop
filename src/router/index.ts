import { createRouter, createWebHistory } from 'vue-router'
//import HomeView from '../views/HomeView.vue'
import Home from '@/views/pages/Home.vue';
import Fashion from '@/views/pages/Fashion.vue'
import Cart from '@/views/pages/Cart.vue'
import Payment from '@/views/pages/Payment.vue'

import ProductList from '@/views/admin/ProductList.vue'
import Product from '@/views/admin/Product.vue'
import Fashions from '@/views/pages/Fashions.vue'
//import Pd1 from '@/views/admin/Pd1.vue'
//import Pd2 from '@/views/admin/Pd2.vue'

const routes = [
  {
      path: '/',
      name:'Home',
      component: Home,
      meta: {
          layout: 'default'
        }
  },
  {
      path: '/fashion/:id',
      name: 'Fashion',
      component: Fashion,
      meta: {
          layout: 'default'
        }
  },
  {
    path: '/checkout/cart',
    name: 'Cart',
    component: Cart,
    meta: {
        layout: 'default'
      }
  },
  {
    path: '/checkout/payment',
    name: 'Payment',
    component: Payment,
    meta: {
        layout: 'default'
      }
  },
  {
    path: '/admin/products',
    name: 'ProductList',
    component: ProductList,
    meta: {
        layout: 'admin'
      }
  },
  {
    path: '/admin/product/:id',
    name: 'Product',
    component: Product,
    meta: {
        layout: 'admin'
      }
  },

  {
    path: '/admin/product',
    name: 'Add Product',
    component: Product,
    meta: {
        layout: 'admin'
      }
  },

  {
    path: '/fashions',
    name: 'Fashions',
    component:Fashions,
    meta :{
      layout: 'default'
    }
  }

 
]

const router = createRouter({
  history: createWebHistory(import.meta.env.BASE_URL),
  
  routes: routes
})

export default router
