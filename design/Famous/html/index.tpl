<!DOCTYPE html>
<html>
<head>
	<!-- Basic page needs -->
	<base href="{$config->root_url}/"/>
	<meta charset="utf-8">
	<!--[if IE]>
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<![endif]-->
	<meta http-equiv="x-ua-compatible" content="ie=edge">
	<title>{$meta_title|escape}</title>
	<meta name="description" content="{$meta_description|escape}" />
	<meta name="keywords"    content="{$meta_keywords|escape}" />
	<meta name="google" content="clean template, electronics Store, html5, electronics template, makeup store, modern, multipurpose store, electronics shop, commerce, ecommerce, electronics, electronics theme, megamenu, modern, retail, store"/>

	{* Канонический адрес страницы *}
	{if isset($canonical)}<link rel="canonical" href="{$config->root_url}{$canonical}"/>{/if}

	<!-- Mobile specific metas  -->
	<meta name="viewport" content="width=device-width, initial-scale=1">

	<!-- Favicons Icon -->
	<link rel="shortcut icon" type="image/x-icon" href="design/{$settings->theme|escape}/images/favicon.ico">

	<!-- CSS Style -->
	<link rel="stylesheet" href="design/{$settings->theme|escape}/style.css">
	<link rel="stylesheet" href="design/{$settings->theme|escape}/js/alertifyjs/css/alertify.min.css">
	<link rel="stylesheet" href="design/{$settings->theme|escape}/js/alertifyjs/css/themes/default.min.css">
</head>
{if $module == 'MainView'}
<body class="cms-index-index cms-home-page">
{else}
<body class="shop_grid_page">
{/if}


<!--[if lt IE 8]>
<p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
<![endif]-->

<!-- mobile menu -->
<div id="mobile-menu">
	<ul>
		{if $categories}
		{foreach  item=c from=$categories}
		{* Показываем только видимые категории *}
		{if $c->visible}
		<li><a href="catalog/{$c->url}">{$c->name}</a>
			<ul>
				{if $c->subcategories}
				{foreach item=cat from=$c->subcategories}
				{* Показываем только видимые категории *}
				{if $cat->visible}
				<li><a href="{$cat->url}" class="">{$cat->name}</a>
					<ul>
						{if $cat->subcategories}
						{foreach $cat->subcategories as $cat3}
						{* Показываем только видимые категории *}
						{if $cat3->visible}
						<li><a href="{$cat3->url}">{$cat3->name}</a></li>
						{/if}
						{/foreach}
						{/if}
					</ul>
				</li>
				{/if}
				{/foreach}
				{/if}
			</ul>
		</li>
		{/if}
		{/foreach}
		{/if}

		{foreach $pages as $p}
		{* Выводим только страницы из первого меню *}
		{if $p->menu_id == 1}
		<li><a href="{$p->url}">{$p->name|escape}</a></li>
		{/if}
		{/foreach}
	</ul>
