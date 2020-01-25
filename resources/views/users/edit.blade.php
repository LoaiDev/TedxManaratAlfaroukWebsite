@extends('layouts.app')

@section('content')
    <h1>Edit User</h1>
    @if ($errors->any())
    @foreach ($errors->all() as $error)
    <div class="alert alert-danger">
            <label>{{ $error }}</label>           
    </div>
    @endforeach
    @endif
    {!! Form::open(['action' => ['UserController@update'], 'method'=> 'POST']) !!}
        @csrf

        <div class="form-group">
            {{Form::label('name', 'Name')}}
            {{Form::text('name', $user->name, ['class' => 'form-control', 'placeholder' => 'name'])}}
            @error('name')
                <span class="invalid-feedback" role="alert">
                    <strong>{{ $message }}</strong>
                </span>
            @enderror
        </div>
        <div class="form-group">
            {{Form::label('email', 'Email')}}
            {{Form::email('email', $user->email, [ 'class' => 'form-control ', 'placeholder' => 'E-mail'])}}
            @error('email')
                <span class="invalid-feedback" role="alert">
                    <strong>{{ $message }}</strong>
                </span>
            @enderror

        </div>
        <div class="form-group">
            {{Form::label('currentpassword', 'Current Password')}}
            {{Form::password('currentpassword',[ 'class' => 'form-control', 'placeholder' => 'Current Password'])}}
            @error('currentpassword')
                <span class="invalid-feedback" role="alert">
                    <strong>{{ $message }}</strong>
                </span>
            @enderror

        </div>
        
        {{Form::hidden('user', $user->id)}}
        {{Form::hidden('_method','PUT')}}
        {{Form::submit('Submit', ['class'=>'btn btn-primary'])}}
    {!! Form::close() !!}
@endsection