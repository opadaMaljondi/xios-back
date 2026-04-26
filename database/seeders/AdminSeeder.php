<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\Crypt;
use Illuminate\Support\Facades\DB;

class AdminSeeder extends Seeder
{
    public function run()
    {
        DB::table('admins')->updateOrInsert(
            ['user_name' => 'admin123'],
            [
                'user_name'     => 'admin123',
                'user_password' => Crypt::encrypt('admin123'),
                'created_at'    => now(),
                'updated_at'    => now(),
            ]
        );
    }
}