</div>
<!-- end mobile menu -->
<div id="page">

	<!-- Header -->
	<header>
		<div class="header-container">
			<div class="header-top">
				<div class="container">
					<div class="row">
						<div class="col-sm-4 col-md-4 col-xs-12">
							<!-- Default Welcome Message -->
							<div class="welcome-msg hidden-xs hidden-sm">Default welcome msg! </div>
							<!-- Language &amp; Currency wrapper -->
							<div class="language-currency-wrapper">
								<div class="inner-cl">
									<div class="block block-language form-language">
										<div class="lg-cur"><span><img src="design/{$settings->theme|escape}/images/flag-default.jpg" alt="French"><span class="lg-fr">French</span><i class="fa fa-angle-down"></i></span></div>
										<ul>
											<li><a class="selected" href="#"><img src="design/{$settings->theme|escape}/images/flag-english.jpg" alt="english"><span>English</span></a></li>
											<li><a href="#"><img src="design/{$settings->theme|escape}/images/flag-default.jpg" alt="French"><span>French</span></a></li>
											<li><a href="#"><img src="design/{$settings->theme|escape}/images/flag-german.jpg" alt="German"><span>German</span></a></li>
											<li><a href="#"><img src="design/{$settings->theme|escape}/images/flag-brazil.jpg" alt="Brazil"><span>Brazil</span></a></li>
											<li><a href="#"><img src="design/{$settings->theme|escape}/images/flag-chile.jpg" alt="Chile"><span>Chile</span></a></li>
											<li><a href="#"><img src="design/{$settings->theme|escape}/images/flag-spain.jpg" alt="Spain"><span>Spain</span></a></li>
										</ul>
									</div>
									<div class="block block-currency">
										<div class="item-cur"><span>USD</span><i class="fa fa-angle-down"></i></div>
										<ul>
											<li><a href="#"><span class="cur_icon">€</span>EUR</a></li>
											<li><a href="#"><span class="cur_icon">¥</span>JPY</a></li>
											<li><a class="selected" href="#"><span class="cur_icon">$</span>USD</a></li>
										</ul>
									</div>
								</div>
							</div>
						</div>

						<!-- top links -->
						<div class="headerlinkmenu col-md-8 col-sm-8 col-xs-12"> <span class="phone  hidden-xs hidden-sm">Call Us: +123.456.789</span>
							<ul class="links">
								<li class="hidden-xs"><a title="Help Center" href="#"><span>Help Center</span></a></li>
								<li><a title="Store Locator" href="#"><span>Store Locator</span></a></li>
								<li><a title="Checkout" href="checkout.html"><span>Checkout</span></a></li>
								<li>
									<div class="dropdown"><a class="current-open" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" href="#"><span>My Account</span> <i class="fa fa-angle-down"></i></a>
										<ul class="dropdown-menu" role="menu">
											<li><a href="account_page.html">Account</a></li>
											<li><a href="wishlist.html">Wishlist</a></li>
											<li><a href="orders_list.html">Order Tracking</a></li>
											<li><a href="about_us.html">About us</a></li>
											<li class="divider"></li>
											<li><a href="account_page.html">Log In</a></li>
											<li><a href="register_page.html">Register</a></li>
										</ul>
									</div>
								</li>
								<li><a title="login" href="account_page.html"><span>Login</span></a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
			<!-- header inner -->
			<div class="header-inner">
				<div class="container">
					<div class="row">
						<div class="col-sm-3 col-xs-12 jtv-logo-block">

							<!-- Header Logo -->
							<div class="logo"><a title="e-commerce" href="/"><img alt="Famous" title="Famous" src="design/{$settings->theme|escape}/images/logo.png"></a> </div>
						</div>
						<div class="col-xs-12 col-sm-5 col-md-6 jtv-top-search">

							<!-- Search -->

							<div class="top-search">
								<div id="search">
									<form>
										<div class="input-group">
											<select class="cate-dropdown hidden-xs hidden-sm" name="category_id">
												<option>All Categories</option>
												<option>women</option>
												<option>&nbsp;&nbsp;&nbsp;Chair </option>
												<option>&nbsp;&nbsp;&nbsp;Decoration</option>
												<option>&nbsp;&nbsp;&nbsp;Lamp</option>
												<option>&nbsp;&nbsp;&nbsp;Handbags </option>
												<option>&nbsp;&nbsp;&nbsp;Sofas </option>
												<option>&nbsp;&nbsp;&nbsp;Essential </option>
												<option>Men</option>
												<option>Electronics</option>
												<option>&nbsp;&nbsp;&nbsp;Mobiles </option>
												<option>&nbsp;&nbsp;&nbsp;Music &amp; Audio </option>
											</select>
											<input type="text" class="form-control" placeholder="Enter your search..." name="search">
											<button class="btn-search" type="button"><i class="fa fa-search"></i></button>
										</div>
									</form>
								</div>
							</div>

							<!-- End Search -->

						</div>
						<div class="col-xs-12 col-sm-4 col-md-3 top-cart">
							<div class="link-wishlist" id="compare_informer">
								{include file='compare_informer.tpl'}
							</div>
							<!-- top cart -->
							<div class="top-cart-contain">
								<div class="mini-cart" id="cart_informer">
									{* Обновляемая аяксом корзина должна быть в отдельном файле *}
									{include file='cart_informer.tpl'}
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</header>
	<!-- end header -->
	<nav>
		<div class="container">
			<div class="row">
				<div class="mm-toggle-wrap">
					<div class="mm-toggle"><i class="fa fa-align-justify"></i> </div>
					<span class="mm-label">Категории</span> </div>
				<div class="col-md-3 col-sm-3 mega-container hidden-xs">
					<div class="navleft-container">
						<div class="mega-menu-title">
							<h3><span>Категории</span></h3>
						</div>
						<!-- Shop by category -->
						<div class="mega-menu-category">
							<ul class="nav">
							{if $categories}
								{foreach  item=c from=$categories}
								{* Показываем только видимые категории *}
									{if $c->visible}
									<li><a href="catalog/{$c->url}">{$c->name}</a>
										<div class="wrap-popup">
											<div class="popup">
												<div class="row">
													{if $c->subcategories}
													{$arrSubCat = array_chunk($c->subcategories,ceil(count($c->subcategories)/3))}
													{for $foo=0 to count($arrSubCat)-1}
														<div class="col-md-4 col-sm-6 {if $foo > 0}has-sep{/if}">
														{foreach item=cat from=$arrSubCat[$foo]}
														{* Показываем только видимые категории *}
														{if $cat->visible}
															<a href="catalog/{$cat->url}"><h3>{$cat->name}</h3></a>
															<ul class="nav">
																{if $cat->subcategories}
																{foreach $cat->subcategories as $cat3}
																{* Показываем только видимые категории *}
																{if $cat3->visible}
																<li class=""><a href="catalog/{$cat3->url}">{$cat3->name}</a></li>
																{/if}
																{/foreach}
																{/if}
															</ul>
															<br>
														{/if}
														{/foreach}
														</div>
													{/for}
													{/if}
												</div>
											</div>
										</div>
									</li>
									{/if}
								{/foreach}
							{/if}
							</ul>
						</div>
					</div>
				</div>
				<div class="col-md-9 col-sm-9 jtv-megamenu">
					<div class="mtmegamenu">
						<ul class="hidden-xs">
							{foreach $pages as $p}
							{* Выводим только страницы из первого меню *}
								{if $p->menu_id == 1}
								<li class="mt-root {if $page && $page->id == $p->id}selected{/if}">
									<div class="mt-root-item">
										<a href="{$p->url}">
											<div class="title title_font">
												<span class="title-text">{$p->name|escape}</span>
											</div>
										</a>
									</div>
								</li>
								{/if}
							{/foreach}
						</ul>
					</div>
				</div>
			</div>
		</div>
	</nav>
	{$content}
	<!-- Footer -->
	<footer>
		<div class="container">
			<div class="row">
				<div class="col-sm-6 col-md-3 col-xs-12">
					<div class="footer-logo"><a href="index.html"><img src="design/{$settings->theme|escape}/images/footer-logo.png" alt="fotter logo"></a> </div>
					<p>Lorem Ipsum is simply dummy text of the print and typesetting industry. Ut pharetra augue nec augue. Nam elit agna, endrerit sit amet.</p>
					<div class="social">
						<ul class="inline-mode">
							<li class="social-network fb"><a title="Connect us on Facebook" href="#"><i class="fa fa-facebook"></i></a></li>
							<li class="social-network googleplus"><a title="Connect us on Google+" href="#"><i class="fa fa-google"></i></a></li>
							<li class="social-network tw"><a title="Connect us on Twitter" href="#"><i class="fa fa-twitter"></i></a></li>
							<li class="social-network linkedin"><a title="Connect us on Pinterest" href="#"><i class="fa fa-pinterest"></i></a></li>
							<li class="social-network rss"><a title="Connect us on Instagram" href="#"><i class="fa fa-instagram"></i></a></li>
						</ul>
					</div>
				</div>
				<div class="col-sm-6 col-md-2 col-xs-12 collapsed-block">
					<div class="footer-links">
						<h5 class="links-title">Information<a class="expander visible-xs" href="#TabBlock-1">+</a></h5>
						<div class="tabBlock" id="TabBlock-1">
							<ul class="list-links list-unstyled">
								<li><a href="#s">Delivery Information</a></li>
								<li><a href="#">Discount</a></li>
								<li><a href="sitemap.html">Sitemap</a></li>
								<li><a href="#">Privacy Policy</a></li>
								<li><a href="faq.html">FAQs</a></li>
								<li><a href="#">Terms &amp; Condition</a></li>
							</ul>
						</div>
					</div>
				</div>
				<div class="col-sm-3 col-md-2 col-xs-12 collapsed-block">
					<div class="footer-links">
						<h5 class="links-title">Insider<a class="expander visible-xs" href="#TabBlock-3">+</a></h5>
						<div class="tabBlock" id="TabBlock-3">
							<ul class="list-links list-unstyled">
								<li><a href="sitemap.html"> Sites Map </a></li>
								<li><a href="#">News</a></li>
								<li><a href="#">Trends</a></li>
								<li><a href="about_us.html">About Us</a></li>
								<li><a href="contact_us.html">Contact Us</a></li>
								<li><a href="#">My Orders</a></li>
							</ul>
						</div>
					</div>
				</div>
				<div class="col-sm-3 col-md-2 col-xs-12 collapsed-block">
					<div class="footer-links">
						<h5 class="links-title">Service<a class="expander visible-xs" href="#TabBlock-4">+</a></h5>
						<div class="tabBlock" id="TabBlock-4">
							<ul class="list-links list-unstyled">
								<li><a href="account_page.html">Account</a></li>
								<li><a href="wishlist.html">Wishlist</a></li>
								<li><a href="shopping_cart.html">Shopping Cart</a></li>
								<li><a href="#">Return Policy</a></li>
								<li><a href="#">Special</a></li>
								<li><a href="#">Lookbook</a></li>
							</ul>
						</div>
					</div>
				</div>
				<div class="col-sm-6 col-md-3 col-xs-12 collapsed-block">
					<div class="footer-links">
						<h5 class="links-title">Working hours<a class="expander visible-xs" href="#TabBlock-5">+</a></h5>
						<div class="tabBlock" id="TabBlock-5">
							<div class="footer-description">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod.</div>
							<div class="footer-description"> <b>Monday-Friday:</b> 8.30 a.m. - 5.30 p.m.<br>
								<b>Saturday:</b> 9.00 a.m. - 2.00 p.m.<br>
								<b>Sunday:</b> Closed </div>
							<div class="payment">
								<ul>
									<li><a href="#"><img title="Visa" alt="Visa" src="design/{$settings->theme|escape}/images/visa.png"></a></li>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="footer-coppyright">
			<div class="container">
				<div class="row">
					<div class="col-sm-6 col-xs-12 coppyright"> Copyright © 2017 <a href="#"> Famous </a>. All Rights Reserved. </div>
					<div class="col-sm-6 col-xs-12">
						<ul class="footer-company-links">
							<li> <a href="about_us.html">About Famous</a> </li>
							<li> <a href="#">Careers</a> </li>
							<li> <a href="#">Privacy Policy</a> </li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</footer>
	<a href="#" id="back-to-top" title="Back to top"><i class="fa fa-angle-up"></i></a>

	<!-- End Footer -->
