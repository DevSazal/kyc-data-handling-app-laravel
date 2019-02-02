<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateKycsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('kycs', function (Blueprint $table) {
            $table->increments('id');
            $table->string('first_name');
            $table->string('last_name');
            $table->string('city');
            $table->string('country');
            $table->string('city_of_birth');
            $table->string('country_of_birth');
            $table->string('nationality');
            $table->boolean('document_type')->nullable()->unsigned();
            $table->string('document_number');
            $table->string('issuing_authority');
            $table->date('issue_on');
            $table->date('valid_until');
            $table->float('order_amount')->unsigned();
            $table->integer('internal')->nullable()->default(22);
            $table->integer('external')->nullable()->default(22);
            $table->integer('follow_up')->nullable()->default(0);
            $table->longText('comment')->nullable();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('kycs');
    }
}
