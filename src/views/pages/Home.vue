

<template>
   <div class="row">
      <CarouselProject :slides="imgs" />
    </div>
    <div class="h-100">
      <div class="row">
          <div class="col-md-3 mx-0 px-0">
            <SideBar/>
          </div>
          <div class="col-md-9 bg-e9ecef">
            <div class="row">
              <HeadSideBarRight title="LAPTOP"/>
            </div>
            <div class="row" style="height: 250px;">
              <div class="col col-md-4 col-sm-12">
                  
              </div>
            </div>

            <div class="row">
              <HeadSideBarRight title="FASHION"/>
            </div>
            <div class="row">
              <div v-if="products.length > 0">
                <div class="row row-cols-xs-1 row-cols-sm-1 row-cols-md-4 mt-2">
                    
                    <div :class="['col prd-item flex-column',{'pe-0' : istrue(index)}]" v-for="(item, index) in products" :key="item.prd_id">  
                    
                        <div class="prd-item-info bg-white">
                            <div class="prd-item-decrease f-10 tl-10 bold text-center">
                            -{{discount(item.prd_regular_price,item.prd_price)}}% 
                            </div>
                            <router-link :to="`/fashion/${item.prd_id}`" class="prd-item-photo" >
                                <span class="prd-image-container">
                                   <img :src="`${path_img1}/${item.prd_img}`" class="prd-image-photo" />
                                </span> 
                             </router-link>
                             <div class="prd-item-details flex-column">
                                <strong class="prd-item-name">
                                    <router-link to="`/fashion/${item.prd_id}`" class="prd-item-link" :title="item.prd_name" >
                                        <div class="special-product-label mid-mid text-only ">
                                        <div class="text-center f-10 c-ff0000">
                                            <span>MỚI</span>
                                        </div>
                                    </div>
                                    {{item.prd_name}}
                                    </router-link>
                                </strong>
                                <div class="d-inline fit-box">
                                    <span class="prd-price">${{ Number(item.prd_price).toLocaleString(undefined, {minimumFractionDigits: 2}) }}</span>
                                    <span class="prd-regular-price ms-2">${{ Number(item.prd_regular_price).toLocaleString(undefined, {minimumFractionDigits: 2}) }}</span>
                                </div>

                                <showSameImg :sameImages="`${item.prd_library}`" />
                                <div class="d-flex flex-row justify-content-end f-12 my-1 bold">
                                <i>Sold </i>
                            </div>
                            </div>
                        </div>
                    </div>
                    <!----->
                </div>
                <div class="row my-2" v-if=" page < last_page">
                  <div class="col text-center">
                    <button class="btn btn-info text-white" v-on:click="loadMore()">LOAD MORE</button>
                  </div>
                </div>
            </div>
            <div v-else> No Product</div>
            </div>

           
          </div>
           <!----end right------>
    </div>
    </div>
</template>

<script lang="ts">
import CarouselProject from '@/components/carousel/CarouselProject.vue'
import SideBar from '@/layouts/SideBar.vue'
import HeadSideBarRight from '@/components/menu/HeadSideBarRight.vue'
import type  ProductType  from "@/types/ProductType";

import type ResponseData from "@/types/ResponseData";
import ProductService from '@/services/productsService'
import {productDiscount} from '@/composables/myComposable'
import { api_img_path } from '@/services/pathFile'

import  { createNamespacedHelpers } from 'vuex'

const { mapState, mapActions } = createNamespacedHelpers('fashionModule')

export default {    
    components: {
        CarouselProject,
        SideBar,
        HeadSideBarRight
    },
    data() {
    return {
            path_img1:api_img_path,
          //  products: <ProductType[]>([]),
            search: '',
            page: 1,
            limit: 5,
            lastPage: 1,
            pending: false,
           // products: ref([]),
           //postList: ref([] as Product[]),
           imgs:['slider11.png','slider2.png'],
           testimonial_imgs:[
            {img:'150x150_1_2.png',title:'Best seller'},
            {img:'150x150_2_2.png',title:'Best deal'},
            {img:'150x150_3_2.png',title:'Shoes'},
            {img:'150x150_4_2.png',title:'Sandal'},
            {img:'150x150_5_2.png',title:'T-shirt'},
            {img:'150x150_6_2.png',title:'Polo shirt'},
            {img:'150x150_7_2.png',title:'jacket'},
            {img:'150x150_8_2.png',title:'Trousers'},
            {img:'150x150_9_2.png',title:'Shorts'},
            {img:'150x150_10_2.png',title:'Underwear'},
            {img:'150x150_11_2.png',title:'backpacks and bags'},
            {img:'150x150_12_2.png',title:'Hat'},
            {img:'150x150_13_2.png',title:'Belt'},
            {img:'150x150_14_2.png',title:'New'},
            {img:'150x150_15.png',title:'Best seller'},
           ]
    }
  },
  beforeCreate: function() {
        document.body.className = '';
        let myDiv = document.getElementById("app");
	          myDiv.setAttribute("style", "max-width:1320px;");
        
    },
  computed:{
    ...mapState({
      products: state => state.fashions,
      last_page: state => state.last_page,
      total: state => state.total
  }),
  },
  methods: {
    ...mapActions([
      'productList'
    ]),
    /*
     discount function
    */
    discount(a:number,b:number){
      return  productDiscount(a,b)
    },
    /*
     istrue function
    */
    istrue(a:number){
      a++
      if(a % 4 ==0 && a > 0){
        return true
      }else{
        return false
      }
    },
    /*
     loadMore function
    */
    loadMore() {
        if( this.page + 1 <= this.last_page ){
                this.page = this.page + 1
                let payload ={
                  page: this.page,
                  limit: this.limit
                }
                
                this.productList(payload);
            }
    },

    
  },

  mounted(){
    
    let payload ={
      page: this.page,
      limit: this.limit
    }

    this.productList(payload);


    }
  }
</script>

<style scoped>
   .row > .my-carousel{
      padding-left: 0;
      padding-right: 0;
   }
   
</style>
