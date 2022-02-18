<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AddFieldsToUsersTable extends Migration {

    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up() {
        Schema::table('users', function (Blueprint $table) {
            $table->string('nif')->unique()->nullable()->after('id');
            $table->string('surname')->nullable()->after('name');
            $table->date('birthday')->nullable()->after('password');
            $table->boolean('is_admin')->default(0)->after('password');
            $table->integer('phone')->nullable()->after('birthday');
            $table->boolean('premium')->default(0)->after('phone');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down() {
        Schema::table('users', function (Blueprint $table) {
            $table->dropColumn('nif');
            $table->dropColumn('surname');
            $table->dropColumn('birthday');
            $table->dropColumn('is_admin');
            $table->dropColumn('phone');
            $table->dropColumn('premium');
            $table->dropColumn('direction_id');
        });
    }
}
