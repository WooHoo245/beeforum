@extends('layouts.app')

@section('content')
<link href="{{ url('/vendor/devdojo/chatter/assets/css/bee.css') }}" rel="stylesheet">

<div class="container">
    <div class="row">
        <div class="col-md-10 col-md-offset-1">
            <img src="/uploads/avatars/{{ $user->avatar }}" style="width:150px; height:150px; float:left; border-radius:50%; margin-right:25px; margin-top: 10px;">
            <p class="name_style">{{ $user->name }}</p>
			<h4>{{ $user->email }}</h4>
            <form enctype="multipart/form-data" action="/profile" method="POST">
                <label>@lang('chatter::intro.update_ava')</label>
                <input type="file" name="avatar">
                <input type="hidden" name="_token" value="{{ csrf_token() }}">
                <input type="submit" class="pull-right btn btn-sm btn-primary">
            </form>
			<div class="profile_title">@lang('chatter::intro.your_post') <i class="fas fa-kiwi-bird"></i></div>
        </div>

    </div>
</a>
</div>
@endsection