@extends('layouts.app')
@section('content')
<div class="container-fluid">
    <div class="row justify-content-center">
        <h1>All Users</h1>
    </div>
</div>
<table class="table table-striped">
    <thead class="thead-red">
      <tr>
        <th scope="col">#</th>
        <th scope="col">Name</th>
        <th scope="col">Email</th>
        <th scope="col">Types</th>
      </tr>
    </thead>
    <tbody>
      @php
          $count=1;
      @endphp
      @foreach ($users as $user)
          <tr>
          <th scope="row">{{$count}}</th>
          <td><a class="text-capitalize" href="/user/{{$user->id}}">{{$user->name}}</a></td>
          <td>{{$user->email}}</td>
          <td>{{$user->user_types->first()->name}}</td>
          </tr>
        @php
          $count++;
        @endphp
      @endforeach
    </tbody>
  </table>
  
@endsection