</div>

<!-- JS -->

<!-- jquery js -->
<script src="design/{$settings->theme|escape}/js/jquery.min.js"></script>

<!-- bootstrap js -->
<script src="design/{$settings->theme|escape}/js/bootstrap.min.js"></script>

<!-- owl.carousel.min js -->
<script src="design/{$settings->theme|escape}/js/owl.carousel.min.js"></script>

<!--cloud-zoom js -->
<script src="design/{$settings->theme|escape}/js/cloud-zoom.js"></script>

<!-- flexslider js -->
<script src="design/{$settings->theme|escape}/js/jquery.flexslider.js"></script>

<!-- jquery.mobile-menu js -->
<script src="design/{$settings->theme|escape}/js/mobile-menu.js"></script>

<!--jquery-ui.min js -->
<script src="design/{$settings->theme|escape}/js/jquery-ui.js"></script>

<!-- alertify js -->
<script src="design/{$settings->theme|escape}/js/alertifyjs/alertify.min.js"></script>

<!-- main js -->
<script src="design/{$settings->theme|escape}/js/main.js"></script>

<!-- countdown js -->
<script src="design/{$settings->theme|escape}/js/countdown.js"></script>

<!-- Slider Js -->
<script src="design/{$settings->theme|escape}/js/revolution-slider.js"></script>

