@extends('layouts.app')
@section('content')
    <h1>Edit User</h1>
    <form method="POST" action="{{ route('user.update' , $user->id) }}">
        @csrf
        @method('PUT')

        <div class="form-group">
            <label for="name">Name</label>
            <input id="name" type="text" class="form-control @error('name') is-invalid @enderror" name="name" value="{{ old('name',$user->name) }}" required placeholder="Name">
            @error('name')
                <span class="invalid-feedback" role="alert">
                    <strong>{{ $message }}</strong>
                </span>
            @enderror
        </div>

        <div class="form-group">
            <label for="email">Email</label>
            <input id="email" type="email" class="form-control @error('email') is-invalid @enderror" name="email" value="{{ old('email',$user->email) }}" required>
            @error('email')
                <span class="invalid-feedback" role="alert">
                    <strong>{{ $message }}</strong>
                </span>
            @enderror
        </div>
        <div class="form-group">
            <label for="usertype">User Type</label>
            <select name="usertype" class="form-control text-capitalize @error('usertype') is-invalid @enderror">
                @foreach($usertypes as $usertyp)
                    <option class="text-capitalize" value="{{$usertyp->id}}" @if(old('usertype', $user->user_type->id) == $usertyp->id) selected @endif>{{$usertyp->name}}</option>
                @endforeach
            </select>
            @error('usertype')
                <span class="invalid-feedback" role="alert">
                    <strong>{{ $message }}</strong>
                </span>
            @enderror
        </div>

        <div class="form-group">
            <label for="password">Your Password</label>
            <input id="password" type="password" class="form-control @error('password') is-invalid @enderror" name="password" required autocomplete="password">
            @error('password')
                <span class="invalid-feedback" role="alert">
                    <strong>{{ $message }}</strong>
                </span>
            @enderror
        </div>

        <div class="col-sm-auto">
            <button type="submit" class="btn btn-primary px-4 full-width-sm">Submit</button>
        </div>
    </form>          
@endsection