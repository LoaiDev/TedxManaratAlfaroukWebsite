@extends('layouts.app')

@section('content')
    <h1>Profile</h1>
    @if ($errors->any())
    @foreach ($errors->all() as $error)
    <div class="alert alert-danger">
            <label>{{ $error }}</label>           
    </div>
    @endforeach
    @endif
    <div class="form-group">
        <label>Name: </label>
        <p class= "form-control" style="text-transform: capitalize;">{{$user->name}}</p>
        <label>Email: </label>
        <p class= "form-control">{{$user->email}}</p>
    </div>
    <div class="form-group">
        <label>User Type</label>
        <p class= "form-control text-capitalize">{{$user->user_type->name ?? 'None'}}</p>
    </div>
    <div class="container">
        <div class="row justify-content-between">
            <div class="col-sm-auto row justify-content-center full-width-sm">
                <a href="/user/{{$user->id}}/edit" class="btn btn-primary px-4 full-width-sm">Edit</a>
            </div>
            <div class="col-sm-auto row justify-content-center mt-2 mt-sm-0">
                <form action="{{route ('user.destroy' , $user->id)}}" class="row justify-content-center full-width-sm" method="POST">
                    @csrf
                    @method('DELETE')
                    <button type="submit" class="btn btn-danger full-width-sm">Deactivate</button>
                </form>
            </div>
        </div>
    </div>
@endsection