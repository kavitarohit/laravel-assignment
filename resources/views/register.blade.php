<section class="h-100 gradient-form" style="background-color: #eee;">
  <div class="container py-5 h-100">
    <div class="row d-flex justify-content-center align-items-center h-100">
      <div class="col-xl-10">
        <div class="card rounded-3 text-black">
          <div class="row g-0">
          <!--   <div class="col-lg-6 d-flex align-items-center gradient-custom-2">
              <div class="text-white px-3 py-4 p-md-5 mx-md-4">
                <h4 class="mb-4">We are more than just a company</h4>
                <p class="small mb-0">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
              </div>
            </div> -->
            <div class="col-lg-12">
              <div class="card-body p-md-5 mx-md-4">

                <div class="text-center">
                  <img src="https://mdbootstrap.com/img/Photos/new-templates/bootstrap-login-form/lotus.png" style="width: 185px;" alt="logo">
                  <h4 class="mt-1 mb-5 pb-1">We are The Laravel Team</h4>
                </div>

                <form method="POST">
                  <p>Basic Information Section</p>
                  @csrf
                   <div class="form-outline mb-4">
                    <label class="form-label" for="form2Example11">First Name</label>
                    <input type="text" id="name" name="firstname" class="form-control" placeholder="Enter your name"/>
                    @if($errors->has('firstname'))
                      <div class="error">{{ $errors->first('firstname') }}</div>
                    @endif
                  </div>
                  <div class="form-outline mb-4">
                    <label class="form-label" for="form2Example11">Last Name</label>
                    <input type="text" id="name" name="lastname" class="form-control" placeholder="Enter your name"/>
                    @if($errors->has('lastname'))
                      <div class="error">{{ $errors->first('lastname') }}</div>
                    @endif
                  </div>
                   <div class="form-outline mb-4">
                    <label class="form-label" for="form2Example11">Email</label>
                    <input type="text" id="email" name="email" class="form-control" placeholder=" email address"/>
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
                 <div class="form-outline mb-4">
                    <label class="form-label" for="form2Example22">Confirm Password</label>
                    <input type="password" id="password_confirmation" name="password_confirmation" class="form-control" placeholder="Confirm password" />
                  </div>
                   <div class="form-outline mb-4" >
                    <label class="form-label" for="form2Example22">Gender</label>

                    <div class="custom-control custom-radio">
                        <input type="radio" id="customRadio1" name="gender" value="Male" class="custom-control-input">
                        <label class="custom-control-label" for="customRadio1">Male</label>
                      </div>
                      <div class="custom-control custom-radio">
                        <input type="radio" id="customRadio2" name="gender" value="Female" class="custom-control-input">
                        <label class="custom-control-label" for="customRadio2">Female</label>
                    </div>
                  </div>
                  <div class="form-outline mb-4">
                    <label class="form-label" for="form2Example11">Annual Income</label>
                    <input type="text" id="annual_income" name="annual_income" class="form-control" placeholder="Annual Income"/>
                    @if($errors->has('annual_income'))
                      <div class="error">{{ $errors->first('annual_income') }}</div>
                    @endif
                  </div>
                  <div class="form-outline mb-4">
                    <label class="form-label" for="form2Example11">Occupation</label>
                    <select class="custom-select" name="occupation">
                      <option selected>Select Occupation</option>
                      <option value="Private job">Private job</option>
                      <option value="Government Job">Government Job</option>
                      <option value="Business">Business</option>
                    </select>
                    @if($errors->has('occupation'))
                      <div class="error">{{ $errors->first('occupation') }}</div>
                    @endif
                  </div>
                  <div class="form-outline mb-4">
                    <label class="form-label" for="form2Example11">Family type</label>
                    <select class="custom-select" name="family_type">
                      <option selected>Select family type</option>
                      <option value="Joint family">Joint family</option>
                      <option value="Nuclear family">Nuclear family</option>
                    </select>
                    @if($errors->has('family_type'))
                      <div class="error">{{ $errors->first('family_type') }}</div>
                    @endif
                  </div>
                  <div class="form-outline mb-4">
                    <label class="form-label" for="form2Example11">Manglik</label>
                    <select class="custom-select" name="manglik">
                      <option selected>Select family type</option>
                      <option value="Yes">Yes</option>
                      <option value="No">No</option>
                    </select>
                    @if($errors->has('family_type'))
                      <div class="error">{{ $errors->first('family_type') }}</div>
                    @endif
                  </div>

                  <p>Partner Preference</p>

                  <div class="form-outline mb-4">
                    <label class="form-label" for="form2Example11">Expected Income</label>
                      <input type="text" id="expected_income" name="expected_income" readonly style="border:0; color:#f6931f; font-weight:bold;">
                      <div id="slider-range"></div>
                   </div>

                   <div class="form-outline mb-4">
                      <label class="form-label" for="form2Example11">Occupation</label>
                      <select class="custom-select" name="partner_occupation[]" id="partner_occupation" multiple="multiple">
                        <option value="Private job">Private job</option>
                        <option value="Government Job">Government Job</option>
                        <option value="Business">Business</option>
                      </select>
                      @if($errors->has('occupation'))
                        <div class="error">{{ $errors->first('occupation') }}</div>
                      @endif
                  </div>
                  <div class="form-outline mb-4">
                    <label class="form-label" for="form2Example11">Family type</label>
                    <select class="custom-select" name="partner_family_type[]" id="partner_family_type" multiple="multiple">
                      <option value="Joint family">Joint family</option>
                      <option value="Nuclear family">Nuclear family</option>
                    </select>
                    @if($errors->has('family_type'))
                      <div class="error">{{ $errors->first('family_type') }}</div>
                    @endif
                  </div>
                  <div class="form-outline mb-4">
                    <label class="form-label" for="form2Example11">Manglik</label>
                    <select class="custom-select" name="partner_manglik">
                      <option selected>Select family type</option>
                      <option value="Yes">Yes</option>
                      <option value="No">No</option>
                    </select>
                    @if($errors->has('family_type'))
                      <div class="error">{{ $errors->first('family_type') }}</div>
                    @endif
                  </div>
                  <div class="text-center pt-1 mb-5 pb-1">
                    <button class="btn btn-primary btn-block fa-lg gradient-custom-2 mb-3" type="submit" name="btnSubmit" value="true">Submit</button>
                    
                  </div>
                  <div class="d-flex align-items-center justify-content-center pb-4">
                    <a href="/login" type="button" class="btn btn-outline-danger">Back To Login</a>
                  </div>
                </form>
              </div>
            </div>
            <
          </div>
        </div>
      </div>
    </div>
  </div>
