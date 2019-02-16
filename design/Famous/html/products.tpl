{* Список товаров *}

{* Канонический адрес страницы *}
{if $category && $brand}
    {$canonical="/catalog/{$category->url}/{$brand->url}" scope=parent}
{elseif $category}
    {$canonical="/catalog/{$category->url}" scope=parent}
{elseif $brand}
    {$canonical="/brands/{$brand->url}" scope=parent}
{elseif $keyword}
    {$canonical="/products?keyword={$keyword|escape}" scope=parent}
{else}
    {$canonical="/products" scope=parent}
{/if}

<!-- Breadcrumbs -->
<div class="breadcrumbs">
    <div class="container">
        <div class="row">
            <div class="col-xs-12">
                <ul>
                    <li class="home"><a href="/">Главная</a><span>&raquo;</span></li>
                    {if $category}
                        {foreach from=$category->path key=inc item=cat}
                            {if count($category->path) == $inc+1}
                                <li><strong>{$cat->name|escape}</strong></li>
                            {else}
                                <li><a href="catalog/{$cat->url}">{$cat->name|escape}</a><span>&raquo;</span></li>
                            {/if}
                        {/foreach}
                        {if $brand}
                            <li><a href="catalog/{$cat->url}/{$brand->url}">{$brand->name|escape}</a><span>&raquo;</span></li>
                        {/if}
                    {elseif $brand}
                        <li> <a href="brands/{$brand->url}">{$brand->name|escape}</a><span>&raquo;</span></li>
                    {elseif $keyword}
                        <li> Поиск</li>
                    {/if}
                </ul>
            </div>
        </div>
    </div>
