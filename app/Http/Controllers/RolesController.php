<?php

namespace App\Http\Controllers;

use App\Models\Role;
use App\Models\User;
use Illuminate\Http\Request;

class RolesController extends Controller
{
    public function create(Request $request)
    {
//        Role::create([
//            'name' => 'designer',
//        ]);
        Role::create($request->only('name'));
        return response()->json(true);
    }

    public function update(Request $request, Role $role)
    {
        $role->update($request->only('name'));
        return response()->json($role);
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

    public function users(Role $role)
    {

        return $role->users->first()->role;
       // return $role->users->where('id', '2');
       // return $role->users()->where('id', '>', '2')->get();
       // return $role->users()->orderByDesc('id')->get();
    }
}
