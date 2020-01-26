<?php

use Illuminate\Database\Seeder;
use App\User;

class UserSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $users = factory(App\User::class, 100)
           ->create()
           ->each(function ($user) {
                $user->user_types()->save(factory(App\UserType::class)->make());
            });
    }
}
