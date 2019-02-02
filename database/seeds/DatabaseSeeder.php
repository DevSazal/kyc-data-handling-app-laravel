<?php

use App\User;
use App\KYC\Kyc;
use App\Document\Document;
use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        // $this->call(UsersTableSeeder::class);
        //factory(Kyc::class,32)->create();
        factory(User::class,3)->create();
        //factory(Document::class,50)->create();

    }
}
