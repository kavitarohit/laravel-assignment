<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Auth;
class HomeController extends Controller
{
    public function __construct()
    {

    }
    public function index(Request $request)
    {
    	$data['middleContent']        = 'home';
    	$data['pageTitle']        = 'home';
    	return view('template')->with($data);  
    }

}
