{* Страница товара *}

{* Канонический адрес страницы *}
{$canonical="/products/{$product->url}" scope=parent}

<!-- Хлебные крошки /-->
<ul id="breadcrumbs">
	<li><a title="Главная" href="/"><span>Главная</span></a> /</li>
	{foreach $category->path as $cat}
	<li><a title="Каталог" href="catalog/{$cat->url}"><span>{$cat->name|escape}</span></a> /</li>
	{/foreach}
	{if $brand}
	<li><a href="catalog/{$cat->url}/{$brand->url}">{$brand->name|escape}</a>/</li>
	{/if}
	<li><span>{$product->name|escape}</span></li>
</ul><!-- Хлебные крошки #End /-->						

<h1 data-product="{$product->id}">{$product->name|escape}</h1>

<ul id="productStatsControls">
    <li><a class="scrollTo active" href="#">Обзор</a></li>
    <li id="descCont"><a class="scrollTo" href="#productDesc">Описание товара</a></li>
	{if $product->features}<li id="specifCont"><a class="scrollTo" href="#specification">Характеристики</a></li>{/if}    
	<li id="reviewCont"><a class="scrollTo" href="#reviews">Отзывы</a></li>    
	{if $related_products}<li id="offerCont"><a class="scrollTo" href="#offers">Модификации</a></li>{/if}
</ul>

<div id="productAddInfo">
	{if $product->variants|count > 0}
		<span class="available">Товар есть в наличии</span>
	{else}
		<span class="noAvailable">Под заказ</span>
	{/if}
	<span class="articul">{if $product->variant->sku}Артикул: {$product->variant->sku}{/if}</span>
</div>

