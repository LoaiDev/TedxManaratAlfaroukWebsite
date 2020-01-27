@extends('layouts.app')
@section('content')
<div class="container-fluid">
    <div class="row justify-content-center">
        <h1 class="pb-2">All UserTypes</h1>
    </div>
    <div class="col-xs-12 row justify-content-start form-group">
      <a href="/usertype/create" class="full-width btn btn-lg btn-success">Create New User Type</a>
  </div>
</div>
<table class="table table-striped text-capitalize">
    <thead class="thead-red">
      <tr>
        <th scope="col">#</th>
        <th scope="col">Name</th>
        <th scope="col">Parent</th>
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
      @foreach ($usertypes as $usertype)
          <tr>
          <th scope="row">{{$count}}</th>
          <td><a class="text-capitalize" href="/usertype/{{$usertype->id}}">{{$usertype->name}}</a></td>
          <td>{{$allusertypes->find($usertype->parent_id)->name ?? 'None'}}</td>
        @php
          $count++;
        @endphp
      @endforeach
    </tbody>
  </table>
  {{ $usertypes->links() }}
  
@endsection