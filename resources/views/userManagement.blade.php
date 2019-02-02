@extends('layouts.app')
@section('content')
<br>

@if(Session::has('message'))
<p id="sessionMassage" class="alert {{ Session::get('alert-class', 'alert-info') }}">{{ Session::get('message') }}</p>
@endif
			<div class="content">
				<div class="search">
					<input id="userSearch" type="text" placeholder="{{__('table.searchPlaceholder')}}" class="form_con" name="">
					<button class="search_btn" type="submit"><i class="fa fa-search"></i></button>
				</div>
				<div class="filter_amount btn_top user_top">
					<button id="addUserbtn" class="btn_save addUserbtn">{{__('table.addUser')}}</button>
				</div>
			</div>
			<div class="data_list">
				<table id="users" class="table listtable test nowrap">
			        <thead>
			            <tr>
			                <th>{{__('table.firstName')}}</th>
			                <th class="no-sort">{{__('table.lastName')}}</th>
			                <th class="no-sort">{{__('table.email')}}</th>
			                <th class="no-sort">{{__('table.userName')}}</th>
			                <th class="no-sort">{{__('table.createdAt')}}</th>
			                <th class="no-sort">{{__('table.UserGroup')}}</th>
			                <th class="no-sort">{{__('table.active')}}</th>
			                <th class="no-sort text-center">{{__('table.action')}}</th>
			            </tr>
			        </thead>
			        <tbody>
			        	@foreach($data as $data)
			            <tr>
			                <td>{{$data->first_name}}</td>
			                <td>{{$data->last_name}}</td>
			                <td>{{$data->email}}</td>
			                <td>{{$data->username}}</td>
			                <td>{{$data->created_at}}</td>
			                <td>{{$data->role_name}}</td>
			                <td>{{$data->active==11? "active" : "NED"}}</td>
			                <td class="text-center bgwhite">
			                	<div class="checkInfolink">
									<a class="edit" id="editUserPop" href="#" data-info="{{$data->id}},{{$data->first_name}},{{$data->last_name}},{{$data->email}},{{$data->username}},{{$data->created_at}},{{$data->role_name}},{{$data->active}},{{$data->role_id}}">
			                			<i class="fa fa-pencil-square-o"></i>
			                		</a>
								</div>
								<div class="checkInfolink">
									<form class="del" action="{{url('user/delete',['id' => $data->id])}}" method="post">
									 {{csrf_field()}}
										 {{ method_field("DELETE") }}
									<button onclick="return confirm('Are you sure?')" class="delete delete-modal" type="submit" style="border: none;background-color: white">
			                			<i class="fa fa-trash"></i>
			                		</button></form>
								</div>
			                </td>
			            </tr>
			            @endforeach
			           
			        </tbody>
			    </table>
			</div>
		@include('table')


@endsection