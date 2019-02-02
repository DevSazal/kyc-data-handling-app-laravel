<?php

use App\KYC\Kyc;
use App\Document\Document;
use Faker\Generator as Faker;

$factory->define(App\KYC\Kyc::class, function (Faker $faker) {
    return [
        'first_name' => $faker->firstNameMale,
        'last_name' => $faker->lastName,
        'city' =>$city= $faker->city,
        'country' => $faker->country,
        'city_of_birth' => $city,
        'country_of_birth' =>$country= $faker->country,
        'country_of_birth' => $country,
        'nationality' => $country,
        'document_type' => $faker->randomElement([0,1,2,3]),
        'document_number' => $faker->randomNumber($nbDigits = 8, $strict = false),
        'issuing_authority' => $faker->name,
        'issue_on' => $faker->date($format = 'Y-m-d', $max = 'now'),
        'valid_until' => $faker->date($format = 'Y-m-d', $max = 'now'),
        'order_amount' => $faker->numberBetween($min = 100, $max = 100000),
        'internal' => $faker->randomElement([11,22]),
        'external' => $faker->randomElement([11,22]),
        'follow_up' => $faker->randomElement([true,false]),
        'comment' => $faker->paragraph(1),
    ];
});

$factory->define(App\Document\Document::class, function (Faker $faker) {
    return [

        'kyc_id'=>$faker->numberBetween($min = 1, $max = 32),
        'file_name' =>$faker->randomElement(['profile01.png','profile02.jpeg','profile03.jpeg','profile04.jpg']),
        'url'=>'images/',
    ];
});