<div  class="product" id="productCart">
    <div id="productPicsSlider">
        <ul id="productPics" style="width: 400%; left: -200%;">
			<li class="image" style="width: 25%;">
				{if $product->image}
					<img class="largePicture" alt="{$product->name|escape}" src="{$product->image->filename|resize:500:500}">
				{else}
					<img class="largePicture" alt="{$product->name|escape}" src="design/{$settings->theme|escape}/images/noimg_big.png">
				{/if}
			</li>
			{foreach $product->images|cut as $i=>$image}
			<li style="width: 25%;"><img alt="{$product->name|escape}" src="{$image->filename|resize:500:500}"></li>
			{/foreach}
		</ul>
	</div>

	{if $product->images|count>1}
		<ul id="elementMorePhoto">
			<li class="selected"><a class="selected" href="{$product->image->filename|resize:90:90}"><img alt="{$product->name|escape}" src="{$product->image->filename|resize:90:90}"></a></li>
		{foreach $product->images|cut as $i=>$image}
			<li><a href="{$image->filename|resize:90:90}"><img alt="{$product->name|escape}" src="{$image->filename|resize:90:90}"></a></li>
		{/foreach}
		</ul>
	{/if}

	<div id="productControls">
		<ul>
			<li>
				<span class="price">
					<span class="pr">{$product->variant->price|convert}</span><span class="rouble"> {$currency->sign|escape}</span>
					{if $product->variant->compare_price > 0}<s>{$product->variant->compare_price|convert} <span class="rouble">{$currency->sign|escape}</span></s>{/if}
				</span>
			</li>
			{if $product->variants|count > 0}
				<!-- Выбор варианта товара -->
				<form class="variants" action="/cart">
					<li>
						<select name="variant" {if $product->variants|count==1  && !$product->variant->name}style='display:none;'{/if}>
						{foreach $product->variants as $v}
							<option value="{$v->id}" {if $v->compare_price > 0}compare_price="{$v->compare_price|convert}"{/if} price="{$v->price|convert}">{$v->name}</option>
						{/foreach}
						</select>
						<input type="submit" class="addSku" value="В корзину" data-result-text="Добавлено"/>
						<div class="catalog-element-consult">
							<a href="tel:+78612175954" class="submit" rel="nofollow">
								Консультация <br> +7 (861) 217-59-54
							</a>
						</div>
					</li>
				</form>
				<!-- Выбор варианта товара (The End) -->
			{else}
				<li><a class="addCart disabled" href="#">В корзину</a></li>
			{/if}
		</ul>
	</div>

	<div class="collapsedBlock" id="productDesc">
		<span class="heading trigger opened">Описание товара</span>
		<div class="collapsedContent opened">{$product->body}</div>
	</div>

	{if $product->features}    
	<div class="collapsedBlock" id="specification">
		<span class="heading trigger">Технические характеристики</span>
		<div class="collapsedContent">
			<table class="stats">
				<tbody>
					{foreach $product->features as $f name=foo}
					<tr {if $smarty.foreach.foo.index % 2}class="gray"{/if}>
						<td class="name"><span>{$f->name}</span></td>
						<td>{$f->value}</td>
					</tr>
					{/foreach}
				</tbody>
			</table>
		</div>
	</div>
	{/if}
    
	<div class="collapsedBlock" id="reviews">
		<span class="heading trigger">Отзывы ({$comments|count})</span>
		<div class="collapsedContent">
			{foreach $comments as $comment}
			<div class="review">
				<span class="reviewer">{$comment->name|escape} {if !$comment->approved}ожидает модерации</b>{/if}<small>{$comment->date|date}, {$comment->date|time}</small></span>
				<div class="impressions"><p>{$comment->text|escape|nl2br}</p></div>
			</div>
			{/foreach}
			<div id="newReview">
				<span class="heading">Добавить отзыв</span>
				<form class="comment_form" method="post">
					<div class="left">
						<label>Общие впечатления:</label>
						<textarea  id="comment_text" name="text" data-format=".+" data-notice="Введите комментарий" cols="45" rows="10"></textarea>   
						<label>Представьтесь:</label>
						<input type="text" id="comment_name" name="name" value="{$comment_name}" data-format=".+" data-notice="Введите имя">
						<label for="comment_captcha">Число:</label>
						<div style="float: left; margin-right: 15px;" class="captcha"><img src="captcha/image.php?{math equation='rand(10,10000)'}" alt='captcha'/></div> 
						<input style="width: 150px; height: 43px;" class="input_captcha" id="comment_captcha" type="text" name="captcha_code" value="" data-format="\d\d\d\d" data-notice="Введите капчу"/>
						<input class="submit_input" type="submit" name="comment" value="Отправить" />
					</div>
				</form>
			</div>   
		</div>
	</div>
	
	{* Связанные товары *}
	{if $related_products}
	<div class="collapsedBlock" id="offers">
		<span class="heading trigger opened">Связанные товары</span>
		<div class="collapsedContent opened">
			<ul class="productList">
				{foreach $related_products as $related_product}
					<li class="product">
						<a data-product="{$related_product->id}" href="products/{$related_product->url}" class="name"><span>{$related_product->name|escape}</span></a>
						<table class="prTable">
							<tr>
								<td>
									<a href="products/{$related_product->url}" class="pic image">
									{if $related_product->image}
										<img src="{$related_product->image->filename|resize:200:200}" alt="{$related_product->name|escape}">
									{else}
										<img src="design/{$settings->theme|escape}/images/noimg.png" alt="{$related_product->name|escape}">
									{/if}
									</a>
								</td>
								<td>
									<a data-product="{$product->id}" href="products/{$related_product->url}" class="title"><span>{$related_product->name|escape}</span></a>
									<span class="price">
									<span class="pr">{$related_product->variant->price|convert}</span><span class="rouble"> {$currency->sign|escape}</span>
									{if $related_product->variant->compare_price > 0}<s>{$related_product->variant->compare_price|convert} <span class="rouble">{$currency->sign|escape}</span></s>{/if}
									</span>
									{if $related_product->variants|count > 0}
										<form class="variants" action="/cart">
											<span class="available">В наличии</span>
											<select  name="variant" style='display:none;'>
												{foreach $product->variants as $v}
													<option value="{$v->id}" {if $v->compare_price > 0}compare_price="{$v->compare_price|convert}"{/if} price="{$v->price|convert}">{$v->name}</option>
												{/foreach}
											</select>
											<input type="submit" class="addSku" value="В корзину" data-result-text="Добавлено"/>
										</form>
									{else}
										<span class="noAvailable">Нет в наличии</span>
										<a class="addCart disabled" href="#">В корзину</a>
									{/if}
								</td>
							</tr>
						</table>
					</li>
				{/foreach}
			</ul>
		</div>
	</div>
	{/if}
</div>