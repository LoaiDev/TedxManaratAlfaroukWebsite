@extends('layouts.app')

@section('content')
    <h1>Create User Type</h1>
    <form method="POST" action="{{ route('usertype.store') }}">
        @csrf
        <div class="form-group">
            <label for="name">Name</label>
            <input id="name" type="text" class="form-control @error('name') is-invalid @enderror" name="name" value="{{ old('name','') }}" required placeholder="Name">
            @error('name')
                <span class="invalid-feedback" role="alert">
                    <strong>{{ $message }}</strong>
                </span>
            @enderror
        </div>

        <div class="form-group">
            <label for="parent">Parent</label>
            <select name="parent" class="form-control @error('parent') is-invalid @enderror">
                <option class="text-capitalize" value="0" @if(old('parent', 0) == 0) selected @endif>None</option>
                @foreach($usertypes as $usertyp)
                    <option class="text-capitalize" value="{{$usertyp->id}}" @if(old('parent', 0) == $usertyp->id) selected @endif>{{$usertyp->name}}</option>
                @endforeach
            </select>
            @error('parent')
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

        <div class="col-sm-auto row justify-content-start">
            <button type="submit" class="btn btn-primary px-4 full-width-sm">Submit</button>
        </div>
    </form>
@endsection