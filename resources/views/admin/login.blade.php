<section class="h-100 gradient-form" style="background-color: #eee;">
  <div class="container py-5 h-100">
    <div class="row d-flex justify-content-center align-items-center h-100">
      <div class="col-xl-10">
        <div class="card rounded-3 text-black">
          <div class="row g-0">
            <!-- <div class="col-lg-6 d-flex align-items-center gradient-custom-2">
              <div class="text-white px-3 py-4 p-md-5 mx-md-4">
                <h4 class="mb-4">We are more than just a company</h4>
                <p class="small mb-0">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
              </div>
            </div> -->
            <div class="col-lg-6">
              <div class="card-body p-md-3 mx-md-2">
                @if (session()->has('success'))
                  <div class="alert alert-success">
                      @if(is_array(session('success')))
                          <ul>
                              @foreach (session('success') as $message)
                                  <li>{{ $message }}</li>
                              @endforeach
                          </ul>
                      @else
                          {{ session('success') }}
                      @endif
                  </div>
                @endif

                <form method="POST" action="/admin/doLogin">
                  <p>Admin Login</p>
                  @csrf
                  <div class="form-outline mb-4">
                    <label class="form-label" for="form2Example11">Email</label>
                    <input type="text" id="email" name="email" class="form-control" placeholder="email"/>
                     @if($errors->has('email'))
                      <div class="error">{{ $errors->first('email') }}</div>
                    @endif
                  </div>
                  <div class="form-outline mb-4">
                    <label class="form-label" for="form2Example22">Password</label>
                    <input type="password" id="password" name="password" class="form-control" placeholder="Password" />
                     @if($errors->has('password'))
                      <div class="error">{{ $errors->first('password') }}</div>
                    @endif
                  </div>
                  <div class="text-center pt-1 mb-5 pb-1">
                    <button class="btn btn-primary btn-block fa-lg gradient-custom-2 mb-3" type="submit">Log in</button>
                    
                  </div>

                </form>

              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>

<script type="text/javascript">
  
  function GPLogin()
{   
   var myParams = {        
     'clientid' : '710211910762-i5j6oila0r9b9hp2nqa8esa92p8om36v.apps.googleusercontent.com',         
     'cookiepolicy' : 'single_host_origin',         
     'callback' : 'mycoddeSignIn',
     'approvalprompt':'force',
     'scope' : 'https://www.googleapis.com/auth/plus.login https://www.googleapis.com/auth/plus.profile.emails.read'       
   };
   gapi.auth.signIn(myParams);
} 
</script>
<style type="text/css">
  .gradient-custom-2 {
  /* fallback for old browsers */
  background: #fccb90;

  /* Chrome 10-25, Safari 5.1-6 */
  background: -webkit-linear-gradient(to right, #ee7724, #d8363a, #dd3675, #b44593);

  /* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */
  background: linear-gradient(to right, #ee7724, #d8363a, #dd3675, #b44593);
}

@media (min-width: 768px) {
  .gradient-form {
    height: 100vh !important;
  }
}
@media (min-width: 769px) {
  .gradient-custom-2 {
    border-top-right-radius: .3rem;
    border-bottom-right-radius: .3rem;
  }
}
</style>