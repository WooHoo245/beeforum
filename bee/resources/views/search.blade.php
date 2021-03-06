@extends('layouts.app')
@section(Config::get('chatter.yields.head'))
    <link href="{{ url('/vendor/devdojo/chatter/assets/css/bee.css') }}" rel="stylesheet">
    <link href="{{ url('/vendor/devdojo/chatter/assets/vendor/spectrum/spectrum.css') }}" rel="stylesheet">
	<link href="{{ url('/vendor/devdojo/chatter/assets/css/chatter.css') }}" rel="stylesheet">
	<link href="{{ url('/vendor/devdojo/chatter/assets/css/simplemde.min.css') }}" rel="stylesheet">
@stop

@section('content')
<p class='title'>@lang('chatter::intro.result_below')<p>
<div id="chatter" class="chatter_home">
	
	@if(config('chatter.errors'))
		@if(Session::has('chatter_alert'))
			<div class="chatter-alert alert alert-{{ Session::get('chatter_alert_type') }}">
				<div class="container">
					<strong><i class="chatter-alert-{{ Session::get('chatter_alert_type') }}"></i> {{ Config::get('chatter.alert_messages.' . Session::get('chatter_alert_type')) }}</strong>
					{{ Session::get('chatter_alert') }}
					<i class="chatter-close"></i>
				</div>
			</div>
			<div class="chatter-alert-spacer"></div>
		@endif

		@if (count($errors) > 0)
			<div class="chatter-alert alert alert-danger">
				<div class="container">
					<p><strong><i class="chatter-alert-danger"></i> @lang('chatter::alert.danger.title')</strong> @lang('chatter::alert.danger.reason.errors')</p>
					<ul>
						@foreach ($errors->all() as $error)
							<li>{{ $error }}</li>
						@endforeach
					</ul>
				</div>
			</div>
		@endif
	@endif

	<div class="container chatter_container">

	    <div class="row">

	    	<div class="col-md-3 left-column">
	    		<!-- SIDEBAR -->
	    		<div class="chatter_sidebar">
					<a href="/{{ Config::get('chatter.routes.home') }}"><i class="chatter-bubble"></i> @lang('chatter::messages.discussion.all')</a>
         {!! $categoriesMenu !!}
					
					<div class="brief_story">
					    <div id="testimonials">
	               <ul>
		           <li>
			<p class="testimonial-body">Chúc các bạn sinh viên Khoa Thư viện - Thông tin học một mùa giáng sinh an lành, và một năm 2021 tràn đầy may mắn nhé &ang;3 </p>
			<div class="testimonial-profile">
				<div class="img-cover"></div>
				<svg><circle></svg>
				<img src="/vendor/devdojo/chatter/assets/images/thay_hiep.jpg" alt="">
				<span>Hiệp Nguyễn</span>
				<br><small data-social="facebook">Dec 24th, 2020</small>
		  	   </div>
		      </li><li>
			<p class="testimonial-body">Các bạn sinh viên khi đi thi nhớ mang theo thể sinh viên, bút, thước và một tinh thần lạc quan và tỉnh táo nhé! Good luck to all of you.</p>
			<div class="testimonial-profile">
				<div class="img-cover"></div>
				<svg><circle></svg>
				<img src="/vendor/devdojo/chatter/assets/images/thay_tri.png" alt="">
				<span>NDM Trí</span>
				<br><small data-social="twitter">Jan 5th, 2021</small>
			</div>
		</li><li>
			<p class="testimonial-body">Chúc các Thầy/Cô và các bạn sinh viên khoa Thư viện - Thông tin học một năm mới tràn đầy niềm vui, năng lượng và gặt được nhiều thành công trong hành trình mới.</p>
			<div class="testimonial-profile">
				<div class="img-cover"></div>
				<svg><circle></svg>
				<img src="/vendor/devdojo/chatter/assets/images/co_huyen.jpg" alt="">
				<span>Huyền Ngô</span>
				<br><small data-social="google">Jan 10, 2021</small>
			</div>
		</li><li>
			<p class="testimonial-body">Chúc các bạn sinh viên của chúng ta một năm mới bình an, vạn sự như ý. Học hành luôn được điểm cao. ^-^</p>
			<div class="testimonial-profile">
				<div class="img-cover"></div>
				<svg><circle></svg>
				<img src="/vendor/devdojo/chatter/assets/images/thay_cong.jpg" alt="">
				<span>Tấn Công Nguyễn</span>
				<br><small data-social="facebook">Jan 15, 2021</small>
			</div>
		</li>
	</ul>
