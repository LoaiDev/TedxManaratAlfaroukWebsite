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
      return view ('users.index')->with('user',$user);
    }

    
    public function edit()
    {
        $user = Auth::user();
        
        //Check if post exists before deleting
        if (!isset($user)){
            return redirect('/')->with('error', 'No User Found');
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
    public function update(Request $request)
    {
        $validatedData = $request->validate([
            'name' => ['required', 'string', 'max:255'],
            'email' => ['required', 'string', 'email', 'max:255'],
            'currentpassword' => ['required', 'string'],
            //'newpassword' => ['required', 'string', 'min:8', 'confirmed'],
        ]);
        
        $user = Auth::user();
        $requestUID = $request ->user;
        $userID = $user->id;
        if($requestUID != $userID){        
            return redirect('/user/edit')->withErrors('Unauthorized action');
        }
        
        if (Hash::check($request->currentpassword, $user->password)) {
        }
        else{
            return redirect('/user/edit')->withErrors('Wrong Password');
        }
        $raw = User::where('email', $request->email)->get();
        if(count($raw)!=0) {
            if(count($raw)!=1) {
                return redirect('/user/edit')->withErrors('Unknown error');
            }
            else{
                if($request->email != $user->email){
                    return redirect('/user/edit')->withErrors('Email already registered');
                }
            }
        }
            $user->name = $request->name;
            $user->email = $request->email;
            $user->save();
            return redirect('/user');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $user = Auth::user();
        if($id != $user->id){        
        return redirect('/user')->withErrors('Unauthorized action');
        }
        else{
         $user->delete();
         return redirect('/');
        }
    }
}
