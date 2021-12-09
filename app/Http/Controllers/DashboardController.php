<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\User as UserModel;
use Auth;
class DashboardController extends Controller
{
    public function __construct()
    {

    }
    public function index(Request $request)
    {
    	$arrdata = UserModel::get()->where('email','!=','admin@gmail.com')->toArray();
    	$data['data']        = $arrdata;
    	$data['middleContent']        = 'admin/dashboard';
    	$data['pageTitle']        = 'dashboard';
    	return view('admin/template')->with($data);  
    }

}
