<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateSCoreCountriesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('s_core_countries', function (Blueprint $table) {
            $table->increments('id');
            $table->string('countryname')->nullable();
            $table->string('countryiso')->nullable();
            $table->integer('areaID')->nullable();
            $table->string('countryen')->nullable();
            $table->integer('position')->nullable();
            $table->text('notice')->nullable();
            $table->integer('taxfree')->nullable();
            $table->integer('taxfree_ustid')->nullable();
            $table->integer('taxfree_ustid_checked')->nullable();
            $table->integer('active')->nullable();
            $table->string('iso3')->nullable();
            $table->integer('display_state_in_registration');
            $table->integer('force_state_in_registration');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('s_core_countries');
    }
}
