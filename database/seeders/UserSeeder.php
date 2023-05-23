<?php

namespace Database\Seeders;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Str;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class UserSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        //

        DB::table('users')->insert([
            'name' => 'yousef',
            'email' => 'yousef@app.com',
            'password' => Hash::make('2301'),
            'section_id' => 12,
            'sub_section_id' => 121,
            'employee_name' => 'yousef',
        ]);

    }
}