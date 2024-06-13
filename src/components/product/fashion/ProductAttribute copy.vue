<template>
     <fieldset class="border p-4 mt-3 " id="prd-attr">
        <legend class="float-none w-auto f-16 bold">PRODUCT ATTRIBUTES</legend>
        <div class="row -mt-15">
            <!--left-->
            <div class="col-6 col-ms-12 col-xs-12 ">
                <ShowSex :sex="prdSex" />
            </div>
            <!--right-->
            <div class="col-6 col-ms-12 col-xs-12 ">
                <div class="row">
                    <div class="col ps-0">
                        <button class="btn btn-second" @click="addComponent()"><strong>+ ADD PRODUCT'S ATTRIBUTES</strong></button>
                    </div>

                </div>
                <div v-for="(index,component) in addCom" :key="index">
                    <AdditionAtt />
                </div>

                <ShowAdditionAtt v-if="isShow()"
                 :secificImg="prd_img" 
                 :additionImg="additionImg"
                 :prd_colors ="prdColor"
                 :prd_sizes: ="prdSize"  />
            </div>
        </div>
    </fieldset>
</template>

<script lang="ts">
import ShowSex from './ShowSex.vue';
import ShowAdditionAtt from './ShowAdditionAtt.vue';
import AdditionAtt from './AdditionAtt.vue';
    export default{
        components: {
            ShowSex,
            ShowAdditionAtt,   
            AdditionAtt,        
        },
        props:{
            prdSex: String,
            prdSize: String,
            prdColor: String,
            multiSexes: String,
            multiSizes: String,
            additionImg:String,
            prd_img: String,
            prd_att: String
        },
        data(){
            return{
                addCom: <any>[],
            } 
        },
        computed:{
           
        },
        created(){

        },
        methods:{            
            addComponent(){
                let a = {k:1}
                this.addCom.push(a)
            } ,
            isShow(){
                if(this.prd_att !=null){
                return true
                }else{
                    return false
                }
            }
        },
        mounted(){
           
        }
    }
</script>