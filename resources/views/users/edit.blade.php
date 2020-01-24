@extends('layouts.app')

@section('content')
    <h1>Edit User</h1>
    {!! Form::open(['action' => ['UserController@update', $user->id]]) !!}
        <div class="form-group">
            {{Form::label('name', 'Name')}}
            {{Form::text('name', $user->name, ['class' => 'form-control', 'placeholder' => 'name'])}}
        </div>
        <div class="form-group">
            {{Form::label('email', 'Email')}}
            {{Form::text('body', $user->email, [ 'class' => 'form-control', 'placeholder' => 'E-mail'])}}
        </div>
        {{Form::hidden('_method','PUT')}}
        {{Form::submit('Submit', ['class'=>'btn btn-primary'])}}
    {!! Form::close() !!}
@endsection