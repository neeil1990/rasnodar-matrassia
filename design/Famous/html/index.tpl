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
</head>

<body class="cms-index-index cms-home-page">

<!--[if lt IE 8]>
<p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
<![endif]-->

<!-- mobile menu -->
<div id="mobile-menu">
	<ul>
		<li><a href="index.html" class="home1">Home Pages</a>
			<ul>
				<li><a href="index.html"><span>Home Version 1</span></a></li>
				<li><a href="version2/index.html"><span>Home Version 2</span></a></li>
				<li><a href="version3/index.html"><span>Home Version 3</span></a></li>
				<li><a href="version1rtl/index.html"><span>Home Version 1 RTL</span></a></li>
			</ul>
		</li>
		<li><a href="#">Pages</a>
			<ul>
				<li><a href="#">Shop Pages </a>
					<ul>
						<li><a href="shop_grid.html"><span>Grid View Category Page</span></a></li>
						<li><a href="shop_grid_full_width.html"><span>Grid View Full Width</span></a></li>
						<li><a href="shop_list.html"><span>List View Category Page</span></a></li>
						<li><a href="single_product.html"><span>Full Width Product Page</span> </a></li>
						<li><a href="single_product_sidebar.html"><span>Product Page With Sidebar</span> </a></li>
						<li><a href="single_product_magnify_zoom.html"><span>Product Page Magnify Zoom</span> </a></li>
						<li><a href="shopping_cart.html"><span>Shopping Cart</span></a></li>
						<li><a href="wishlist.html"><span>Wishlist</span></a></li>
						<li><a href="compare.html"><span>Compare Products</span></a></li>
						<li><a href="checkout.html"><span>Checkout</span></a></li>
						<li><a href="sitemap.html"><span>Sitemap</span></a></li>
					</ul>
				</li>
				<li><a href="#">Static Pages </a>
					<ul>
						<li><a href="about_us.html"><span>About Us</span></a></li>
						<li><a href="contact_us.html"><span>Contact Us</span></a></li>
						<li><a href="orders_list.html"><span>Orders List</span></a></li>
						<li><a href="order_details.html"><span>Order Details</span></a></li>
						<li><a href="404error.html"><span>404 Error</span> </a></li>
						<li><a href="faq.html"><span>FAQ Page</span></a></li>
						<li><a href="manufacturers.html"><span>Manufacturers</span></a></li>
						<li><a href="quick_view.html"><span>Quick View</span></a></li>
						<li><a href="dashboard.html"><span>Account Dashboard</span></a></li>
						<li><a href="shortcodes.html"><span>Shortcodes</span> </a></li>
						<li><a href="typography.html"><span>Typography</span></a></li>
					</ul>
				</li>
				<li><a href="#"> Blog Pages </a>
					<ul>
						<li><a href="blog_right_sidebar.html">Blog – Right sidebar </a></li>
						<li><a href="blog_left_sidebar.html">Blog – Left sidebar </a></li>
						<li><a href="blog_full_width.html">Blog - Full width</a></li>
						<li><a href="blog_single_post.html">Single post </a></li>
					</ul>
				</li>
			</ul>
		</li>
		<li><a href="blog.html">Blog</a>
			<ul>
				<li><a href="blog_right_sidebar.html"> Blog – Right Sidebar </a></li>
				<li><a href="blog_left_sidebar.html"> Blog – Left Sidebar </a></li>
				<li><a href="blog_full_width.html"> Blog – Full-Width </a></li>
				<li><a href="blog_single_post.html"> Single post </a></li>
			</ul>
		</li>
		<li><a href="shop_grid.html">TV &amp; Audio</a>
			<ul>
				<li><a href="#" class="">Headphones</a>
					<ul>
						<li><a href="shop_grid.html">Receivers &amp; Amplifier</a></li>
						<li><a href="shop_grid.html">Speakers Sports</a></li>
						<li><a href="shop_grid.html">Audio CD Players</a></li>
						<li><a href="shop_grid.html">Turntables</a></li>
					</ul>
				</li>
				<li><a href="#">Gaming Headsets</a>
					<ul>
						<li><a href="shop_grid.html">Accessories</a></li>
						<li><a href="shop_grid.html">Smart TVs Speakers</a></li>
						<li><a href="shop_grid.html">Cases &amp; Towers</a></li>
						<li><a href="shop_grid.html">Gaming Budget</a></li>
					</ul>
				</li>
				<li><a href="#">Home Theater Systems</a>
					<ul>
						<li><a href="shop_grid.html">TV &amp; Cinema</a></li>
						<li><a href="shop_grid.html">4K Ultra HD TVs</a></li>
						<li><a href="shop_grid.html">Curved TVs</a></li>
						<li><a href="shop_grid.html">Sound Bars</a></li>
					</ul>
				</li>
				<li><a href="#">Appliances</a>
					<ul>
						<li><a href="shop_grid.html">Refrigerators</a></li>
						<li><a href="shop_grid.html">Vacuum Cleaners</a></li>
						<li><a href="shop_grid.html">Irons &amp; Steamers</a></li>
						<li><a href="shop_grid.html">Washers Dryers</a></li>
					</ul>
				</li>
				<li><a href="#">Photo &amp; Camera</a>
					<ul>
						<li><a href="shop_grid.html">Cameras Digital SLR</a></li>
						<li><a href="shop_grid.html">Instant Film</a></li>
						<li><a href="shop_grid.html">Point &amp; Shoot</a></li>
						<li><a href="shop_grid.html">Waterproof</a></li>
					</ul>
				</li>
				<li><a href="#">Accessories</a>
					<ul>
						<li><a href="shop_grid.html">Cables Chargers</a></li>
						<li><a href="shop_grid.html">Cases Backup Battery</a></li>
						<li><a href="shop_grid.html">Meebox</a></li>
						<li><a href="shop_grid.html">Packs Screen</a></li>
					</ul>
				</li>
			</ul>
		</li>
		<li><a href="shop_grid.html">Apple Store</a>
			<ul>
				<li><a href="#" class="">Notebooks</a>
					<ul class="level1">
						<li><a href="shop_grid.html">Gradiente</a></li>
						<li><a href="shop_grid.html">Samsung</a></li>
						<li><a href="shop_grid.html">Toshiba</a></li>
						<li><a href="shop_grid.html">Nintendo DS</a></li>
					</ul>
				</li>
				<li><a href="#">Televisions</a>
					<ul class="level1">
						<li><a href="shop_grid.html">LCD Televisions</a></li>
						<li><a href="shop_grid.html">Projection Televisions</a></li>
						<li><a href="shop_grid.html">Play Stations</a></li>
						<li><a href="shop_grid.html">Video Accessories</a></li>
					</ul>
				</li>
				<li><a href="#" class="">Computer</a>
					<ul class="level1">
						<li><a href="shop_grid.html">Laptop</a></li>
						<li><a href="shop_grid.html">Mobile Electronics</a></li>
						<li><a href="shop_grid.html">Movies &amp; Music</a></li>
						<li><a href="shop_grid.html">Audio &amp; Video</a></li>
					</ul>
				</li>
				<li><a href="#">Home Theater</a>
					<ul class="level1">
						<li><a href="shop_grid.html">LED &amp; LCD TVs</a></li>
						<li><a href="shop_grid.html">Smart TVs</a></li>
						<li><a href="shop_grid.html">Speakers Sound Bars</a></li>
						<li><a href="shop_grid.html">Audio CD Players</a></li>
					</ul>
				</li>
				<li><a href="#">Accesories</a>
					<ul class="level1">
						<li><a href="shop_grid.html">Theater Systems</a></li>
						<li><a href="shop_grid.html">Turntables</a></li>
						<li><a href="shop_grid.html">Laptops Bags</a></li>
						<li><a href="shop_grid.html">Gaming Headsets</a></li>
					</ul>
				</li>
			</ul>
		</li>
		<li><a href="shop_grid.html">Photo &amp; Camera</a>
			<ul>
				<li><a href="shop_grid.html">Mobiles</a>
					<ul>
						<li><a href="shop_grid.html">iPhone</a></li>
						<li><a href="shop_grid.html">Samsung</a></li>
						<li><a href="shop_grid.html">Nokia</a></li>
						<li><a href="shop_grid.html">Sony</a></li>
					</ul>
				</li>
				<li><a href="shop_grid.html" class="">Music &amp; Audio</a>
					<ul>
						<li><a href="shop_grid.html">Audio</a></li>
						<li><a href="shop_grid.html">Cameras</a></li>
						<li><a href="shop_grid.html">Appling</a></li>
						<li><a href="shop_grid.html">Car Music</a></li>
					</ul>
				</li>
				<li><a href="shop_grid.html">Accessories</a>
					<ul>
						<li><a href="shop_grid.html">Home &amp; Office</a></li>
						<li><a href="shop_grid.html">TV &amp; Home Theater</a></li>
						<li><a href="shop_grid.html">Phones &amp; Radio</a></li>
						<li><a href="shop_grid.html">All Electronics</a></li>
					</ul>
				</li>
			</ul>
		</li>
		<li><a href="shop_grid.html">Smartphone</a></li>
		<li><a href="shop_grid.html">Games &amp; Video</a></li>
		<li><a href="shop_grid.html">Laptop</a></li>
		<li><a href="shop_grid.html">Accessories</a></li>
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
							<div class="logo"><a title="e-commerce" href="index.html"><img alt="Famous" title="Famous" src="design/{$settings->theme|escape}/images/logo.png"></a> </div>
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
							<div class="link-wishlist"> <a href="#"> <i class="icon-heart icons"></i><span> Wishlist</span></a> </div>
							<!-- top cart -->
							<div class="top-cart-contain">
								<div class="mini-cart">
									<div data-toggle="dropdown" data-hover="dropdown" class="basket dropdown-toggle"> <a href="#">
											<div class="cart-icon"><i class="icon-basket-loaded icons"></i><span class="cart-total">3</span></div>
											<div class="shoppingcart-inner hidden-xs"><span class="cart-title">My Cart</span> </div>
										</a></div>
									<div>
										<div class="top-cart-content">
											<div class="block-subtitle hidden">Recently added items</div>
											<ul id="cart-sidebar" class="mini-products-list">
												<li class="item odd"> <a href="shopping_cart.html" title="Product title here" class="product-image"><img src="design/{$settings->theme|escape}/images/products/product-1.jpg" alt="html Template" width="65"></a>
													<div class="product-details"> <a href="#" title="Remove This Item" class="remove-cart"><i class="pe-7s-trash"></i></a>
														<p class="product-name"><a href="shopping_cart.html">Lorem ipsum dolor sit amet Consectetur</a> </p>
														<strong>1</strong> x <span class="price">$20.00</span> </div>
												</li>
												<li class="item even"> <a href="shopping_cart.html" title="Product title here" class="product-image"><img src="design/{$settings->theme|escape}/images/products/product-1.jpg" alt="html Template" width="65"></a>
													<div class="product-details"> <a href="#" title="Remove This Item" class="remove-cart"><i class="pe-7s-trash"></i></a>
														<p class="product-name"><a href="shopping_cart.html">Consectetur utes anet adipisicing elit</a> </p>
														<strong>1</strong> x <span class="price">$230.00</span> </div>
												</li>
												<li class="item last odd"> <a href="shopping_cart.html" title="Product title here" class="product-image"><img src="design/{$settings->theme|escape}/images/products/product-1.jpg" alt="html Template" width="65"></a>
													<div class="product-details"> <a href="#" title="Remove This Item" class="remove-cart"><i class="pe-7s-trash"></i></a>
														<p class="product-name"><a href="shopping_cart.html">Sed do eiusmod tempor incidist</a> </p>
														<strong>2</strong> x <span class="price">$420.00</span> </div>
												</li>
											</ul>
											<div class="top-subtotal">Subtotal: <span class="price">$520.00</span></div>
											<div class="actions">
												<button class="btn-checkout" type="button" onClick="location.href='checkout.html'"><i class="fa fa-check"></i><span>Checkout</span></button>
												<button class="view-cart" type="button" onClick="location.href='shopping_cart.html'"><i class="fa fa-shopping-cart"></i><span>View Cart</span></button>
											</div>
										</div>
									</div>
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
					<span class="mm-label">All Categories</span> </div>
				<div class="col-md-3 col-sm-3 mega-container hidden-xs">
					<div class="navleft-container">
						<div class="mega-menu-title">
							<h3><span>All Categories</span></h3>
						</div>

						<!-- Shop by category -->
						<div class="mega-menu-category">
							<ul class="nav">

								<li><a href="#">TV &amp; Audio</a>
									<div class="wrap-popup">
										<div class="popup">
											<div class="row">
												<div class="col-md-4 col-sm-6">
													<h3>Televisions</h3>
													<ul class="nav">
														<li><a href="shop_grid.html">LCD Televisions</a></li>
														<li><a href="shop_grid.html">Projection Televisions</a></li>
														<li><a href="shop_grid.html">Play Stations</a></li>
														<li><a href="shop_grid.html">Televisions/Tube</a></li>
													</ul>
													<br>
													<h3>Headphones</h3>
													<ul class="nav">
														<li><a href="shop_grid.html">Players &amp; Video</a></li>
														<li><a href="shop_grid.html">Party Dresses</a></li>
														<li><a href="shop_grid.html">Midi Dresses</a></li>
														<li><a href="shop_grid.html">Strapless Dresses</a></li>
														<li><a href="shop_grid.html">Day Dresses</a></li>
													</ul>
												</div>
											</div>
										</div>
									</div>
								</li>

							</ul>
						</div>
					</div>
				</div>
				<div class="col-md-9 col-sm-9 jtv-megamenu">
					<div class="mtmegamenu">
						<ul class="hidden-xs">
							<li class="mt-root">
								<div class="mt-root-item">
									<a href="about_us.html">
										<div class="title title_font">
											<span class="title-text">Главная</span>
										</div>
									</a>
								</div>
							</li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</nav>

	<!-- Slideshow  -->
	<div class="main-slider" id="home">
		<div class="container">
			<div class="row">
				<div class="col-md-3 col-sm-3 col-xs-12 banner-left hidden-xs">
					<img src="design/{$settings->theme|escape}/images/banner-left.jpg" alt="banner">
				</div>
				<div class="col-sm-9 col-md-9 col-lg-9 col-xs-12 jtv-slideshow">
					<div id="jtv-slideshow">
						<div id='rev_slider_4_wrapper' class='rev_slider_wrapper fullwidthbanner-container' >
							<div id='rev_slider_4' class='rev_slider fullwidthabanner'>
								<ul>

									<li data-transition='fade' data-slotamount='7' data-masterspeed='1000' data-thumb=''>
										<img src='design/{$settings->theme|escape}/images/slider/slide-1.jpg' data-bgposition='left top' data-bgfit='cover' data-bgrepeat='no-repeat' alt="banner"/>
									</li>

								</ul>
								<div class="tp-bannertimer"></div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- service section -->
	<div class="jtv-service-area">
		<div class="container">
			<div class="row">
				<div class="col col-md-3 col-sm-6 col-xs-12">
					<div class="block-wrapper ship">
						<div class="text-des">
							<div class="icon-wrapper"><i class="fa fa-paper-plane"></i></div>
							<div class="service-wrapper">
								<h3>World-Wide Shipping</h3>
								<p>On order over $99</p>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- All products-->

	<div class="container">
		<div class="home-tab">
			<div class="tab-title text-left">
				<h2>Best selling</h2>
				<ul class="nav home-nav-tabs home-product-tabs">
					<li class="active"><a href="#computer" data-toggle="tab" aria-expanded="false">Computer</a></li>
					<li><a href="#smartphone" data-toggle="tab" aria-expanded="false">Smartphone</a></li>
				</ul>
			</div>
			<div id="productTabContent" class="tab-content">
				<div class="tab-pane active in" id="computer">
					<div class="featured-pro">
						<div class="slider-items-products">
							<div id="computer-slider" class="product-flexslider hidden-buttons">
								<div class="slider-items slider-width-col4">
									<div class="product-item">
										<div class="item-inner">
											<div class="product-thumbnail">
												<div class="icon-new-label new-left">New</div>
												<div class="pr-img-area"> <a title="Product title here" href="single_product.html">
														<figure> <img class="first-img" src="design/{$settings->theme|escape}/images/products/product-1.jpg" alt="HTML template"> <img class="hover-img" src="design/{$settings->theme|escape}/images/products/product-1.jpg" alt="HTML template"></figure>
													</a> </div>
												<div class="pr-info-area">
													<div class="pr-button">
														<div class="mt-button add_to_wishlist"> <a href="wishlist.html"> <i class="fa fa-heart-o"></i> </a> </div>
														<div class="mt-button add_to_compare"> <a href="compare.html"> <i class="fa fa-link"></i> </a> </div>
														<div class="mt-button quick-view"> <a href="quick_view.html"> <i class="fa fa-search"></i> </a> </div>
													</div>
												</div>
											</div>
											<div class="item-info">
												<div class="info-inner">
													<div class="item-title"> <a title="Product title here" href="single_product.html">Product title here </a> </div>
													<div class="item-content">
														<div class="rating"> <i class="fa fa-star"></i> <i class="fa fa-star"></i> <i class="fa fa-star-o"></i> <i class="fa fa-star-o"></i> <i class="fa fa-star-o"></i> </div>
														<div class="item-price">
															<div class="price-box"> <span class="regular-price"> <span class="price">$125.00</span> </span> </div>
														</div>
														<div class="pro-action">
															<button type="button" class="add-to-cart"><span> Add to Cart</span> </button>
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="tab-pane fade" id="smartphone">
					<div class="top-sellers-pro">
						<div class="slider-items-products">
							<div id="smartphone-slider" class="product-flexslider hidden-buttons">
								<div class="slider-items slider-width-col4 ">
									<div class="product-item">
										<div class="item-inner">
											<div class="product-thumbnail">
												<div class="icon-sale-label sale-left">Sale</div>
												<div class="icon-new-label new-right">New</div>
												<div class="pr-img-area"> <a title="Product title here" href="single_product.html">
														<figure> <img class="first-img" src="design/{$settings->theme|escape}/images/products/product-1.jpg" alt="HTML template"> <img class="hover-img" src="design/{$settings->theme|escape}/images/products/product-1.jpg" alt="HTML template"></figure>
													</a> </div>
												<div class="pr-info-area">
													<div class="pr-button">
														<div class="mt-button add_to_wishlist"> <a href="wishlist.html"> <i class="fa fa-heart-o"></i> </a> </div>
														<div class="mt-button add_to_compare"> <a href="compare.html"> <i class="fa fa-link"></i> </a> </div>
														<div class="mt-button quick-view"> <a href="quick_view.html"> <i class="fa fa-search"></i> </a> </div>
													</div>
												</div>
											</div>
											<div class="item-info">
												<div class="info-inner">
													<div class="item-title"> <a title="Product title here" href="single_product.html">Product title here </a> </div>
													<div class="item-content">
														<div class="rating"> <i class="fa fa-star"></i> <i class="fa fa-star"></i> <i class="fa fa-star"></i> <i class="fa fa-star-o"></i> <i class="fa fa-star-o"></i> </div>
														<div class="item-price">
															<div class="price-box"> <span class="regular-price"> <span class="price">$125.00</span> </span> </div>
														</div>
														<div class="pro-action">
															<button type="button" class="add-to-cart"><span> Add to Cart</span> </button>
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="inner-box">
		<div class="container">
			<div class="row">
				<!-- Banner -->
				<div class="col-md-3 top-banner hidden-sm">
					<div class="jtv-banner3">
						<div class="jtv-banner3-inner"><a href="#"><img src="design/{$settings->theme|escape}/images/sub1.jpg" alt="HTML template"></a>
							<div class="hover_content">
								<div class="hover_data">
									<div class="title"> Big Sale </div>
									<div class="desc-text">Up to 55% off</div>
									<span>Camera, Laptop & Mobile</span>
									<p><a href="#" class="shop-now">Get it now!</a></p>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- Best Sale -->
				<div class="col-sm-12 col-md-9 jtv-best-sale special-pro">
					<div class="jtv-best-sale-list">
						<div class="wpb_wrapper">
							<div class="best-title text-left">
								<h2>Special Offers</h2>
							</div>
						</div>
						<div class="slider-items-products">
							<div id="jtv-best-sale-slider" class="product-flexslider">
								<div class="slider-items">
									<div class="product-item">
										<div class="item-inner">
											<div class="product-thumbnail">
												<div class="icon-new-label new-left">New</div>
												<div class="pr-img-area"> <a title="Product title here" href="single_product.html">
														<figure> <img class="first-img" src="design/{$settings->theme|escape}/images/products/product-1.jpg" alt="HTML template"> <img class="hover-img" src="design/{$settings->theme|escape}/images/products/product-1.jpg" alt="HTML template"></figure>
													</a> </div>
												<div class="pr-info-area">
													<div class="pr-button">
														<div class="mt-button add_to_wishlist"> <a href="wishlist.html"> <i class="fa fa-heart-o"></i> </a> </div>
														<div class="mt-button add_to_compare"> <a href="compare.html"> <i class="fa fa-link"></i> </a> </div>
														<div class="mt-button quick-view"> <a href="quick_view.html"> <i class="fa fa-search"></i> </a> </div>
													</div>
												</div>
											</div>
											<div class="item-info">
												<div class="info-inner">
													<div class="item-title"> <a title="Product title here" href="single_product.html">Product title here </a> </div>
													<div class="item-content">
														<div class="rating"> <i class="fa fa-star"></i> <i class="fa fa-star"></i> <i class="fa fa-star-o"></i> <i class="fa fa-star-o"></i> <i class="fa fa-star-o"></i> </div>
														<div class="item-price">
															<div class="price-box"> <span class="regular-price"> <span class="price">$125.00</span> </span> </div>
														</div>
														<div class="pro-action">
															<button type="button" class="add-to-cart"><span> Add to Cart</span> </button>
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="container">
		<div class="row">
			<div class="daily-deal-section">
				<!-- daily deal section-->
				<div class="col-md-7 daily-deal">
					<h3 class="deal-title">Deal of the day</h3>
					<div class="title-divider"><span></span></div>
					<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec vel massa eget ante tincidunt vestibulum. Aenean vel metus magna. Mauris nec. Nunc congue ac libero ut lacinia. In ultrices
						elementum ipsum, in tempus enim accumsan.. </p>
					<div class="hot-offer-text">Summer Sale <span>2017</span></div>
					<div class="box-timer"> <span class="des-hot-deal">Hurry up! Special offer</span>
						<div class="time" data-countdown="countdown" data-date="09-30-2019-10-20-50"></div>
						<a href="#" class="link">Shopping Now</a> </div>
				</div>
				<div class="col-md-5 hot-pr-img-area">
					<div id="daily-deal-slider" class="product-flexslider hidden-buttons">
						<div class="slider-items slider-width-col4 ">
							<div class="pr-img-area"> <a title="Product title here" href="single_product.html">
									<figure> <img class="first-img" src="design/{$settings->theme|escape}/images/products/product-1.jpg" alt="HTML template"></figure>
								</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="banner-section">
		<div class="container">
			<div class="row">
				<div class="col-sm-6">
					<figure> <a href="#" target="_self" class="image-wrapper"><img src="design/{$settings->theme|escape}/images/banner-laptop.jpg" alt="banner laptop"></a></figure>
				</div>
				<div class="col-sm-6">
					<figure> <a href="#" target="_self" class="image-wrapper"><img src="design/{$settings->theme|escape}/images/banner-mob.jpg" alt="banner moblie"></a></figure>
				</div>
			</div>
		</div>
	</div>

	<!-- Blog -->
	<section class="blog-post-wrapper">
		<div class="container">
			<div class="best-title text-left">
				<h2>The Latest News</h2>
			</div>
			<div class="slider-items-products">
				<div id="latest-news-slider" class="product-flexslider hidden-buttons">
					<div class="slider-items slider-width-col6">

						<div class="item">
							<div class="blog-box"> <a href="blog_single_post.html"> <img class="primary-img" src="design/{$settings->theme|escape}/images/blog-img1.jpg" alt="HTML template"></a>
								<div class="blog-btm-desc">
									<div class="blog-top-desc">
										<div class="blog-date"> 28 Jan 2017 </div>
										<h5><a href="blog_single_post.html">Lorem ipsum dolor sit</a></h5>
										<div class="jtv-entry-meta"> <i class="fa fa-user-o"></i> <strong>Admin</strong> <a href="#"><i class="fa fa-commenting-o"></i> <strong>15 Comments</strong></a></div>
									</div>
									<p>Aliquam erat volutpat. Duis ac turpis. Donec sit amet eros. Lorem ipsum dolor sit amet, Mauris fermentum dictum.</p>
									<a class="read-more" href="blog_single_post.html"> Read More</a> </div>
							</div>
						</div>

					</div>
				</div>
			</div>
		</div>
	</section>
	<div class="featured-products">
		<div class="container">
			<div class="row">

				<!-- Best Sale -->
				<div class="col-sm-12 col-md-4 jtv-best-sale">
					<div class="jtv-best-sale-list">
						<div class="wpb_wrapper">
							<div class="best-title text-left">
								<h2>Top Rate</h2>
							</div>
						</div>
						<div class="slider-items-products">
							<div id="toprate-products-slider" class="product-flexslider">
								<div class="slider-items">
									<ul class="products-grid">
										<li class="item">
											<div class="item-inner">
												<div class="item-img"> <a class="product-image" title="Retis lapen casen" href="product_detail.html"> <img alt="HTML template" src="design/{$settings->theme|escape}/images/products/product-1.jpg"> </a> </div>
												<div class="item-info">
													<div class="info-inner">
														<div class="item-title"> <a title="Product title here" href="single_product.html">Product title here </a> </div>
														<div class="rating"> <i class="fa fa-star"></i> <i class="fa fa-star"></i> <i class="fa fa-star"></i> <i class="fa fa-star"></i> <i class="fa fa-star-o"></i> </div>
														<div class="item-price">
															<div class="price-box"> <span class="regular-price"> <span class="price">$125.00</span> </span> </div>
														</div>
														<div class="pro-action">
															<button type="button" class="add-to-cart"><i class="fa fa-shopping-cart"></i></button>
														</div>
														<div class="pr-button-hover">
															<div class="mt-button add_to_wishlist"> <a href="wishlist.html"> <i class="fa fa-heart-o"></i> </a> </div>
															<div class="mt-button add_to_compare"> <a href="compare.html"> <i class="fa fa-link"></i> </a> </div>
														</div>
													</div>
												</div>
											</div>
										</li>
									</ul>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- Banner -->
				<div class="col-md-4 top-banner hidden-sm">
					<div class="jtv-banner3">
						<div class="jtv-banner3-inner"><a href="#"><img src="design/{$settings->theme|escape}/images/sub1a.jpg" alt="HTML template"></a>
							<div class="hover_content">
								<div class="hover_data bottom">
									<div class="desc-text">Top Brands at discount prices </div>
									<div class="title">Electronisc Sale</div>
									<span>Smartphone & Cell phone</span>
									<p><a href="#" class="shop-now">Get it now!</a></p>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="col-sm-12 col-md-4 jtv-best-sale">
					<div class="jtv-best-sale-list">
						<div class="wpb_wrapper">
							<div class="best-title text-left">
								<h2>New products</h2>
							</div>
						</div>
						<div class="slider-items-products">
							<div id="new-products-slider" class="product-flexslider">
								<div class="slider-items">
									<ul class="products-grid">
										<li class="item">
											<div class="item-inner">
												<div class="item-img"> <a class="product-image" title="Retis lapen casen" href="product_detail.html"> <img alt="HTML template" src="design/{$settings->theme|escape}/images/products/product-1.jpg"> </a> </div>
												<div class="item-info">
													<div class="info-inner">
														<div class="item-title"> <a title="Product title here" href="single_product.html">Product title here </a> </div>
														<div class="rating"> <i class="fa fa-star-o"></i> <i class="fa fa-star-o"></i> <i class="fa fa-star-o"></i> <i class="fa fa-star-o"></i> <i class="fa fa-star-o"></i> </div>
														<div class="item-price">
															<div class="price-box"> <span class="regular-price"> <span class="price">$125.00</span> </span> </div>
														</div>
														<div class="pro-action">
															<button type="button" class="add-to-cart"><i class="fa fa-shopping-cart"></i></button>
														</div>
														<div class="pr-button-hover">
															<div class="mt-button add_to_wishlist"> <a href="wishlist.html"> <i class="fa fa-heart-o"></i> </a> </div>
															<div class="mt-button add_to_compare"> <a href="compare.html"> <i class="fa fa-link"></i> </a> </div>
														</div>
													</div>
												</div>
											</div>
										</li>
									</ul>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- our clients Slider -->

	<div class="container">
		<div class="row">
			<div class="col-md-12 col-xs-12">
				<div class="our-clients">
					<div class="slider-items-products">
						<div id="our-clients-slider" class="product-flexslider hidden-buttons">
							<div class="slider-items slider-width-col6">
								<div class="item"><a href="#"><img src="design/{$settings->theme|escape}/images/brand1.png" alt="Image"></a> </div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- BANNER-AREA-START -->
	<section class="banner-area">
		<div class="container">
			<div class="row">
				<div class="col-xs-12 col-sm-8 col-md-8 col-lg-8">
					<div class="row">
						<div class="col-xs-12 col-sm-6 col-lg-6 col-md-6">
							<div class="banner-block"> <a href="#"> <img src="design/{$settings->theme|escape}/images/banner-sunglasses.jpg" alt="banner sunglasses"> </a>
								<div class="text-des-container">
									<div class="text-des">
										<h2>Galaxy Note 5</h2>
										<p>Fall Phone 25% off Colorful designs!</p>
									</div>
								</div>
							</div>
						</div>
						<div class="col-xs-12 col-sm-6 col-lg-6 col-md-6">
							<div class="banner-block"> <a href="#"> <img src="design/{$settings->theme|escape}/images/banner-kids.jpg" alt="banner kids"> </a>
								<div class="text-des-container">
									<div class="text-des">
										<h2>Music & Sound</h2>
										<p>For the littlest people</p>
									</div>
								</div>
							</div>
							<div class="banner-block"> <a href="#"> <img src="design/{$settings->theme|escape}/images/banner-women.jpg" alt="banner women"> </a>
								<div class="text-des-container">
									<div class="text-des">
										<h2>Best Quality Music</h2>
										<p>Modern Headphones designs shop!</p>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="col-xs-12 col-sm-4 col-lg-4 col-md-4">
					<div class="banner-block"> <a href="#"> <img src="design/{$settings->theme|escape}/images/banner-arrival.jpg" alt="banner arrival"> </a>
						<div class="text-des-container">
							<div class="text-des">
								<h2>special collection</h2>
								<p>Sale upto 50% off on selected items</p>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- BANNER-AREA-END -->

	<div class="footer-newsletter">
		<div class="container">
			<div class="row">
				<!-- Newsletter -->
				<div class="col-md-6 col-sm-6">
					<form id="newsletter-validate-detail" method="post" action="#">
						<h3>Join Our Newsletter</h3>
						<div class="title-divider"><span></span></div>
						<span class="sub-text">Enter your emali address to</span>
						<p class="sub-title text-center">Get 25% off</p>
						<span class="sub-text1">On your next Purchase</span>
						<div class="newsletter-inner">
							<input class="newsletter-email" name='Email' placeholder='Enter Your Email'/>
							<button class="button subscribe" type="submit" title="Subscribe">Subscribe</button>
						</div>
					</form>
				</div>
				<!-- Customers Box -->
				<div class="col-sm-6 col-xs-12 testimonials">
					<div class="page-header">
						<h2>What Our Customers Say</h2>
						<div class="title-divider"><span></span></div>
					</div>
					<div class="slider-items-products">
						<div id="testimonials-slider" class="product-flexslider hidden-buttons home-testimonials">
							<div class="slider-items slider-width-col4 ">
								<div class="holder">
									<blockquote>Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad
										minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip volutpat.
										Integer rutrum ante eu lacus.Vestibulum libero nisl, porta vel.</blockquote>
									<div class="thumb"> <img src="design/{$settings->theme|escape}/images/testimonials-img3.jpg" alt="testimonials img"> </div>
									<div class="holder-info"> <strong class="name">John Doe</strong> <strong class="designation">CEO, Company</strong></div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
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

<!-- jquery.mobile-menu js -->
<script src="design/{$settings->theme|escape}/js/mobile-menu.js"></script>

<!--jquery-ui.min js -->
<script src="design/{$settings->theme|escape}/js/jquery-ui.js"></script>

<!-- main js -->
<script src="design/{$settings->theme|escape}/js/main.js"></script>

<!-- countdown js -->
<script src="design/{$settings->theme|escape}/js/countdown.js"></script>

<!-- Slider Js -->
<script src="design/{$settings->theme|escape}/js/revolution-slider.js"></script>
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
