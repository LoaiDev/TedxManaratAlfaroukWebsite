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
    <a href="/user/edit" class="btn btn-primary">Edit</a>
    {!!Form::open(['route' => ['user.deactivate', $user->id], 'method' => 'POST', 'class' => 'pull-right pt-2'])!!}
        {{Form::hidden('_method', 'DELETE')}}
        {{Form::hidden('user', $user->id)}}
        {{Form::submit('Deactivate', ['class' => 'btn btn-danger'])}}
    {!!Form::close()!!}
@endsection