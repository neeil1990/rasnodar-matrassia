{$meta_title = "Сравнение товаров" scope=parent}

<!-- Breadcrumbs -->
<div class="breadcrumbs">
    <div class="container">
        <div class="row">
            <div class="col-xs-12">
                <ul>
                    <li class="home"><a href="/">Главная</a><span>&raquo;</span></li>
                    <li><strong>Сравнение товаров</strong></li>
                </ul>
            </div>
        </div>
    </div>
</div>
<!-- Breadcrumbs End -->

{if $compare->total>0}

    <!-- Main Container -->
    <section class="main-container col1-layout">
        <div class="main container">
            <div class="col-main">
                <div class="compare-list">
                    <div class="page-title">
                        <h2>Сравнение товаров</h2>
                    </div>
                    <div class="table-responsive">
                        <table class="table table-bordered table-compare">
                            <tr>
                                <td class="compare-label">Изображение</td>
                                {foreach $compare->products as $product}
                                <td class="compare-pro">
                                    <a href="products/{$product->url}">
                                        <img src="{$product->image|resize:160:160}" alt="Product">
                                    </a>
                                </td>
                                {/foreach}
                            </tr>
                            <tr>
                                <td class="compare-label">Название</td>
                                {foreach $compare->products as $product}
                                <td><a href="products/{$product->url}">{$product->name}</a></td>
                                {/foreach}
                            </tr>
                            <tr>
                                <td class="compare-label">Цена</td>
                                {foreach $compare->products as $product}
                                <td class="price">{$product->variant->price|convert} {$currency->sign|escape}</td>
                                {/foreach}

                            </tr>

                            {foreach from=$compare->features key=k item=i}
                            <tr>
                                <td class="compare-label">{$k}</td>
                                {foreach from=$i.items item=ii}
                                <td>{$ii|strip_tags}</td>
                                {/foreach}
                            </tr>
                            {/foreach}


                            <tr>
                                <td class="compare-label"></td>
                                {foreach $compare->products as $product}
                                <td class="action">
                                    <form class="" name="buy_form" action="cart">
                                    {* Не показывать выбор варианта, если он один и без названия *}
                                    <select name="variant" style='display:none;'>
                                        {foreach $product->variants as $v}
                                            <option value="{$v->id}" {if $v->compare_price > 0}compare_price="{$v->compare_price|convert}"  discount="{($v->compare_price-$v->price)|convert}"{/if} price="{$v->price|convert}">
                                                {$v->name}
                                            </option>
                                        {/foreach}
                                    </select>
                                    <button type="submit" class="add-cart button button-sm"><i class="fa fa-shopping-basket"></i></button>
                                    </form>
                                    <form action="compare/remove/{$product->id}">
                                        <button type="submit" class="button button-sm"><i class="fa fa-close"></i></button>
                                    </form>
                                </td>
                                {/foreach}
                            </tr>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </section>

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





{else}
    Список сравнения пуст
{/if}