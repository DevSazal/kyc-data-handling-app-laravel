<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateSUserAddressesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('s_user_addresses', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('user_id');
            $table->string('company')->nullable();
            $table->string('department')->nullable();
            $table->string('salutation');
            $table->string('title')->nullable();
            $table->string('firstname');
            $table->string('lastname');
            $table->string('street')->nullable();
            $table->string('zipcode');
            $table->string('city');


            $table->integer('country_id');
            $table->integer('state_id')->nullable();
            $table->string('ustid')->nullable();
            $table->string('phone')->nullable();
            $table->string('additional_address_line1')->nullable();
            $table->string('additional_address_line2')->nullable();

        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('s_user_addresses');
    }
}
