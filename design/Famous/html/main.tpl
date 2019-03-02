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
    {include file='main_tabs.tpl'}
</div>


<div class="inner-box">
    <div class="container">
        <div class="row">
            <!-- Banner -->
            <div class="col-md-3 top-banner hidden-sm">
                <div class="jtv-banner3">
                    {include file='banner_1.tpl'}
                </div>
            </div>
            <!-- Best Sale -->
            <div class="col-sm-12 col-md-9 jtv-best-sale special-pro">
                <div class="jtv-best-sale-list">
                    <div class="wpb_wrapper">
                        <div class="best-title text-left">
                            <h2>Акции и скидки</h2>
                        </div>
                    </div>
                    <div class="slider-items-products">
                        <div id="jtv-best-sale-slider" class="product-flexslider">
                            <div class="slider-items">
                                {* Акционные товары *}
                                {get_discounted_products var=discounted_products limit=8}
                                {if $discounted_products}
                                    {foreach $discounted_products as $product}
                                        {include file='product_block.tpl'}
                                    {/foreach}
                                {/if}
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
            {include file='banner_2.tpl'}
        </div>
    </div>
</div>

<!-- Blog -->
<section class="blog-post-wrapper">
    <div class="container">
        <div class="best-title text-left">
            <h2>Новости</h2>
        </div>
        <div class="slider-items-products">
            <div id="latest-news-slider" class="product-flexslider hidden-buttons">
                <div class="slider-items slider-width-col6">
                    {* Выбираем в переменную $last_posts последние записи *}
                    {get_posts var=last_posts limit=10}
                    {foreach $last_posts as $post}
                    <div class="item">
                        <div class="blog-box">
                            <a href="blog/{$post->url}">
                                {if preg_match('/src="(.*?)"/i', $post->annotation, $matches)}
                                <img class="primary-img" src="{$matches[1]}" alt="{$post->name|escape}">
                                {/if}
                            </a>
                            <div class="blog-btm-desc">
                                <div class="blog-top-desc">
                                    <h5><a href="blog/{$post->url}">{$post->name|escape}</a></h5>
                                    <div class="jtv-entry-meta">
                                        <i class="fa fa-calendar"></i> <strong>{$post->date|date}</strong>
                                    </div>
                                </div>
                                <p>{$post->annotation|truncate:200|strip_tags}</p>
                                <a class="read-more" href="blog/{$post->url}"> Подробнее</a> </div>
                        </div>
                    </div>
                    {/foreach}
                </div>
            </div>
        </div>
    </div>
</section>


<!-- our clients Slider -->

<div class="container">
    <div class="row">
        <div class="col-md-12 col-xs-12">
            <div class="our-clients">
                <div class="slider-items-products">
                    <div id="our-clients-slider" class="product-flexslider hidden-buttons">
                        <div class="slider-items slider-width-col6">
                            {* Выбираем в переменную $all_brands все бренды *}
                            {get_brands var=all_brands}
                            {if $all_brands}
                                {foreach $all_brands as $b}
                                    <div class="item">
                                        <a href="brands/{$b->url}">
                                            <img src="{$config->brands_images_dir}{$b->image}" alt="{$b->name|escape}">
                                        </a>
                                    </div>
                                {/foreach}
                            {/if}
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
                        {include file='banner_3.tpl'}
                    </div>
                    <div class="col-xs-12 col-sm-6 col-lg-6 col-md-6">
                        {include file='banner_4.tpl'}
                    </div>
                </div>
            </div>
            <div class="col-xs-12 col-sm-4 col-lg-4 col-md-4">
                {include file='banner_5.tpl'}
            </div>
        </div>
    </div>
</section>
<!-- BANNER-AREA-END -->

<div class="main container">
    <div class="about-page">
        {* Тело страницы *}
        {$page->body}
    </div>
</div>

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

