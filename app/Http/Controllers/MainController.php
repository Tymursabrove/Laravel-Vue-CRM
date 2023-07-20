<?php

namespace App\Http\Controllers;

class MainController extends Controller
{
    public function index()
    {
        return view('welcome');
    }

    public function testPost()
    {
        return response()->json(['first_test' => 'ok']);
    }

    public function testPut()
    {
        return response()->json(['put' => 'ok']) ;
    }
    public function testAny()
    {
        return response()->json(['any_method' => 'ok']) ;
    }

}
