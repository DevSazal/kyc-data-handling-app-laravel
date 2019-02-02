<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateSUserOrdersTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('s_order', function (Blueprint $table) {
            $table->increments('id');
            $table->string('ordernumber')->nullable();
            $table->integer('userID')->nullable();
            $table->double('invoice_amount');
            $table->double('invoice_amount_net');
            $table->double('invoice_shipping');
            $table->double('invoice_shipping_net');
            $table->double('invoice_shipping_tax_rate')->nullable();
            $table->dateTime('ordertime')->nullable();
            $table->integer('status');
            $table->integer('cleared');
            $table->integer('paymentID');
            $table->string('transactionID');
            $table->mediumText('comment')->nullable();
            $table->mediumText('customercomment');
            $table->mediumText('internalcomment');
            $table->integer('net');
            $table->integer('taxfree');
            $table->string('partnerID')->nullable();
            $table->string('temporaryID');
            $table->mediumText('referer');
            $table->dateTime('cleareddate')->nullable();
            $table->string('trackingcode');
            $table->string('language');
            $table->integer('dispatchID');
            $table->string('currency');
            $table->double('currencyFactor');
            $table->integer('subshopID');
            $table->string('remote_addr')->nullable();
            $table->string('deviceType')->nullable();
            $table->string('is_proportional_calculation');
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
        Schema::dropIfExists('s_order');
    }
}