<script src="design/{$settings->theme|escape}/js/filter.min.js"></script>


<script>
	jQuery(document).ready(function(){
		jQuery('#rev_slider_4').show().revolution({
			dottedOverlay: 'none',
			delay: 5000,
			startwidth: 865,
			startheight: 450,

			hideThumbs: 200,
			thumbWidth: 200,
			thumbHeight: 50,
			thumbAmount: 2,

			navigationType: 'thumb',
			navigationArrows: 'solo',
			navigationStyle: 'round',

			touchenabled: 'on',
			onHoverStop: 'on',

			swipe_velocity: 0.7,
			swipe_min_touches: 1,
			swipe_max_touches: 1,
			drag_block_vertical: false,

			spinner: 'spinner0',
			keyboardNavigation: 'off',

			navigationHAlign: 'center',
			navigationVAlign: 'bottom',
			navigationHOffset: 0,
			navigationVOffset: 20,

			soloArrowLeftHalign: 'left',
			soloArrowLeftValign: 'center',
			soloArrowLeftHOffset: 20,
			soloArrowLeftVOffset: 0,

			soloArrowRightHalign: 'right',
			soloArrowRightValign: 'center',
			soloArrowRightHOffset: 20,
			soloArrowRightVOffset: 0,

			shadow: 0,
			fullWidth: 'on',
			fullScreen: 'off',

			stopLoop: 'off',
			stopAfterLoops: -1,
			stopAtSlide: -1,

			shuffle: 'off',

			autoHeight: 'off',
			forceFullWidth: 'on',
			fullScreenAlignForce: 'off',
			minFullScreenHeight: 0,
			hideNavDelayOnMobile: 1500,

			hideThumbsOnMobile: 'off',
			hideBulletsOnMobile: 'off',
			hideArrowsOnMobile: 'off',
			hideThumbsUnderResolution: 0,


			hideSliderAtLimit: 0,
			hideCaptionAtLimit: 0,
			hideAllCaptionAtLilmit: 0,
			startWithSlide: 0,
			fullScreenOffsetContainer: ''
		});
	});
</script>
</body>
</html>
