<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use DB;

class AdminUserSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('users')->insert([
			'firstname' => 'Admin',
			'lastname' => 'User',
			'email' => 'admin@gmail.com',
            'password' => bcrypt('123456'), 
   		]);
    }
}
