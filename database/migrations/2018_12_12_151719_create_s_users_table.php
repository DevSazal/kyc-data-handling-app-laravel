<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateSUsersTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('s_user', function (Blueprint $table) {
            $table->increments('id');
            $table->string('password');
            $table->string('encoder');
            $table->string('email');
            $table->integer('active');
            $table->integer('accountmode');
            $table->string('confirmationkey');
            $table->integer('paymentID')->default(0);
            $table->integer('doubleOptinRegister')->nullable()->default(0);
            $table->dateTime('doubleOptinEmailSentDate')->nullable();
            $table->dateTime('doubleOptinConfirmDate')->nullable();
            $table->date('firstlogin');
            $table->dateTime('lastlogin');
            $table->string('sessionID')->nullable();
            $table->integer('newsletter');
            $table->string('validation');
            $table->integer('affiliate');
            $table->string('customergroup');
            $table->integer('paymentpreset');
            $table->string('language');
            $table->integer('subshopID');
            $table->string('referer');
            $table->integer('pricegroupID')->nullable();
            $table->longText('internalcomment');
            $table->integer('failedlogins');
            $table->dateTime('lockeduntil')->nullable();
            $table->integer('default_billing_address_id')->nullable();
            $table->integer('default_shipping_address_id')->nullable();
            $table->string('title')->nullable();
            $table->string('salutation')->nullable();
            $table->string('firstname')->nullable();
            $table->string('lastname')->nullable();
            $table->date('birthday')->nullable();
            $table->string('customernumber')->nullable();
            $table->string('login_token')->nullable();
            $table->dateTime('changed')->nullable();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('s_user');
    }
}
