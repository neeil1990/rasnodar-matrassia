<section class="blog_post">
    <div class="container">

        <!-- row -->
        <div class="row">

            <!-- Center colunm-->
            <div class="center_column col-xs-12 col-sm-12" id="center_column">
                <div class="page-title">
                    <h2>{$page->name}</h2>
                </div>
                <ul class="blog-posts">

                    {foreach $posts as $post}
                    <li class="post-item wow fadeInUp">
                        <article class="entry">
                            <div class="row">
                                <div class="col-sm-4">
                                    <div class="entry-thumb image-hover2">
                                        <a href="blog/{$post->url}">
                                            {if preg_match('/src="(.*?)"/i', $post->annotation, $matches)}
                                                <figure><img src="{$matches[1]}" alt="{$post->name|escape}"></figure>
                                            {/if}
                                        </a>
                                    </div>
                                </div>
                                <div class="col-sm-8">
                                    <h3 class="entry-title"><a href="blog/{$post->url}">{$post->name|escape}</a></h3>
                                    <div class="entry-meta-data"> <span class="author"> <i class="pe-7s-user"></i>&nbsp; by: <a href="#">Admin</a></span> <span class="cat"> <i class="pe-7s-folder"></i>&nbsp; <a href="#">News, </a> <a href="#">Promotions</a> </span> <span class="comment-count"> <i class="pe-7s-comment"></i>&nbsp; 3 </span> <span class="date"><i class="pe-7s-date"></i>&nbsp; {$post->date|date}</span> </div>
                                    <div class="rating"> <i class="fa fa-star"></i> <i class="fa fa-star"></i> <i class="fa fa-star"></i> <i class="fa fa-star-o"></i> <i class="fa fa-star-o"></i>&nbsp; <span>(5 votes)</span></div>
                                    <div class="entry-excerpt">{$post->annotation|strip_tags}</div>
                                    <div class="entry-more"> <a href="blog/{$post->url}" class="button"> Подробнее &nbsp; <i class="fa fa-angle-double-right"></i></a> </div>
                                </div>
                            </div>
                        </article>
                    </li>
                    {/foreach}
                </ul>
                <div class="sortPagiBar">
                    <div class="pagination-area " >
                        <ul>
                            <li><a class="active" href="#">1</a></li>
                            <li><a href="#">2</a></li>
                            <li><a href="#">3</a></li>
                            <li><a href="#"><i class="fa fa-angle-right"></i></a></li>
                        </ul>
                    </div>
                </div>
            </div>
            <!-- ./ Center colunm -->
        </div>
        <!-- ./row-->
    </div>
</section>
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