</div>
					</div>
					
				</div>
				<!-- END SIDEBAR -->
	    	</div>
	        <div class="col-md-9 right-column">
	        	<div class="panel">
		        	<ul class="discussions">
		        		@foreach($search_discussion as $discussion)
				        	<li>
				        		<a class="discussion_list" href="/{{ Config::get('chatter.routes.home') }}/{{ Config::get('chatter.routes.discussion') }}/{{ $discussion->category->slug }}/{{ $discussion->slug }}">
					        		<div class="chatter_avatar">
					        			@if(Config::get('chatter.user.avatar_image_database_field'))

					        				<?php $db_field = Config::get('chatter.user.avatar_image_database_field'); ?>

					        				<!-- If the user db field contains http:// or https:// we don't need to use the relative path to the image assets -->
					        				@if( (substr($discussion->user->{$db_field}, 0, 7) == 'http://') || (substr($discussion->user->{$db_field}, 0, 8) == 'https://') )
					        					<img src="{{ $discussion->user->{$db_field}  }}">
					        				@else
					        					<img src="{{ Config::get('chatter.user.relative_url_to_image_assets') . $discussion->user->{$db_field}  }}">
					        				@endif

					        			@else

					        				<span class="chatter_avatar_circle" style="background-color:#<?= \DevDojo\Chatter\Helpers\ChatterHelper::stringToColorCode($discussion->user->{Config::get('chatter.user.database_field_with_user_name')}) ?>">
					        					{{ strtoupper(substr($discussion->user->{Config::get('chatter.user.database_field_with_user_name')}, 0, 1)) }}
					        				</span>

					        			@endif
					        		</div>

					        		<div class="chatter_middle">
					        			<h3 class="chatter_middle_title">{{ $discussion->title }} <div class="chatter_cat" style="background-color:{{ $discussion->category->color }}">{{ $discussion->category->name }}</div></h3>
					        			<span class="chatter_middle_details">@lang('chatter::messages.discussion.posted_by') <span data-href="/user">{{ ucfirst($discussion->user->{Config::get('chatter.user.database_field_with_user_name')}) }}</span> {{ \Carbon\Carbon::createFromTimeStamp(strtotime($discussion->created_at))->diffForHumans() }}</span>
					        			@if($discussion->post[0]->markdown)
					        				<?php $discussion_body = GrahamCampbell\Markdown\Facades\Markdown::convertToHtml( $discussion->post[0]->body ); ?>
					        			@else
					        				<?php $discussion_body = $discussion->post[0]->body; ?>
					        			@endif
					        			<p>{{ substr(strip_tags($discussion_body), 0, 200) }}@if(strlen(strip_tags($discussion_body)) > 200){{ '...' }}@endif</p>
					        		</div>

					        		<div class="chatter_right">

					        			<div class="chatter_count"><i class="chatter-bubble"></i> {{ $discussion->postsCount[0]->total }}</div>
					        		</div>

					        		<div class="chatter_clear"></div>
					        	</a>
				        	</li>
			        	@endforeach
		        	</ul>
	        	</div>

	        </div>
	    </div>
	</div>

	<div id="new_discussion">


    	<div class="chatter_loader dark" id="new_discussion_loader">
		    <div></div>
		</div>

    	<form id="chatter_form_editor" action="/{{ Config::get('chatter.routes.home') }}/{{ Config::get('chatter.routes.discussion') }}" method="POST">
        	<div class="row">
	        	<div class="col-md-7">
		        	<!-- TITLE -->
	                <input type="text" class="form-control" id="title" name="title" placeholder="@lang('chatter::messages.editor.title')" value="{{ old('title') }}" >
	            </div>

		        <div class="col-md-1">
		        	<i class="chatter-close"></i>
		        </div>
	        </div><!-- .row -->

            <!-- BODY -->
        	<div id="editor">
					<label id="tinymce_placeholder">@lang('chatter::messages.editor.tinymce_placeholder')</label>
    				<textarea id="body" class="richText" name="body" placeholder="">{{ old('body') }}</textarea>
    		</div>

            <input type="hidden" name="_token" id="csrf_token_field" value="{{ csrf_token() }}">

            <div id="new_discussion_footer">
            	<input type='text' id="color" name="color" /><span class="select_color_text">@lang('chatter::messages.editor.select_color_text')</span>
            	<button id="submit_discussion" class="btn btn-success pull-right"><i class="chatter-new"></i> @lang('chatter::messages.discussion.create')</button>
            	<a href="/{{ Config::get('chatter.routes.home') }}" class="btn btn-default pull-right" id="cancel_discussion">@lang('chatter::messages.words.cancel')</a>
            	<div style="clear:both"></div>
            </div>
        </form>

    </div><!-- #new_discussion -->

</div>

	<input type="hidden" id="chatter_tinymce_toolbar" value="{{ Config::get('chatter.tinymce.toolbar') }}">
	<input type="hidden" id="chatter_tinymce_plugins" value="{{ Config::get('chatter.tinymce.plugins') }}">

<input type="hidden" id="current_path" value="{{ Request::path() }}">

@endsection

@section(Config::get('chatter.yields.footer'))

	<script src="{{ url('/vendor/devdojo/chatter/assets/vendor/tinymce/tinymce.min.js') }}"></script>
	<script src="{{ url('/vendor/devdojo/chatter/assets/js/tinymce.js') }}"></script>
	<script>
		var my_tinymce = tinyMCE;
		$('document').ready(function(){
			$('#tinymce_placeholder').click(function(){
				my_tinymce.activeEditor.focus();
			});
		});
	</script>


<script src="{{ url('/vendor/devdojo/chatter/assets/vendor/spectrum/spectrum.js') }}"></script>
<script src="{{ url('/vendor/devdojo/chatter/assets/js/chatter.js') }}"></script>
<script>
	$('document').ready(function(){

		$('.chatter-close, #cancel_discussion').click(function(){
			$('#new_discussion').slideUp();
		});
		$('#new_discussion_btn').click(function(){
			@if(Auth::guest())
				window.location.href = "{{ route('login') }}";
			@else
				$('#new_discussion').slideDown();
				$('#title').focus();
			@endif
		});

		$("#color").spectrum({
		    color: "#333639",
		    preferredFormat: "hex",
		    containerClassName: 'chatter-color-picker',
		    cancelText: '',
    		chooseText: 'close',
		    move: function(color) {
				$("#color").val(color.toHexString());
			}
		});

		@if (count($errors) > 0)
			$('#new_discussion').slideDown();
			$('#title').focus();
		@endif


	});
</script>
@stop
