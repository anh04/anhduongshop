<template>
 <div class="prd_att">
    <div class="row">
        <div class="col">
            <label>Product Color</label>
            <input class="mt-2 form-control prd_color" type="text" v-model="prd_color" >
        </div>
    </div>
    <div class="row mt-3">
        <div class="col">
           <ProductSize />
        </div>
    </div>
    <div class="row mt-3">
        <div class="col clicked specific-image">
            <div class="row">
                <div class="col specific-img" style="cursor: pointer;"><strong>+ SELECT SPECIFIC IMAGE</strong></div>
            </div>
            <!--<div class="row"><button class="btn btn-second specific-img">+ ADD SPECIFIC IMAGE</button></div>-->
            <div class="row mt-2">
                <div class="col">
                    <div class="d-flex flex-row fit-box image-spec-div">
                        
                    </div>
                    <input type="hidden" class="image-spec">
                </div>
                
            </div>
        </div>
    </div>


    <div class="row mt-3">
        <div class="col clicked addition-images">
            <div class="row"><div class="col addition-img" style="cursor: pointer;"><strong>+ ADD ADDITION IMAGES</strong></div></div>
            <div class="row mt-2 mb-3">
                <div class="col">
                    <div class="d-flex flex-row fit-box image-added-div"></div>
                    <input type="hidden" class="image-added">
                </div>            
            </div>
        </div>
    </div>


    <div class="row my-3">
        <div class="col border-t"></div>
    </div>
 </div>   
</template>
<script lang="ts">
    import { api_img_path } from '@/services/pathFile'
    import ShowAttImg from './ShowAttImg.vue';
    import ProductSize from './ProductSize.vue';

    const config = api_img_path
    export default{
        components:{
            ShowAttImg,
            ProductSize
        },
        
        data(){
            return{
                prd_color:'',
            }            
        },
        methods:{
           
        },
        mounted() {
            
            const plugin = document.createElement("script");
            plugin.setAttribute(
            "src",
            "/js/library_images.js"
            );
            plugin.async = true;
            document.head.appendChild(plugin);
        }
    }
</script>
