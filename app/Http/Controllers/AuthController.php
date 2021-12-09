<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\User as UserModel;
use Auth;
use Session;

class AuthController extends Controller
{
    public function __construct(UserModel $user)
    {
    	$this->UserModel =  $user;
    }
    public function login(Request $request)
    {    	
    	$data['middleContent']        = 'login';
    	$data['pageTitle']        = 'Login';
    	return view('template')->with($data);  
    }
    function doLogin(Request $request)
    {
	    $request->validate([
            'email' => 'required',
            'password' => 'required',
        ]);
   
        $credentials = $request->only('email', 'password');
        if (Auth::attempt($credentials)) {
            return redirect("/")->withSuccess('Signed in');
        }
  
        return redirect("login")->withSuccess('Login details are not valid');
      
    }
    public function Registration(Request $request)
    {    
    	$arrRules = [];	
    	if (isset($request->btnSubmit) && $request->btnSubmit == "true") 
    	{
    		$formData = $request->all();
    		$arrRules['firstname'] = 'required';
    		$arrRules['lastname'] = 'required';
    		$arrRules['email'] = 'required';
            $arrRules['password'] = 'required|confirmed';
    		$arrRules['annual_income'] = 'required';
    		
    		$this->validate($request,$arrRules);

    		$insertArr['firstname'] = $formData['firstname'];
    		$insertArr['lastname'] = $formData['lastname'];
            $insertArr['email'] = $formData['email'];
    		$insertArr['password'] = bcrypt($formData['password']);
            $insertArr['gender'] = $formData['gender'];
            $insertArr['annual_income'] = $formData['annual_income'];
            $insertArr['occupation'] = $formData['occupation'];
            $insertArr['family_type'] = $formData['family_type'];
            $insertArr['manglik'] = $formData['manglik'];
            $insertArr['expected_income'] = $formData['expected_income'];
    		$insertArr['partner_manglik'] = $formData['partner_manglik'];

            if (isset($formData['partner_occupation'])) 
               $insertArr['partner_occupation'] = implode(',', $formData['partner_occupation']);

            if (isset($formData['partner_family_type'])) 
               $insertArr['partner_family_type'] = implode(',', $formData['partner_family_type']);
            

    		$res = $this->UserModel->create($insertArr);
    		if ($res) 
    		{
    			Session::flash('success','Your account created Successfully');
    			return redirect('/login');
    		}
    		else
    		{
    			Session::flash('error','Error occured while creating your account');
    			return redirect()->back();
    		}
    	}
    	else
    	{
	    	$data['middleContent']    = 'register';
	    	$data['pageTitle']        = 'Registeration';
	    	return view('template')->with($data);  
    	}
    }
    public function logout(Request $request)
    {       
        Auth::logout();
        return redirect('/login');
    }

}
