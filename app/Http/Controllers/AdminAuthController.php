<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\User as UserModel;
use Auth;
use Session;

class AdminAuthController extends Controller
{
    public function __construct(UserModel $user)
    {
    	$this->UserModel =  $user;
    }
    public function login(Request $request)
    {    	
    	$data['middleContent']        = 'admin/login';
    	$data['pageTitle']        = 'Login';
    	return view('admin/template')->with($data);  
    }
    function doLogin(Request $request)
    {

	    $request->validate([
            'email' => 'required',
            'password' => 'required',
        ]);
   
        $credentials = $request->only('email', 'password');
        if (Auth::attempt($credentials)) {
            return redirect("/admin/dashboard")->withSuccess('Signed in');
        }
  
        return redirect("login")->withSuccess('Login details are not valid');
      
    }
    public function logout(Request $request)
    {       
        Auth::logout();
        return redirect('/admin/login');
    }

}
