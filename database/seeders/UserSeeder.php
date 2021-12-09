<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Faker\Factory as Faker;
use DB;
use Str;
class UserSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
    	 $faker = Faker::create();
        for ($i = 0; $i < 10; $i++) {
		DB::table('users')->insert([
			'firstname' => $faker->firstname,
			'lastname' => $faker->lastname,
			'email' => $faker->unique()->safeEmail,
            'password' => bcrypt('123456'), // Can also be used Hash::make('password@123')
			'gender' => $faker->randomElement(['male', 'female']),
			'annual_income' => rand(100000, 1000000),
            'email_verified_at' => now(),
            'remember_token' => Str::random(10)
   		]);
		}
    }
}
