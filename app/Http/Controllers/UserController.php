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
        //get user of specified id
        $user = User::FindOrFail($id);  
        //check if there is a user
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
        //validate incoming data
        $validatedData = $request->validate([
            'name' => ['required', 'string', 'max:255'], 
            'email' => ['required', 'string', 'email', 'max:255'],
            'password' => ['required', 'string'],
            //'newpassword' => ['required', 'string', 'min:8', 'confirmed'],
        ]);
        
        //get user of the specified id
        $user = User::FindOrFail($id);
        //set the route back in case of failure
        $route = '/user/'.$id.'/edit';
        //verify the password of the editor
        if (!Hash::check($request->password, Auth::user()->password)) {
            return redirect($route)->withErrors(['password'=>'Wrong Password'])->withInput();
        }
        //if the editor changed the email
        if ($request->email != $user->email){
            //check if there was a record found (email was registered by another user)
            if (User::where('email', '=', $request->email )->exists()) {
                // user found
                return redirect($route)->withErrors(['email'=>'Email Already Registered'])->withInput();
             }
               
            //if the email wasn't used set the user email to the email input
                $user->email = $request->email;
        }
        //check if editor changed name
        if ($request->name != $user->name){
            //if true change the name
            $user->name = $request->name;
        }
            //save the user
            $user->save();
            return redirect('/user/'.$id)->withSuccess('User Edited Successfully');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //get the user of the specified id
        $user = User::FindOrFail($id);
        //delete user
         $user->delete();
         //return to index
         return redirect('/users')->withSuccess('User Deactivated Successfully');
    }
}
