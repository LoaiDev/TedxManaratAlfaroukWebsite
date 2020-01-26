<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use App\User;

class UserController extends Controller
{

    public function __construct()
    {
        $this->middleware('auth');
    }
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
      $user = Auth::user();
      return redirect ('/user/'.$user->id);
    }


    public function show($id)
    {
        $user = User::FindOrFail($id);
        return view ('users.show')->with('user',$user);
    }

    public function list()
    {
        $users = User::paginate(10);
        return view('users.index')->with('users',$users);
    }
    public function edit($id)
    {
        $user = User::FindOrFail($id);  
        if (!isset($user)){
            return redirect('/')->withError('No User Found');
        }
        else{
        return view('users.edit')->with('user', $user);
        }
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request , $id)
    {
        $validatedData = $request->validate([
            'name' => ['required', 'string', 'max:255'],
            'email' => ['required', 'string', 'email', 'max:255'],
            'password' => ['required', 'string'],
            //'newpassword' => ['required', 'string', 'min:8', 'confirmed'],
        ]);
        
        $user = User::FindOrFail($id);
        $route = '/user/'.$id.'/edit';
        if (Hash::check($request->password, Auth::user()->password)) {
        }
        else{
            return redirect($route)->withErrors('Wrong Password');
        }
        $raw = User::where('email', $request->email)->get();
        if(count($raw)!=0) {
            if(count($raw)!=1) {
                return redirect($route)->withErrors('Unknown error');
            }
            else{
                if($request->email != $user->email){
                    return redirect($route)->withErrors('Email already registered');
                }
            }
        }
            $user->name = $request->name;
            $user->email = $request->email;
            $user->save();
            return redirect('/user/'.$id);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $user = User::FindOrFail($id);
         $user->delete();
         return redirect('/users');
    }
}
