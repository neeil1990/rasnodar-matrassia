{* Страница товара *}

{* Канонический адрес страницы *}
{$canonical="/products/{$product->url}" scope=parent}

<!-- Breadcrumbs -->
<div class="breadcrumbs">
    <div class="container">
        <div class="row">
            <div class="col-xs-12">
                <ul>
                    <li class="home"><a href="/">Главная</a><span>&raquo;</span></li>
                    {foreach from=$category->path key=inc item=cat}
                            <li><a href="catalog/{$cat->url}">{$cat->name|escape}</a><span>&raquo;</span></li>
                    {/foreach}
                    {if $brand}
                        <li><a href="catalog/{$cat->url}/{$brand->url}">{$brand->name|escape}</a><span>&raquo;</span></li>
                    {/if}
                    <li><strong>{$product->name|escape}</strong></li>
                </ul>
            </div>
        </div>
    </div>
</div>
<!-- Breadcrumbs End -->

<!-- Main Container -->
<div class="main-container col1-layout">
    <div class="container">
        <div class="row">
            <div class="col-main">
                <div class="product-view-area">
                    {if $product->images}
                        <div class="product-big-image col-xs-12 col-sm-5 col-lg-5 col-md-5">
                            <div class="icon-sale-label sale-left">Sale</div>
                            <div class="large-image">
                                {if $product->image}
                                <a href="{$product->image->filename|resize:400:400}" class="cloud-zoom" id="zoom1" rel="useWrapper: false, adjustY:0, adjustX:20">
                                    <img class="zoom-img" src="{$product->image->filename|resize:400:400}" alt="{$product->name|escape}">
                                </a>
                                {/if}
                                </div>
                            <div class="flexslider flexslider-thumb">
                                <ul class="previews-list slides">
                                    {foreach $product->images as $i=>$image}
                                    <li>
                                        <a href='{$image->filename|resize:400:400}' class='cloud-zoom-gallery' rel="useZoom: 'zoom1', smallImage: '{$image->filename|resize:400:400}' ">
                                            <img src="{$image->filename|resize:80:80}" alt = "{$product->name|escape}"/>
                                        </a>
                                    </li>
                                    {/foreach}
                                </ul>
                            </div>
                            <!-- end: more-images -->
                        </div>
                    {/if}
                    <div class="col-xs-12 col-sm-7 col-lg-7 col-md-7 prod product-details-area">
                        <div class="product-name">
                            <h1>{$product->name|escape}</h1>
                        </div>
                        <div class="price-box">
                            <p class="special-price"> <span class="price-label">Special Price</span> <span class="price"> {$product->variant->price|convert} {$currency->sign|escape}</span> </p>
                            {if $product->variant->compare_price > 0}
                            <p class="old-price"> <span class="price-label">Regular Price:</span> <span class="price"> {$product->variant->compare_price|convert} {$currency->sign|escape}</span> </p>
                            {/if}
                        </div>
                        <div class="ratings">
                            <div class="rating"> <i class="fa fa-star"></i> <i class="fa fa-star"></i> <i class="fa fa-star"></i> <i class="fa fa-star-o"></i> <i class="fa fa-star-o"></i> </div>
                            <p class="rating-links"> <a href="#">1 Review(s)</a> <span class="separator">|</span> <a href="#">Add Your Review</a> </p>
                            <p class="availability in-stock pull-right">Availability: <span>In Stock</span></p>
                        </div>
                        <form class="js-buyform variants2" name="buy_form" action="cart">
                            <div class="product-color-size-area">
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
                                        {* Не показывать выбор варианта, если он один и без названия *}
                                        <select name="variant" {if $product->variants|count==1  && !$product->variant->name}style='display:none;'{/if}>
                                            {foreach $product->variants as $v}
                                                <option value="{$v->id}" {if $v->compare_price > 0}compare_price="{$v->compare_price|convert}"  discount="{($v->compare_price-$v->price)|convert}"{/if} price="{$v->price|convert}">
                                                    {$v->name}
                                                </option>
                                            {/foreach}
                                        </select>
                                    </div>
                                </div>
                            </div>
                            <div class="product-variation">
                                <form action="#" method="post">
                                    <div class="cart-plus-minus">
                                        <label for="qty">Quantity:</label>
                                        <div class="numbers-row">
                                            <div onClick="var result = document.getElementById('qty'); var qty = result.value; if( !isNaN( qty ) &amp;&amp; qty &gt; 1 ) result.value--;return false;" class="dec qtybutton"><i class="fa fa-minus">&nbsp;</i></div>
                                            <input type="text" class="qty" title="Qty" value="1" maxlength="12" id="qty" name="amount">
                                            <div onClick="var result = document.getElementById('qty'); var qty = result.value; if( !isNaN( qty )) result.value++;return false;" class="inc qtybutton"><i class="fa fa-plus">&nbsp;</i></div>
                                        </div>
                                    </div>
                                    <button class="button pro-add-to-cart" title="Add to Cart" type="submit"><span><i class="fa fa-shopping-basket"></i> В корзину</span></button>
                                </form>
                            </div>
                        </form>
                        <div class="product-cart-option">
                            <ul>
                                <li><a href="#" class="add_to_compare" data-id="{$product->id}"><i class="fa fa-link"></i><span>Добавить в сравнение</span></a></li>
                                <li><a href="#"><i class="fa fa-envelope"></i><span>Заказать звонок</span></a></li>
                            </ul>
                        </div>
                        <div class="short-description">
                            <div class="page-title">
                                <h2>Характеристики</h2>
                            </div>
                            <table class="table table-bordered cart_summary">
                                {foreach $product->features as $f}
                                <tr>
                                    <td>{$f->name}</td>
                                    <td data-title="E-Mail" >{$f->value}</td>
                                </tr>
                                {/foreach}
                            </table>
                        </div>
                        <div class="pro-tags">
                            <div class="pro-tags-title">Tags:</div>
                            <a href="#">ecommerce</a>, <a href="#">bootstrap</a>, <a href="#">shopping</a>, <a href="#">fashion</a>, <a href="#">responsive</a> </div>
                        <div class="share-box">
                            <div class="title">Share in social media</div>
                            <div class="socials-box"> <a href="#"><i class="fa fa-facebook"></i></a> <a href="#"><i class="fa fa-twitter"></i></a> <a href="#"><i class="fa fa-google-plus"></i></a> <a href="#"><i class="fa fa-youtube"></i></a> <a href="#"><i class="fa fa-linkedin"></i></a> <a href="#"><i class="fa fa-instagram"></i></a> </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="product-overview-tab">
                <div class="container">
                    <div class="row">
                        <div class="col-xs-12">
                            <div class="product-tab-inner">
                                <ul id="product-detail-tab" class="nav nav-tabs product-tabs">
                                    <li class="active"> <a href="#description" data-toggle="tab"> Description </a> </li>
                                    <li> <a href="#reviews" data-toggle="tab">Reviews</a> </li>
                                    <li><a href="#product_tags" data-toggle="tab">Tags</a></li>
                                    <li> <a href="#custom_tabs" data-toggle="tab">Custom Tab</a> </li>
                                </ul>
                                <div id="productTabContent" class="tab-content">
                                    <div class="tab-pane fade in active" id="description">
                                        <div class="std">
                                            {$product->body}
                                        </div>
                                    </div>
                                    <div id="reviews" class="tab-pane fade">
                                        <div class="col-sm-5 col-lg-5 col-md-5">
                                            <div class="reviews-content-left">
                                                <h2>Customer Reviews</h2>
                                                <div class="review-ratting">
                                                    <p><a href="#">Amazing</a> Review by Company</p>
                                                    <table>
                                                        <tbody>
                                                        <tr>
                                                            <th>Price</th>
                                                            <td><div class="rating"> <i class="fa fa-star"></i> <i class="fa fa-star"></i> <i class="fa fa-star-o"></i> <i class="fa fa-star-o"></i> <i class="fa fa-star-o"></i> </div></td>
                                                        </tr>
                                                        <tr>
                                                            <th>Value</th>
                                                            <td><div class="rating"> <i class="fa fa-star"></i> <i class="fa fa-star"></i> <i class="fa fa-star"></i> <i class="fa fa-star-o"></i> <i class="fa fa-star-o"></i> </div></td>
                                                        </tr>
                                                        <tr>
                                                            <th>Quality</th>
                                                            <td><div class="rating"> <i class="fa fa-star"></i> <i class="fa fa-star"></i> <i class="fa fa-star"></i> <i class="fa fa-star-o"></i> <i class="fa fa-star-o"></i> </div></td>
                                                        </tr>
                                                        </tbody>
                                                    </table>
                                                    <p class="author"> Angela Mack<small> (Posted on 16/12/2015)</small> </p>
                                                </div>
                                                <div class="review-ratting">
                                                    <p><a href="#">Good!!!!!</a> Review by Company</p>
                                                    <table>
                                                        <tbody>
                                                        <tr>
                                                            <th>Price</th>
                                                            <td><div class="rating"> <i class="fa fa-star"></i> <i class="fa fa-star"></i> <i class="fa fa-star-o"></i> <i class="fa fa-star-o"></i> <i class="fa fa-star-o"></i> </div></td>
                                                        </tr>
                                                        <tr>
                                                            <th>Value</th>
                                                            <td><div class="rating"> <i class="fa fa-star"></i> <i class="fa fa-star"></i> <i class="fa fa-star"></i> <i class="fa fa-star-o"></i> <i class="fa fa-star-o"></i> </div></td>
                                                        </tr>
                                                        <tr>
                                                            <th>Quality</th>
                                                            <td><div class="rating"> <i class="fa fa-star"></i> <i class="fa fa-star"></i> <i class="fa fa-star"></i> <i class="fa fa-star-o"></i> <i class="fa fa-star-o"></i> </div></td>
                                                        </tr>
                                                        </tbody>
                                                    </table>
                                                    <p class="author"> Lifestyle<small> (Posted on 20/12/2015)</small> </p>
                                                </div>
                                                <div class="review-ratting">
                                                    <p><a href="#">Excellent</a> Review by Company</p>
                                                    <table>
                                                        <tbody>
                                                        <tr>
                                                            <th>Price</th>
                                                            <td><div class="rating"> <i class="fa fa-star"></i> <i class="fa fa-star"></i> <i class="fa fa-star-o"></i> <i class="fa fa-star-o"></i> <i class="fa fa-star-o"></i> </div></td>
                                                        </tr>
                                                        <tr>
                                                            <th>Value</th>
                                                            <td><div class="rating"> <i class="fa fa-star"></i> <i class="fa fa-star"></i> <i class="fa fa-star"></i> <i class="fa fa-star-o"></i> <i class="fa fa-star-o"></i> </div></td>
                                                        </tr>
                                                        <tr>
                                                            <th>Quality</th>
                                                            <td><div class="rating"> <i class="fa fa-star"></i> <i class="fa fa-star"></i> <i class="fa fa-star"></i> <i class="fa fa-star-o"></i> <i class="fa fa-star-o"></i> </div></td>
                                                        </tr>
                                                        </tbody>
                                                    </table>
                                                    <p class="author"> Jone Deo<small> (Posted on 25/12/2015)</small> </p>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-sm-7 col-lg-7 col-md-7">
                                            <div class="reviews-content-right">
                                                <h2>Write Your Own Review</h2>
                                                <form>
                                                    <h3>You're reviewing: <span>Donec Ac Tempus</span></h3>
                                                    <h4>How do you rate this product?<em>*</em></h4>
                                                    <div class="table-responsive reviews-table">
                                                        <table>
                                                            <tbody>
                                                            <tr>
                                                                <th></th>
                                                                <th>1 star</th>
                                                                <th>2 stars</th>
                                                                <th>3 stars</th>
                                                                <th>4 stars</th>
                                                                <th>5 stars</th>
                                                            </tr>
                                                            <tr>
                                                                <td>Quality</td>
                                                                <td><input type="radio"></td>
                                                                <td><input type="radio"></td>
                                                                <td><input type="radio"></td>
                                                                <td><input type="radio"></td>
                                                                <td><input type="radio"></td>
                                                            </tr>
                                                            <tr>
                                                                <td>Price</td>
                                                                <td><input type="radio"></td>
                                                                <td><input type="radio"></td>
                                                                <td><input type="radio"></td>
                                                                <td><input type="radio"></td>
                                                                <td><input type="radio"></td>
                                                            </tr>
                                                            <tr>
                                                                <td>Value</td>
                                                                <td><input type="radio"></td>
                                                                <td><input type="radio"></td>
                                                                <td><input type="radio"></td>
                                                                <td><input type="radio"></td>
                                                                <td><input type="radio"></td>
                                                            </tr>
                                                            </tbody>
                                                        </table>
                                                    </div>
                                                    <div class="form-area">
                                                        <div class="form-element">
                                                            <label>Nickname <em>*</em></label>
                                                            <input type="text">
                                                        </div>
                                                        <div class="form-element">
                                                            <label>Summary of Your Review <em>*</em></label>
                                                            <input type="text">
                                                        </div>
                                                        <div class="form-element">
                                                            <label>Review <em>*</em></label>
                                                            <textarea></textarea>
                                                        </div>
                                                        <div class="buttons-set">
                                                            <button class="button submit" title="Submit Review" type="submit"><span><i class="fa fa-thumbs-up"></i> &nbsp;Review</span></button>
                                                        </div>
                                                    </div>
                                                </form>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="tab-pane fade" id="product_tags">
                                        <div class="box-collateral box-tags">
                                            <div class="tags">
                                                <form id="addTagForm" action="#" method="get">
                                                    <div class="form-add-tags">
                                                        <div class="input-box">
                                                            <label for="productTagName">Add Your Tags:</label>
                                                            <input class="input-text" name="productTagName" id="productTagName" type="text">
                                                            <button type="button" title="Add Tags" class="button add-tags"><i class="fa fa-plus"></i> &nbsp;<span>Add Tags</span> </button>
                                                        </div>
                                                        <!--input-box-->
                                                    </div>
                                                </form>
                                            </div>
                                            <!--tags-->
                                            <p class="note">Use spaces to separate tags. Use single quotes (') for phrases.</p>
                                        </div>
                                    </div>
                                    <div class="tab-pane fade" id="custom_tabs">
                                        <div class="product-tabs-content-inner clearfix">
                                            <p><strong>Lorem Ipsum</strong><span>&nbsp;is
                          simply dummy text of the printing and typesetting industry. Lorem Ipsum
                          has been the industry's standard dummy text ever since the 1500s, when
                          an unknown printer took a galley of type and scrambled it to make a type
                          specimen book. It has survived not only five centuries, but also the
                          leap into electronic typesetting, remaining essentially unchanged. It
                          was popularised in the 1960s with the release of Letraset sheets
                          containing Lorem Ipsum passages, and more recently with desktop
                          publishing software like Aldus PageMaker including versions of Lorem
                          Ipsum.</span></p>
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

<!-- Main Container End -->

<!-- Related Product Slider -->
{* Связанные товары *}
{if $related_products}
<div class="container">
    <div class="row">
        <div class="col-xs-12">
            <div class="related-product-area">
                <div class="page-header">
                    <h2>Так же советуем посмотреть</h2>
                </div>
                <div class="related-products-pro">
                    <div class="slider-items-products">
                        <div id="related-product-slider" class="product-flexslider hidden-buttons">
                            <div class="slider-items slider-width-col4 fadeInUp">
                                {foreach $related_products as $product}
                                    {include file='product_block.tpl'}
                                {/foreach}
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
{/if}
<!-- Related Product Slider End -->

<!-- Upsell Product Slider -->
<section class="upsell-product-area">
    <div class="container">
        <div class="row">
            <div class="col-xs-12">
                <div class="page-header">
                    <h2>UpSell Products</h2>
                </div>
                <div class="slider-items-products">
                    <div id="upsell-product-slider" class="product-flexslider hidden-buttons">
                        <div class="slider-items slider-width-col4">

                            <div class="product-item">
                                <div class="item-inner">
                                    <div class="product-thumbnail">
                                        <div class="icon-sale-label sale-left">Sale</div>
                                        <div class="pr-img-area"> <a title="Product title here" href="single_product.html">
                                                <figure> <img class="first-img" src="images/products/product-1.jpg" alt="HTML template"> <img class="hover-img" src="images/products/product-1.jpg" alt="HTML template"></figure>
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
                                                <div class="rating"> <i class="fa fa-star-o"></i> <i class="fa fa-star-o"></i> <i class="fa fa-star-o"></i> <i class="fa fa-star-o"></i> <i class="fa fa-star-o"></i> </div>
                                                <div class="item-price">
                                                    <div class="price-box">
                                                        <p class="special-price"> <span class="price-label">Special Price</span> <span class="price"> $456.00 </span> </p>
                                                        <p class="old-price"> <span class="price-label">Regular Price:</span> <span class="price"> $567.00 </span> </p>
                                                    </div>
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
</section>
<!-- Upsell Product Slider End -->
