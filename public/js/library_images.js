
function library_images(){
    this.file_tranfer = new DataTransfer()
}
library_images.NAME         = "library_images";
library_images.VERSION      = "1.2";
library_images.DESCRIPTION  = "Class library_images";

library_images.prototype.constructor = library_images;
library_images.prototype = {
    init: function(){
        $("#filenames").on('change', function(event){
            //this.files.item(i).name
            var fileBloc ='';
                if (this.files) {
                    for(var i = 0; i < this.files.length; i++){
                        //console.log(this.files.item(i).file)
                        let today = new Date();
                        let time = today.getTime();
                        let file_name = this.files.item(i).name;
                        var reader = new FileReader();
                        reader.onload = function (e) {
                           // let img = $('<img>').attr('src', e.target.result);
                            fileBloc = '<div class="box-image">'+
                                '<div class="file-name hidden">'+file_name+'</div>' +
                                '<img src="' + e.target.result + '" class="picture-box">'+
                                '<div class="wrap-btn-delete"><span data-id='+time+' class="btn-delete-image">x</span></div>' +
                                '</div>'
                            $(".list-images").append(fileBloc);
                        };
                        reader.readAsDataURL(this.files[i]);

                    };
                    $('.button-submit').removeClass('hidden');
                    $('.file_upload').addClass('text-right')
                    $('.remove-center').removeClass('justify-content-center')

                    for (let file of this.files) {
                        //console.log(file);
                        prd_f.file_tranfer.items.add(file);
                    }
                    this.files = prd_f.file_tranfer.files;

                    $(".list-images").on('click', '.btn-delete-image', function(){
                        let name = $(this).closest('.row').find('.file-name').text();
                        for(let i = 0; i < prd_f.file_tranfer.items.length; i++){
                            // Correspondance du fichier et du nom
                            if(name === prd_f.file_tranfer.items[i].getAsFile().name){
                                prd_f.file_tranfer.items.remove(i);
                                continue;
                            }
                        }


                        $(this).parents('.box-image').remove();
                        var count = $('.list-images .box-image').find('input').length
                        if(count < 1){
                            $('.button-submit').addClass('hidden')
                            $('.file_upload').removeClass('text-right')
                            $('.remove-center').addClass('justify-content-center')
                        }
                        document.getElementById('filenames').files = prd_f.file_tranfer.files;
                    });
                    //
                }
        });

        $('#prd-attr .specific-img').on('click',function(){
            let $me = ''
            $me = $(this)
            library_images.prototype.show_libraries($me)
        })

        $('#prd-attr .addition-img').on('click',function(){
            let $me = ''
            $me = $(this)
            library_images.prototype.show_libraries($me)
        })

        $('#prd-attr').on('click','.product-images-span-delete',function(){
            if($(this).closest('.clicked').hasClass('specific-image')){                        
                $(this).closest('.clicked.specific-image').find('.image-spec').val('')
                $(this).closest('.product-images-span').remove()
            }else if(($(this).closest('.clicked').hasClass('addition-images'))){
               var vl =  $(this).closest('.clicked.addition-images').find('.image-added').val()
               var img_name = $(this).closest('.product-images-span').find('.product-images').attr('img_name')
               img_name = img_name.trim()
                if(vl.indexOf(',')){
                    var imgStr =''
                    vl.split(',').forEach(function(item){
                        if(img_name != item.trim()){
                            imgStr =(imgStr=='')?item : imgStr+','+item
                        }
                    })

                    $(this).closest('.clicked.addition-images').find('.image-added').val(imgStr)

                }else{
                    $(this).closest('.clicked.addition-images').find('.image-added').val('')
                }

                $(this).closest('.product-images-span').remove()
            }
        })
    },
    /*********************************************************/
    show_libraries:function($me){
        var link3 =api_link+'libraries';
        $.ajax({
            headers: {
                'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
            },
            "async": true,
            "crossDomain": true,
            "url": link3,
            "method": "POST",
            dataType: 'json',
            data:{},
            //contentType: 'application/json',
            error : function (status,xhr,error) {

            },
            success: function (res) {
                if(res.files.length > 0){
                    var rows =''
                    var cols =''
                    res.files.forEach(function(item){
                        cols +='<div class="col mx-1 my-2 d-flex flex-column hover-border text-center mx-auto">' +
                            // ' <img src="/images/'+item.filenames+'" img_name="'+item.filenames+'" style="width:60px; cursor:pointer" class="img-selected">' +
                            ' <img src="'+libary_path+''+item+'" img_name="'+item+'" style="width:60px; cursor:pointer" class="img-selected mx-auto">' +
                            '<span class="mt-1">'+item+'</span>'+
                            '</div>'

                    })

                    rows +='<div class="row row-cols-xs-1 row-cols-sm-1 row-cols-md-6 append-img">' +
                        cols +
                        '</div>'
                }
                $('#library-modal #media').html(rows)
                
                //event
                $('#library-modal #media .img-selected').on('click',function(){
                    
                    var image_name = $(this).attr('img_name')
                    if($me.closest('.clicked').hasClass('specific-image')){
                        
                        $me.closest('.clicked.specific-image').find('.image-spec').val(image_name)

                        var span = '<span  class="prd-img-page product-images-span relative" >'+
                        ' <img src="'+libary_path+''+image_name+'" class="img-thumbnail product-images" img_name="'+image_name+'"  alt="Thiet ke web Anh Ho">' +  
                         '<span class="product-images-span-delete absolute c-cd1818 r-2 box-2 text-right" style="cursor: pointer;">X</span>'+
                        '</span>'  
                            
                        $me.closest('.clicked.specific-image').find('.image-spec-div').html(span)

                    }else if($me.closest('.clicked').hasClass('addition-images')){
                        
                        var image_name_selected = $me.closest('.clicked.addition-images').find('.image-added').val()
                        var wordSearch = new RegExp(`\\b${image_name}\\b`, 'i');
                        var isTrue = wordSearch.test(image_name_selected);

                        if(!isTrue){
                            image_name_selected =(image_name_selected =='')?image_name: image_name_selected+','+image_name
                            $me.closest('.clicked.addition-images').find('.image-added').val(image_name_selected)
                            
                            var span =''        
                            if(image_name_selected.indexOf(',')){
                                
                                image_name_selected.split(',').forEach(function(item){
                                     span += ' <span  class="prd-img-page product-images-span me-2 relative">'+
                                    ' <img src="'+libary_path+''+item+'" class="img-thumbnail product-images" img_name="'+item+'"  alt="Thiet ke web Anh Ho">' +  
                                    '<span class="product-images-span-delete absolute c-cd1818 r-2 box-2 text-right" style="cursor: pointer;">X</span>'+
                                    '</span>'  
                                })
                            }else{
                                span += ' <span  class="prd-img-page product-images-span relative" >'+
                                    ' <img src="'+libary_path+''+image_name_selected+'" class="img-thumbnail product-images" img_name="'+image_name_selected+'"  alt="Thiet ke web Anh Ho">' +  
                                    '<span class="product-images-span-delete absolute c-cd1818 r-2 box-2 text-right" style="cursor: pointer;">X</span>'+
                                    '</span>'  
                            }

                            $me.closest('.clicked.addition-images').find('.image-added-div').html(span)
                        }
                    }
                    
                  

                    $('#library-modal').modal('hide')
                })

                $('#library-modal').modal('show')
                /*******************event*********************/
                $('#submit-id').on('click',function(){
                    prd_f.uploadImgToLibraries($me)
                });

              
            }
        });
    },

    /*********************************************************/
    uploadImgToLibraries:function($me){
        const formData = new FormData();
        var imgData = document.getElementById('filenames');
        if(imgData.files.length  > 0) {
            for (var i = 0; i < imgData.files.length; i++) {
                formData.append('file[]', imgData.files[i]);
               // console.log(imgData.files[i])
            }
        }
       // console.log([...formData])
        var link3 =api_link+'add_image_library';
        $.ajax({
            headers: {
                'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
            },
            "async": true,
            "crossDomain": true,
            "url": link3,
            "method": "POST",
            dataType: 'json',
            data:formData,
            enctype: 'multipart/form-data',
            processData: false,
            contentType: false,
            cache: false,
            //contentType: 'application/json',
            error : function (status,xhr,error) { },
            success: function (res) {
                if(res.files.length > 0){
                    $('.list-images').html('')
                    prd_f.showLibrayImg(res,$me)
                    prd_f.file_tranfer.clearData()
                }
            }
        });
    },
    /*********************************************************/
    showLibrayImg:function(data,$me){
       
        if(data.files.length > 0){
            data.files.forEach(function(item){
               var cols ='<div class="col mx-1 my-2">' +
                    ' <img src="'+api_path+'/images/'+item.filenames+'" img_name="'+item.filenames+'" style="width:60px; cursor:pointer" class="img-selected">' +
                    '</div>'
                $('#library-modal #media .append-img').append(cols)
            })
        }

        //event
       /* $('.img-selected').unbind('click').bind('click',function(){
            var image_name = $(this).attr('img_name')
            if($me.closest('div').hasClass('product-image')){
                $me.closest('div').find('#prd_img').val(image_name)
            }else if($me.closest('div').hasClass('library-images')){
                var image_name_selected = $me.closest('div').find('.prd-library').val()
                var wordSearch = new RegExp(`\\b${image_name}\\b`, 'i');
                var isTrue = wordSearch.test(image_name_selected);

                if(!isTrue){
                    image_name_selected =(image_name_selected =='')?image_name: image_name_selected+','+image_name
                    $me.closest('div').find('.prd-library').val(image_name_selected)
                }
            }

            $('#library-modal').modal('hide')
        })*/
    }

}
var prd_f = new library_images();
$(function(){
    prd_f.init();
});