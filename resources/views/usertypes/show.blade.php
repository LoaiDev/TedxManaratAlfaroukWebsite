@extends('layouts.app')

@section('content')
    <h1>User Type</h1>
    <div class="form-group">
        <label>Name</label>
        <p class= "form-control" style="text-transform: capitalize;">{{$usertype->name}}</p>
    </div>
    <div class="form-group">
        <label>Parent</label>
        <p class= "form-control">{{$parent->name ?? 'None'}}</p>
    </div>
    <div class="container">
        <div class="row justify-content-between">
            <div class="col-sm-auto row justify-content-center full-width-sm">
                <a href="/usertype/{{$usertype->id}}/edit" class="btn btn-primary px-4 full-width-sm">Edit</a>
            </div>
            <div class="col-sm-auto row justify-content-center mt-2 mt-sm-0">
                <form action="{{route ('usertype.destroy' , $usertype->id)}}" class="row justify-content-center full-width-sm" method="POST">
                    @csrf
                    @method('DELETE')
                    <button type="submit" class="btn btn-danger full-width-sm"@if($usertype->id == config('variable.defaultUserType')) data-toggle="tooltip" data-placement="left" title="You Can't Delete Default User Type" disabled @endif>Delete</button>
                </form>
            </div>
        </div>
    </div>
@endsection