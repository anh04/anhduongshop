<template>
    <div class="container">
    <div class="row justify-content-center">
        <div class="col-md-10 col-ms-12 col-xs-12">
            <div class="card">
                <div class="card-header">Register</div>
                <div class="card-body bg-white">                   
                    <form method="POST" id="register-form">

                        <div class="row mb-3">
                            <div class="row">
                                <div class="col-md-6 col-sm-12 col-xs-12">
                                    <label class="col-form-label">First</label>
                                    <input type="text" class="form-control is-invalid" v-model="first_name" required autofocus>                                   
                                </div>
                                <div class="col-md-6 col-sm-12 col-xs-12">
                                    <label class="col-form-label">Last Name</label>
                                    <input type="text" v-model="last_name" class="form-control is-invalid" required autofocus>
                                   
                                </div>
                            </div>
                        </div>

                        <div class="row mb-3">
                            <div class="row">
                                <div class="col-md-6 col-sm-12 col-xs-12">
                                    <label class="col-form-label">Email</label>
                                    <input type="email" v-model="email" class="form-control email is-invalid" required autofocus>
                                    <span class="invalid-feedback hidden" role="alert" >
                                        <strong>Email required</strong>
                                    </span>
                                </div>

                            </div>
                        </div>

                        <div class="row mb-3">
                            <div class="row">
                                <div class="col-md-6 col-sm-12 col-xs-12">
                                    <label class="col-form-label">Password</label>
                                    <input type="password" id="password" name="password" class="form-control is-invalid"  required autofocus>
                                    <span class="invalid-feedback hidden" role="alert">
                                        <strong>Password required</strong>
                                    </span>
                                </div>
                                <div class="col-md-6 col-sm-12 col-xs-12">
                                    <label class="col-form-label">Confirm Password</label>
                                    <input type="password" v-model="password_confirmation" class="form-control is-invalid"  required autofocus>

                                </div>
                            </div>
                        </div>

                        <div class="row mb-3">
                            <div class="row">
                                <div class="col-md-6 col-sm-12 col-xs-12">
                                    <label class="col-form-label">State</label>
                                    <select  v-model="state" class="form-select">
                                        <option></option>
                                        @endif

                                    </select>
                                </div>
                                <div class="col-md-6 col-sm-12 col-xs-12">
                                    <label class="col-form-label">City</label>
                                    <select v-modal="city" class="form-select" ></select>
                                </div>
                            </div>
                        </div>
                        <div class="row mb-4">
                            <div class="row">
                                <div class="col-md-6 col-sm-12 col-xs-12">
                                    <label class="col-form-label">Zip</label>
                                    <select  v-model="zip" class="form-select"></select>
                                </div>
                                <div class="col-md-6 col-sm-12 col-xs-12">
                                    <label class="col-form-label">Address</label>
                                    <input type="text" v-model="address" class="form-control is-invalid" required autofocus>
                                    @error('address')
                                            <span class="invalid-feedback" role="alert">
                                                <strong><Address required></strong>
                                            </span>
                                    @enderror
                                </div>
                            </div>
                        </div>

                        <div class="row mb-2">
                            <div class="col text-center">
                                <button type="submit" class="btn btn-primary" id="btn-register">
                                    &nbsp;&nbsp;&nbsp; Register&nbsp;&nbsp;&nbsp;
                                </button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
</template>
<script lang="ts">
   
   export default{
        data(){
            return{
                
            }
        }
   }
</script>