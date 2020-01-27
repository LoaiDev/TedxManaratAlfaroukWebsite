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
        if (isset($_GET['page'])) {
          $page = $_GET['page'];
        }
        else {
          $page = 1;
        }
          $count=($page*10)-9;
      @endphp
      @foreach ($users as $user)
          <tr>
          <th scope="row">{{$count}}</th>
          <td><a class="text-capitalize" href="/user/{{$user->id}}">{{$user->name}}</a></td>
          <td>{{$user->email}}</td>
          <td class="text-capitalize">{{$user->user_types->first()->name ?? 'None'}}</td>
          </tr>
        @php
          $count++;
        @endphp
      @endforeach
    </tbody>
  </table>
  {{ $users->links() }}
  
@endsection