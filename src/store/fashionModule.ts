

import * as Module from 'vuex';
//import * as VueRouter from 'vue-router';
import type ResponseData from "@/types/ResponseData";
import ProductService from '@/services/productsService'
import type ProductType from "@/types/ProductType";

const fashionModule: Module<ResponseData> = {
  namespaced: true,
    state:{
        fashion: <ResponseData>{},
        fashions: <ProductType[]>[],
        error:false,
        isShow:false,
        last_page:Number,
        total:Number
        
    },
    getters: {
      },
      actions:{
        async productList({ commit },payload:any) {
          let limit = payload.limit
          let page = payload.page
          //console.log("page= "+page)
            ProductService.getProducts(page,limit)
              .then((response) => {
                //console.log(response);
               // this.appendProducts(response.data);
                //this.pending = false;
              //  this.lastPage = response.last_page;
              commit('PRODUCT_LIST', response)
                
              })
              .catch((e: Error) => {
                console.log(e);
              });
          },
          async getFashionID({ commit },id:number) {
           // let id = payload.id
            //console.log("page= "+id)
              ProductService.getProductId(id)
                .then((response) => {
                  console.log(response);
                 // this.appendProducts(response.data);
                commit('GET_FASHION_ID', response)
                  
                })
                .catch((e: Error) => {
                  console.log(e);
                });
            },
      },
      mutations:{
        PRODUCT_LIST(state:any, payload: ResponseData) {
            state.error = false
            state.fashions =[...state.fashions,...payload.data]//.push(payload.data)
            state.last_page = payload.last_page
            state.total = payload.total
           // console.log(state.fashions)
        },
        GET_FASHION_ID(state:any, payload: ProductType) {
          state.error = false
          state.isShow =true
          state.fashion = payload
      },
      }
}

export default fashionModule;

