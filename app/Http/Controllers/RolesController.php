<?php

namespace App\Http\Controllers;

use App\Models\Role;

class RolesController extends Controller
{
    public function create()
    {
//        $role = new Role();
//
//        $role->name = 'Client';
//        $role->save();


//        Role::insert(['name' => 'Admin']);

//        Role::create([
//            'name' => 'manager',
//        ]);
//        return response()->json(true);
    }

    public function index()
    {

//        return Role::find(1);
        //return Role::all();
     // dd(Role::whereNotNull('created_at')->orWhere('id', '>', 1)->get());
//        return response()->json(Role::get());


//        $role = Role::find(2);
//        $role->name = 'Manager';
//        $role->save();
//        dd($role);

//        $role = Role::find(3)->update([
//            'name' => 'M-test',
//        ]);
//        return Role::find(3);

//        Role::find(3)->delete();
    }

    public function show(Role $role)
    {
//        $role = Role::find($roleId);
//        return response()->json(['data' => $role]);



        return response()->json(['data' => $role]);
    }
}
