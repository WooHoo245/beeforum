<link href="{{ url('/vendor/devdojo/chatter/assets/css/bee.css') }}" rel="stylesheet">
<footer class="new_footer_area bg_color">
            <div class="new_footer_top">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-3 col-md-6">
                            <div class="f_widget company_widget wow fadeInLeft" data-wow-delay="0.2s" style="visibility: visible; animation-delay: 0.2s; animation-name: fadeInLeft;">
                                <h3 class="f-title-17">@lang('chatter::intro.share_email')</h3>
                                <p>@lang('chatter::intro.share_decrib')</p>
                                <form action="#" class="f_subscribe_two mailchimp" method="post" novalidate="true" _lpchecked="1">
                                    <input type="text" name="EMAIL" class="form-control memail" placeholder="@lang('chatter::intro.enter_email')">
                                    <button class="btn btn_get btn_get_two" type="submit">@lang('chatter::intro.sub')</button>
                                    <p class="mchimp-errmessage" style="display: none;"></p>
                                    <p class="mchimp-sucmessage" style="display: none;"></p>
                                </form>
                            </div>
                        </div>
                        <div class="col-lg-3 col-md-6">
                            <div class="f_widget about-widget pl_70 wow fadeInLeft" data-wow-delay="0.4s" style="visibility: visible; animation-delay: 0.4s; animation-name: fadeInLeft;">
                                <h3 class="f_size_18">BeeForum</h3>
                                <ul class="list-unstyled f_list">
                                    <li><a href="#">WooHoo</a></li>
                                    <li><a href="#">Xí Muội</a></li>
                                    <li><a href="#">Minh Thương</a></li>
                                </ul>
                            </div>
                        </div>
                        <div class="col-lg-3 col-md-6">
                            <div class="f_widget about-widget pl_70 wow fadeInLeft" data-wow-delay="0.6s" style="visibility: visible; animation-delay: 0.6s; animation-name: fadeInLeft;">
                                <h3 class="f-title-20">@lang('chatter::intro.help')</h3>
                                <ul class="list-unstyled f_list">
                                    <li><a href="#">@lang('chatter::intro.faq')</a></li>
                                    <li><a href="#">@lang('chatter::intro.teco')</a></li>
                                    <li><a href="#">@lang('chatter::intro.policy')</a></li>
                                    <li><a href="#">@lang('chatter::intro.privacy')</a></li>
									<div class="changeLaguage">		
                                    <a href="{!! route('change-language', ['en']) !!}">@lang('chatter::intro.ta')</a> 
                                  | <a href="{!! route('change-language', ['vi']) !!}">@lang('chatter::intro.tv')</a>
							         </div>
                                </ul>
                            </div>
                        </div>
                        <div class="col-lg-3 col-md-6">
                            <div class="f_widget social-widget pl_70 wow fadeInLeft" data-wow-delay="0.8s" style="visibility: visible; animation-delay: 0.8s; animation-name: fadeInLeft;">
                                <h3 class="f-title-19">@lang('chatter::intro.contact_via')</h3>
                                <div class="f_social_icon">
                                    <a href="#" class="fab fa-facebook"></a>
                                    <a href="#" class="fas fa-envelope-open-text"></a>
                                    <a href="#" class="fas fa-paper-plane"></a>
                                    <a href="#" class="fab fa-whatsapp"></a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="footer_bg">
                    <div class="footer_bg_one"></div>
                    <div class="footer_bg_two"></div>
                </div>
            </div>
            <div class="footer_bottom">
                <div class="container">
                    <div class="row align-items-center">
                        <div class="col-lg-6 col-sm-7">
                            <p>Copyright &copy; 2020 LIS

                        | Designed by <a rel="nofollow" href="">BeeTeam</a></p>
						</div>
                    </div>
                </div>
            </div>
        </footer>