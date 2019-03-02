 <div class="product-item prod">
    <div class="item-inner">
        <div class="product-thumbnail">
            <div class="icon-new-label new-left">New</div>
            <div class="pr-img-area">
                <a title="Ipsums Dolors Untra" href="products/{$product->url}">
                    <figure>
                        <img class="first-img" src="{$product->image->filename|resize:160:160}" rel="image_src" alt="{$product->name|escape}">
                    </figure>
                </a>
            </div>
            <div class="pr-info-area">
                <div class="pr-button">
                    <div class="mt-button add_to_compare" data-id="{$product->id}"> <a href="#"> <i class="fa fa-signal"></i> </a> </div>
                </div>
            </div>
        </div>
        <div class="item-info">
            <div class="info-inner">
                <div class="item-title">
                    <a title="{$product->name|escape}" href="products/{$product->url}">{$product->name|escape} </a>
                </div>
                <div class="item-content">
                    <div class="rating"> <i class="fa fa-star"></i> <i class="fa fa-star"></i> <i class="fa fa-star-o"></i> <i class="fa fa-star-o"></i> <i class="fa fa-star-o"></i> </div>
                    <div class="item-price">
                        <div class="price-box">
                            {if $product->variant->compare_price > 0}
                                <p class="special-price"> <span class="price-label">Special Price</span> <span class="price"> {$product->variant->price|convert} {$currency->sign|escape}</span> </p>
                                <p class="old-price"> <span class="price-label">Regular Price:</span> <span class="price"> {$product->variant->compare_price|convert} {$currency->sign|escape}</span> </p>
                            {else}
                                <span class="regular-price special-price"> <span class="price">{$product->variant->price|convert} {$currency->sign|escape}</span> </span>
                            {/if}
                        </div>
                    </div>

                    <div class="pro-action">
                        <form class="clearfix variants" name="buy_form" action="cart">
                            <input type="hidden" class="multimage_backs value" name="amount" value="1" data-ratio="1">
                            {* Не показывать выбор варианта, если он один и без названия *}
                            <select class="input form-control" name="variant" {if $product->variants|count==1  && !$product->variant->name}style='display:none;'{/if}>
                                {foreach $product->variants as $v}
                                    <option value="{$v->id}"
                                            {if $v->compare_price > 0}compare_price="{$v->compare_price|convert}"
                                            discount="{($v->compare_price-$v->price)|convert}"{/if}
                                            price="{$v->price|convert}"
                                            {if $smarty.get.width == $v->width && $smarty.get.height == $v->height}selected{/if}
                                            >
                                        {$v->name}
                                    </option>
                                {/foreach}
                            </select>
                            <br/>
                            <button type="submit" class="add-to-cart" value="В корзину"><span> В корзину</span> </button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
