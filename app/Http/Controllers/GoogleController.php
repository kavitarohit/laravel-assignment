<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\User as UserModel;
use Auth;
use Socialite;
use Exception;

class GoogleController extends Controller
{
    public function __construct(UserModel $user)
    {
    	$this->UserModel =  $user;
    }
   public function redirectToGoogle()
    {
        return Socialite::driver('google')->redirect();
    }
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function handleGoogleCallback()
    {
        try {
    
            $user = Socialite::driver('google')->user();
            
            $finduser = UserModel::where('email', $user->email)->first();
     
            if($finduser){
     
                Auth::login($finduser);
    
                  return redirect("/")->withSuccess('Signed in');
     
            }else{

                $newUser = UserModel::create([
                    'first_name' => $user->name,
                    'email' => $user->email,
                    'google_id'=> $user->id,
                    'password' => bcrypt('123456')
                ]);
          
                Auth::login($newUser);
     
                  return redirect("/")->withSuccess('Signed in');
            }
    
        } catch (Exception $e) {
            dd($e->getMessage());
        }
    }

}