</div>
<!-- Breadcrumbs End -->
<!-- Main Container -->
<div class="main-container col2-left-layout">
    <div class="container">
        <div class="row">
            <div class="col-main col-sm-9 col-xs-12 col-sm-push-3">
                <div class="category-description std">
                    <div class="slider-items-products">
                        <div id="category-desc-slider" class="product-flexslider hidden-buttons">
                            <div class="slider-items slider-width-col1 owl-carousel owl-theme">

                                <!-- Item -->
                                <div class="item">
                                    <a href="#x"><img alt="HTML template" src="design/{$settings->theme|escape}/images/cat-slider-img1.jpg"></a>
                                    <div class="inner-info">
                                        <div class="cat-img-title"> <span>Best Product 2017</span>
                                            <h2 class="cat-heading">Best Selling Brand</h2>
                                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit...</p>
                                            <a class="info" href="#">Shop Now</a> </div>
                                    </div>
                                </div>
                                <!-- End Item -->

                                <!-- Item -->
                                <div class="item">
                                    <a href="#x"><img alt="HTML template" src="design/{$settings->theme|escape}/images/cat-slider-img2.jpg"></a>
                                </div>

                                <!-- End Item -->

                            </div>
                        </div>
                    </div>
                </div>
                <div class="shop-inner">
                    <div class="page-title">
                        {* Заголовок страницы *}
                        {if $keyword}
                            <h1>Поиск {$keyword|escape}</h1>
                        {elseif $page}
                            <h2>{$page->name|escape}</h2>
                        {else}
                            <h2>{$category->name|escape} {$brand->name|escape} {$keyword|escape}</h2>
                        {/if}
                    </div>
                    <div class="toolbar">
                        <div class="view-mode">
                            <ul>
                                <li class="active"> <a href="shop_grid.html"> <i class="fa fa-th-large"></i> </a> </li>
                                <li> <a href="shop_list.html"> <i class="fa fa-th-list"></i> </a> </li>
                            </ul>
                        </div>
                        <div class="sorter">
                            <div class="short-by">
                                <label>Sort By:</label>
                                <select>
                                    <option selected="selected">Position</option>
                                    <option>Name</option>
                                    <option>Price</option>
                                    <option>Size</option>
                                </select>
                            </div>
                            <div class="short-by page">
                                <label>Show:</label>
                                <select>
                                    <option selected="selected">18</option>
                                    <option>20</option>
                                    <option>25</option>
                                    <option>30</option>
                                </select>
                            </div>
                        </div>
                    </div>
                    <div class="product-grid-area">
                        <ul class="products-grid">
                            <!--Каталог товаров-->
                            {if $products}
                                {foreach $products as $product}
                                    {include file='product_block.tpl'}
                                {/foreach}
                            {else}
                                <p><font class="errortext">В данной категории товаров нет</font></p>
                            {/if}
                        </ul>
                    </div>
                    <div class="pagination-area">
                        <ul>
                            <li><a class="active" href="#">1</a></li>
                            <li><a href="#">2</a></li>
                            <li><a href="#">3</a></li>
                            <li><a href="#"><i class="fa fa-angle-right"></i></a></li>
                        </ul>
                    </div>
                </div>
            </div>
            <aside class="sidebar col-sm-3 col-xs-12 col-sm-pull-9">
                <div class="block category-sidebar">
                    <div class="sidebar-title">
                        <h3>Categories</h3>
                    </div>
                    <ul class="product-categories">
                        <li class="cat-item current-cat cat-parent"><a href= "shop_grid.html">Women</a>
                            <ul class="children">
                                <li class="cat-item cat-parent"><a href="shop_grid.html"><i class="fa fa-angle-right"></i>&nbsp; Accessories</a>
                                    <ul class="children">
                                        <li class="cat-item"><a href="shop_grid.html"><i class="fa fa-angle-right"></i>&nbsp; Dresses</a></li>
                                        <li class="cat-item cat-parent"><a href="shop_grid.html"><i class="fa fa-angle-right"></i>&nbsp; Handbags</a>
                                            <ul  class="children">
                                                <li class="cat-item"><a href="shop_grid.html"><i class="fa fa-angle-right"></i>&nbsp; Beaded Handbags</a></li>
                                                <li class="cat-item"><a href="shop_grid.html"><i class="fa fa-angle-right"></i>&nbsp; Sling bag</a></li>
                                            </ul>
                                        </li>
                                    </ul>
                                </li>
                                <li class="cat-item cat-parent"><a href="shop_grid.html"><i class="fa fa-angle-right"></i>&nbsp; Handbags</a>
                                    <ul class="children">
                                        <li class="cat-item"><a href="shop_grid.html"><i class="fa fa-angle-right"></i>&nbsp; backpack</a></li>
                                        <li class="cat-item"><a href="shop_grid.html"><i class="fa fa-angle-right"></i>&nbsp; Beaded Handbags</a></li>
                                        <li class="cat-item"><a href="shop_grid.html"><i class="fa fa-angle-right"></i>&nbsp; Fabric Handbags</a></li>
                                        <li class="cat-item"><a href="shop_grid.html"><i class="fa fa-angle-right"></i>&nbsp; Sling bag</a></li>
                                    </ul>
                                </li>
                                <li class="cat-item"><a href="shop_grid.html"><i class="fa fa-angle-right"></i>&nbsp; Jewellery</a> </li>
                                <li class="cat-item"><a href="shop_grid.html"><i class="fa fa-angle-right"></i>&nbsp; Swimwear</a> </li>
                            </ul>
                        </li>
                        <li class="cat-item cat-parent"><a href="shop_grid.html">Men</a>
                            <ul class="children">
                                <li class="cat-item cat-parent"><a href="shop_grid.html"><i class="fa fa-angle-right"></i>&nbsp; Dresses</a>
                                    <ul class="children">
                                        <li class="cat-item"><a href="shop_grid.html"><i class="fa fa-angle-right"></i>&nbsp; Casual</a></li>
                                        <li class="cat-item"><a href="shop_grid.html"><i class="fa fa-angle-right"></i>&nbsp; Designer</a></li>
                                        <li class="cat-item"><a href="shop_grid.html"><i class="fa fa-angle-right"></i>&nbsp; Evening</a></li>
                                        <li class="cat-item"><a href="shop_grid.html"><i class="fa fa-angle-right"></i>&nbsp; Hoodies</a></li>
                                    </ul>
                                </li>
                                <li class="cat-item"><a href="shop_grid.html"><i class="fa fa-angle-right"></i>&nbsp; Jackets</a> </li>
                                <li class="cat-item"><a href="shop_grid.html"><i class="fa fa-angle-right"></i>&nbsp; Shoes</a> </li>
                            </ul>
                        </li>
                        <li class="cat-item"><a href="shop_grid.html">Electronics</a></li>
                        <li class="cat-item"><a href="shop_grid.html">Furniture</a></li>
                        <li class="cat-item"><a href="shop_grid.html">KItchen</a></li>
                    </ul>
                </div>
                <div class="block shop-by-side">
                    <div class="sidebar-bar-title">
                        <h3>Shop By</h3>
                    </div>
                    <div class="block-content">
                        <p class="block-subtitle">Shopping Options</p>
                        <div class="layered-Category">
                            <h2 class="saider-bar-title">Categories</h2>
                            <div class="layered-content">
                                <ul class="check-box-list">
                                    <li>
                                        <input type="checkbox" id="jtv1" name="jtvc">
                                        <label for="jtv1"> <span class="button"></span> Women<span class="count">(12)</span> </label>
                                    </li>
                                    <li>
                                        <input type="checkbox" id="jtv1" name="jtvc">
                                        <label for="jtv1"> <span class="button"></span> Men<span class="count">(22)</span> </label>
                                    </li>
                                    <li>
                                        <input type="checkbox" id="jtv1" name="jtvc">
                                        <label for="jtv1"> <span class="button"></span> Kids<span class="count">(15)</span> </label>
                                    </li>
                                    <li>
                                        <input type="checkbox" id="jtv1" name="jtvc">
                                        <label for="jtv1"> <span class="button"></span> Accessories<span class="count">(12)</span> </label>
                                    </li>
                                    <li>
                                        <input type="checkbox" id="jtv1" name="jtvc">
                                        <label for="jtv1"> <span class="button"></span> Camera & Photo<span class="count">(12)</span> </label>
                                    </li>
                                    <li>
                                        <input type="checkbox" id="jtv2" name="jtvc">
                                        <label for="jtv2"> <span class="button"></span> Computers<span class="count">(18)</span> </label>
                                    </li>
                                    <li>
                                        <input type="checkbox" id="jtv3" name="jtvc">
                                        <label for="jtv3"> <span class="button"></span> Apple Store<span class="count">(15)</span> </label>
                                    </li>
                                    <li>
                                        <input type="checkbox" id="jtv4" name="jtvc">
                                        <label for="jtv4"> <span class="button"></span> Car Electronic<span class="count">(03)</span> </label>
                                    </li>
                                    <li>
                                        <input type="checkbox" id="jtv5" name="jtvc">
                                        <label for="jtv5"> <span class="button"></span> Accessories<span class="count">(04)</span> </label>
                                    </li>
                                    <li>
                                        <input type="checkbox" id="jtv7" name="jtvc">
                                        <label for="jtv7"> <span class="button"></span> Game & Video<span class="count">(07)</span> </label>
                                    </li>
                                    <li>
                                        <input type="checkbox" id="jtv8" name="jtvc">
                                        <label for="jtv8"> <span class="button"></span> Best selling<span class="count">(05)</span> </label>
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <div class="manufacturer-area">
                            <h2 class="saider-bar-title">Manufacturer</h2>
                            <div class="saide-bar-menu">
                                <ul>
                                    <li><a href="#"><i class="fa fa-angle-right"></i> Aliquam</a></li>
                                    <li><a href="#"><i class="fa fa-angle-right"></i> Duis tempus id </a></li>
                                    <li><a href="#"><i class="fa fa-angle-right"></i> Leo quis molestie. </a></li>
                                    <li><a href="#"><i class="fa fa-angle-right"></i> Suspendisse </a></li>
                                    <li><a href="#"><i class="fa fa-angle-right"></i> Nunc gravida </a></li>
                                </ul>
                            </div>
                        </div>
                        <div class="color-area">
                            <h2 class="saider-bar-title">Color</h2>
                            <div class="color">
                                <ul>
                                    <li><a href="#"></a></li>
                                    <li><a href="#"></a></li>
                                    <li><a href="#"></a></li>
                                    <li><a href="#"></a></li>
                                    <li><a href="#"></a></li>
                                    <li><a href="#"></a></li>
                                </ul>
                            </div>
                        </div>
                        <div class="size-area">
                            <h2 class="saider-bar-title">Size</h2>
                            <div class="size">
                                <ul>
                                    <li><a href="#">S</a></li>
                                    <li><a href="#">L</a></li>
                                    <li><a href="#">M</a></li>
                                    <li><a href="#">XL</a></li>
                                    <li><a href="#">XXL</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="block product-price-range ">
                    <div class="sidebar-bar-title">
                        <h3>Price</h3>
                    </div>
                    <div class="block-content">
                        <div class="slider-range">
                            <div data-label-reasult="Range:" data-min="0" data-max="500" data-unit="$" class="slider-range-price" data-value-min="50" data-value-max="350"></div>
                            <div class="amount-range-price">Range: $10 - $550</div>
                            <ul class="check-box-list">
                                <li>
                                    <input type="checkbox" id="p1" name="cc" />
                                    <label for="p1"> <span class="button"></span> $20 - $50<span class="count">(0)</span> </label>
                                </li>
                                <li>
                                    <input type="checkbox" id="p2" name="cc" />
                                    <label for="p2"> <span class="button"></span> $50 - $100<span class="count">(0)</span> </label>
                                </li>
                                <li>
                                    <input type="checkbox" id="p3" name="cc" />
                                    <label for="p3"> <span class="button"></span> $100 - $250<span class="count">(0)</span> </label>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="single-img-add sidebar-add-slider ">
                    <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
                        <!-- Indicators -->
                        <ol class="carousel-indicators">
                            <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
                            <li data-target="#carousel-example-generic" data-slide-to="1"></li>
                            <li data-target="#carousel-example-generic" data-slide-to="2"></li>
                        </ol>

                        <!-- Wrapper for slides -->
                        <div class="carousel-inner" role="listbox">
                            <div class="item active"> <img src="images/add-slide1.jpg" alt="slide1">
                                <div class="carousel-caption">
                                    <h3><a href="single_product.html" title=" Sample Product">Sale Up to 50% off</a></h3>
                                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
                                    <a href="#" class="info">shopping Now</a> </div>
                            </div>
                            <div class="item"> <img src="images/add-slide2.jpg" alt="slide2">
                                <div class="carousel-caption">
                                    <h3><a href="single_product.html" title=" Sample Product">Smartwatch Collection</a></h3>
                                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
                                    <a href="#" class="info">All Collection</a> </div>
                            </div>
                            <div class="item"> <img src="images/add-slide3.jpg" alt="slide3">
                                <div class="carousel-caption">
                                    <h3><a href="single_product.html" title=" Sample Product">Summer Sale</a></h3>
                                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
                                </div>
                            </div>
                        </div>

                        <!-- Controls -->
                        <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev"> <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span> <span class="sr-only">Previous</span> </a> <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next"> <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span> <span class="sr-only">Next</span> </a> </div>
                </div>
                <div class="block special-product">
                    <div class="sidebar-bar-title">
                        <h3>Special Products</h3>
                    </div>
                    <div class="block-content">
                        <ul>
                            <li class="item">
                                <div class="products-block-left"> <a href="single_product.html" title="Sample Product" class="product-image"><img src="images/products/product-1.jpg" alt="Sample Product "></a></div>
                                <div class="products-block-right">
                                    <p class="product-name"> <a href="single_product.html">Lorem ipsum dolor sit amet Consectetur</a> </p>
                                    <span class="price">$19.99</span>
                                    <div class="rating"> <i class="fa fa-star"></i> <i class="fa fa-star"></i> <i class="fa fa-star"></i> <i class="fa fa-star"></i> <i class="fa fa-star-o"></i> </div>
                                </div>
                            </li>
                            <li class="item">
                                <div class="products-block-left"> <a href="single_product.html" title="Sample Product" class="product-image"><img src="images/products/product-1.jpg" alt="Sample Product "></a></div>
                                <div class="products-block-right">
                                    <p class="product-name"> <a href="single_product.html">Consectetur utes anet adipisicing elit</a> </p>
                                    <span class="price">$89.99</span>
                                    <div class="rating"> <i class="fa fa-star"></i> <i class="fa fa-star"></i> <i class="fa fa-star"></i> <i class="fa fa-star-o"></i> <i class="fa fa-star-o"></i> </div>
                                </div>
                            </li>
                        </ul>
                        <a class="link-all" href="shop_grid.html">All Products</a> </div>
                </div>
                <div class="block popular-tags-area ">
                    <div class="sidebar-bar-title">
                        <h3>Popular Tags</h3>
                    </div>
                    <div class="tag">
                        <ul>
                            <li><a href="#">Boys</a></li>
                            <li><a href="#">Camera</a></li>
                            <li><a href="#">good</a></li>
                            <li><a href="#">Computers</a></li>
                            <li><a href="#">Phone</a></li>
                            <li><a href="#">clothes</a></li>
                            <li><a href="#">girl</a></li>
                            <li><a href="#">shoes</a></li>
                            <li><a href="#">women</a></li>
                            <li><a href="#">accessoties</a></li>
                            <li><a href="#">View All Tags</a></li>
                        </ul>
                    </div>
                </div>
                <div class="block block-poll">
                    <div class="sidebar-bar-title">
                        <h3>Community Poll</h3>
                    </div>
                    <form id="pollForm" action="#" method="post" onsubmit="return validatePollAnswerIsSelected();">
                        <div class="block-content">
                            <p class="block-subtitle">What is your favorite color</p>
                            <ul id="poll-answers">
                                <li class="odd">
                                    <input type="radio" name="vote" class="radio poll_vote" id="vote_1" value="1">
                    <span class="label">
                    <label for="vote_1">Green</label>
                    </span> </li>
                                <li class="even">
                                    <input type="radio" name="vote" class="radio poll_vote" id="vote_2" value="2">
                    <span class="label">
                    <label for="vote_2">Red</label>
                    </span> </li>
                                <li class="odd">
                                    <input type="radio" name="vote" class="radio poll_vote" id="vote_3" value="3">
                    <span class="label">
                    <label for="vote_3">Black</label>
                    </span> </li>
                                <li class="last even">
                                    <input type="radio" name="vote" class="radio poll_vote" id="vote_4" value="4">
                    <span class="label">
                    <label for="vote_4">Magenta</label>
                    </span> </li>
                            </ul>
                            <div class="actions">
                                <button type="submit" title="Vote" class="button button-vote"><span>Vote</span></button>
                            </div>
                        </div>
                    </form>
                </div>
                <div class="offer-banner"><img src="images/offer-banner.jpg" alt="banner"></div>
            </aside>
        </div>
    </div>
</div>
<!-- Main Container End -->
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
            <div class="col col-md-3 col-sm-6 col-xs-12 ">
                <div class="block-wrapper return">
                    <div class="text-des">
                        <div class="icon-wrapper"><i class="fa fa-rotate-right"></i></div>
                        <div class="service-wrapper">
                            <h3>30 Days Return</h3>
                            <p>Moneyback guarantee </p>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col col-md-3 col-sm-6 col-xs-12">
                <div class="block-wrapper support">
                    <div class="text-des">
                        <div class="icon-wrapper"><i class="fa fa-umbrella"></i></div>
                        <div class="service-wrapper">
                            <h3>Support 24/7</h3>
                            <p>Call us: ( +123 ) 456 789</p>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col col-md-3 col-sm-6 col-xs-12">
                <div class="block-wrapper user">
                    <div class="text-des">
                        <div class="icon-wrapper"><i class="fa fa-tags"></i></div>
                        <div class="service-wrapper">
                            <h3>Member Discount</h3>
                            <p>25% on order over $199</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>