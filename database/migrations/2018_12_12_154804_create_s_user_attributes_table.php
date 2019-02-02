<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateSUserAttributesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('s_user_attributes', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('userID');
            $table->text('weeinvitationcode');
            $table->text('weedealerid');
            $table->text('weecityofbirth');
            $table->text('weecountryofbirth');
            $table->text('weenationality');
            $table->text('weeuseridparent');
            $table->dateTime('weetaftimestamp');
            $table->integer('weetafid');
            $table->integer('pix_confirm_user');
            $table->text('weeregisternumber');
            $table->text('weeidentificationtype');
            $table->text('weeidnumber');
            $table->text('weeissuingauthority');
            $table->text('weeissuedon');
            $table->text('weevaliduntil');
            $table->mediumText('ant_reguploaderusertype');
            $table->text('mp_customerid');
            $table->text('mp_data');
            $table->integer('kycinternalok');
            $table->integer('kycexternalok');
            $table->integer('kycfollowup');

        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('s_user_attributes');
    }
}