</section>

<link rel="stylesheet" href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
<script src="//code.jquery.com/jquery-1.10.2.js"></script>
<script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script>

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-multiselect/0.9.13/css/bootstrap-multiselect.css" />
<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-multiselect/0.9.13/js/bootstrap-multiselect.js"></script>

<script>
  $('#partner_family_type').multiselect({
    nonSelectedText: 'Select Family Type',
    enableFiltering: true,
    enableCaseInsensitiveFiltering: true,
    buttonWidth:'100%'
    });

  $('#partner_occupation').multiselect({
    nonSelectedText: 'Select Occupation',
    enableFiltering: true,
    enableCaseInsensitiveFiltering: true,
    buttonWidth:'100%'
    });

  jQuery("#slider-range").slider({
    /* You can change min, max, step and values */
    range: true,
    min: 0,
    max: 500,
    step: 100,
    values: [75, 300],
    slide: function(event, ui) {
        jQuery( "#expected_income" ).val( "$" + formatNumber(ui.values[0]) + " - $" + ui.values[1] );
    }});
   jQuery( "#expected_income" ).val( "$" + $( "#slider-range" ).slider( "values", 0 ) +
      " - $" + $( "#slider-range" ).slider( "values", 1 ) );
  
var formatNumber = function(number)
{
    number += "";
    var parts = number.split('.');
    var integer = parts[0];
    var decimal = parts.length > 1 ? '.' + parts[1] : '';
    var regex = /(\d+)(\d{3})/;
    while (regex.test(integer))
    {
        integer = integer.replace(regex, '$1' + ',' + '$2');
    }
    return integer + decimal;
};
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