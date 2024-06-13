<template>
 <div class="container">
    <div class="card bg-white mt-4">
        <div class="card-header text-right">
            <RouterLink to="product_add">
                <button type="button" class="btn btn-info">Add Product</button>
            </RouterLink>
        </div>
        <div class="">
            <table class="table table-bordered" >
                <thead>
                <tr>
                    <th>#</th>
                    <th >Image</th>
                    <th>Name</th>
                    <th >Type</th>
                    <th >Sex</th>
                    <th>Regular Price</th>
                    <th>Price</th>
                    <th>Amount</th>
                    <th>Action</th>
                </tr>
                </thead>
                <tbody>
                    <tr  v-for="(item, index) in products" :key="item.prd_id">
                        <td>{{index}}</td>
                        <td class="w-90"> <img :src="`${path_img1}/${item.prd_img}`"/></td>
                        <td>{{ item.prd_name}}</td>
                        <td>{{ item.prd_type_name }}</td>
                        <td>{{ item.prd_sex }}</td>
                        <td>{{ item.prd-regular-price }}</td>
                        <td>{{ item.prd_price }}</td>
                        <td>{{ item.prd_quantity }}</td>
                        <td>
                            <router-link  :to="`/admin/product/${item.prd_id}`">Edit</router-link >
                        </td>
                    </tr>
                </tbody>
            </table>
           
        </div>
    </div>
</div>
</template>
<script lang="ts">
import  { createNamespacedHelpers } from 'vuex'
import { api_img_path } from '@/services/pathFile'
import { create } from 'domain'
import type { RouterLink } from 'vue-router'

const { mapState, mapActions } = createNamespacedHelpers('adminProductModule')

export default{
    data() {
        return {
            path_img1: api_img_path,
            search: "",
            page: 1,
            limit: 5,
            lastPage: 1,
            pending: false,
        };
    },
    beforeCreate() {
        document.body.className = "bg-white";
        //document.getElementById('app').style.
        let myDiv = document.getElementById("app");
        myDiv!.setAttribute("style", "max-width:100%;");
    },
    computed: {
        ...mapState({
            products: state => state.products,
            last_page: state => state.last_page,
            total: state => state.total
        }),
    },
    methods: {
        ...mapActions([
            "adminProductList"
        ]),
        /*
         loadMore function
        */
        loadMore() {
            if (this.page + 1 <= this.last_page) {
                this.page = this.page + 1;
                let payload = {
                    page: this.page,
                    limit: this.limit
                };
                this.adminProductList(payload);
            }
        },        
    },
    created() {
            // let payload = {
            //     page: this.page,
            //     limit: this.limit
            // };
            // this.adminProductList(payload);
        },
        mounted() {
            let payload = {
                page: this.page,
                limit: this.limit
            };
           
            this.adminProductList(payload);
        }
   
}
</script>
<style scoped >
    .w-90 img{
        width:90px
    }
</style>