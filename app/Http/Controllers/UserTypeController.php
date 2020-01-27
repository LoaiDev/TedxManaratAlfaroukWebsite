<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use App\User;
use App\UserType;

class UserTypeController extends Controller
{
    public function index()
    {
      return redirect ('/usertypes');
    }


    public function show($id)
    {
        $usertype = UserType::FindOrFail($id);
        $parent = UserType::Find($usertype->parent_id);
        return view ('usertypes.show')->with(['usertype'=> $usertype ,'parent'=> $parent]);    
    }

    public function list()
    {
        $usertypes = UserType::paginate(10);
        $allusertypes = UserType::All();
        return view('usertypes.index')->with(['usertypes' => $usertypes , 'allusertypes' => $allusertypes]);
    }

    public function create()
    {
        $usertypes = UserType::orderBy('name','asc')->get();
        return view ('usertypes.create')->with('usertypes' , $usertypes);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //validate incoming data
        $validatedData = $request->validate([
            'name' => ['required', 'string', 'max:255'], 
            'parent' => ['required', 'integer'],
            'password' => ['required', 'string'],
        ]);

        $route = '/usertype/create';
        //verify the password of the editor
        if (!Hash::check($request->password, Auth::user()->password)) {
            return redirect($route)->withErrors(['password'=>'Wrong Password'])->withInput();
        }
        //make new user type object
        $usertype = new UserType;

        //set name to input name
        $usertype->name = $request->name;

        if($request->parent != 0){
            //set the usertype parent to the parent input
            $usertype->parent_id = $request->parent;
        }
        //save object
        $usertype->save();
        return redirect ('/usertype/'.$usertype->id);
    }
    public function edit($id)
    {
        //get user of specified id
        $usertype = UserType::FindOrFail($id);
        $parent = UserType::Find($usertype->parent_id);
        $usertypes = UserType::orderBy('name','asc')->get()->except($id);
        return view ('usertypes.edit')->with(['usertype'=> $usertype ,'parent'=> $parent ,'usertypes' => $usertypes]);
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
            'parent' => ['required', 'integer'],
            'password' => ['required', 'string'],
        ]);
        
        //get user of the specified id
        $usertype = UserType::FindOrFail($id);
        //set the route back in case of failure
        $route = '/usertype/'.$id.'/edit';
        //verify the password of the editor
        if (!Hash::check($request->password, Auth::user()->password)) {
            return redirect($route)->withErrors(['password'=>'Wrong Password'])->withInput();
        }
        //if the editor changed the parent
        if ($request->parent != $usertype->parent_id){
            if($request->parent != 0){
            //set the usertype parent to the parent input
                $usertype->parent_id = $request->parent;
            }
            else{
                $usertype->parent_id = null;
            }
        }
        //check if editor changed name
        if ($request->name != $usertype->name){
            //if true change the name
            $usertype->name = $request->name;
        }
            //save the user types
            $usertype->save();
            return redirect('/usertype/'.$id)->withSuccess('User Type Edited Successfully');
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
        $usertype = UserType::FindOrFail($id);
        //delete user
         $usertype->delete();
         //return to index
         return redirect('/usertypes')->withSuccess('User Type Deleted Successfully');
    }
}
