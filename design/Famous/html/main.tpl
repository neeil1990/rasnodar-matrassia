{* Главная страница магазина *}

{* Для того чтобы обернуть центральный блок в шаблон, отличный от index.tpl *}
{* Укажите нужный шаблон строкой ниже. Это работает и для других модулей *}
{$wrapper = 'index.tpl' scope=parent}

{* Канонический адрес страницы *}
{$canonical="" scope=parent}

{include file='slider.tpl'}

<!-- service section -->
{include file='service.tpl'}


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

{* Тело страницы *}
{$page->body}