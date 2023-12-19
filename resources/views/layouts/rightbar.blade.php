<aside class="col-lg-4 sidebar-home">
    <!-- Search -->
    <div class="widget">
        <h4 class="widget-title"><span>Search</span></h4>
        <form action="#!" class="widget-search">
        <input class="mb-3" id="search-query" name="s" type="search" placeholder="Type &amp; Hit Enter...">
        <i class="ti-search"></i>
        <button type="submit" class="btn btn-primary btn-block">Search</button>
        </form>
    </div>

    <!-- about me -->
    <div class="widget widget-about">
        <h4 class="widget-title">Hi, I am Alex!</h4>
        <img class="img-fluid" src="images/author.jpg" alt="Themefisher">
        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vel in in donec iaculis tempus odio nunc laoreet . Libero ullamcorper.</p>
        <ul class="list-inline social-icons mb-3">

        <li class="list-inline-item"><a href="#"><i class="ti-facebook"></i></a></li>

        <li class="list-inline-item"><a href="#"><i class="ti-twitter-alt"></i></a></li>

        <li class="list-inline-item"><a href="#"><i class="ti-linkedin"></i></a></li>

        <li class="list-inline-item"><a href="#"><i class="ti-github"></i></a></li>

        <li class="list-inline-item"><a href="#"><i class="ti-youtube"></i></a></li>

        </ul>
        <a href="about-me.html" class="btn btn-primary mb-2">About me</a>
    </div>


    <!-- recent post -->
    <div class="widget">
        <h4 class="widget-title">Recent Post</h4>

        @for ($i = 0; $i <3; $i++)

                <!-- post-item -->
                <article class="widget-card">
                    <div class="d-flex">
                        <img class="card-img-sm" src="{{ asset('post_thumbnails/' . $posts[$i]->thumbnail) }}">
                        <div class="ml-3">
                        <h5><a class="post-title" href="{{ route('single_post_view', $posts[$i]->id) }}">{{ $posts[$i]->title }}</a></h5>
                        <ul class="card-meta list-inline mb-0">
                            <li class="list-inline-item mb-0">
                            <i class="ti-calendar"></i> {{ $posts[$i]->created_at->format('d M Y') }}
                            </li>
                        </ul>
                        </div>
                    </div>
                    </article>

        @endfor


    </div>

    <!-- categories -->
    <div class="widget widget-categories">
        <h4 class="widget-title"><span>Categories</span></h4>
        <ul class="list-unstyled widget-list">
        <li><a href="tags.html" class="d-flex">Creativity <small class="ml-auto">(4)</small></a></li>
        <li><a href="tags.html" class="d-flex">Demo <small class="ml-auto">(1)</small></a></li>
        <li><a href="tags.html" class="d-flex">Elements <small class="ml-auto">(1)</small></a></li>
        <li><a href="tags.html" class="d-flex">Food <small class="ml-auto">(1)</small></a></li>
        <li><a href="tags.html" class="d-flex">Microwave <small class="ml-auto">(1)</small></a></li>
        <li><a href="tags.html" class="d-flex">Natural <small class="ml-auto">(3)</small></a></li>
        <li><a href="tags.html" class="d-flex">Newyork city <small class="ml-auto">(1)</small></a></li>
        <li><a href="tags.html" class="d-flex">Nice <small class="ml-auto">(1)</small></a></li>
        <li><a href="tags.html" class="d-flex">Tech <small class="ml-auto">(2)</small></a></li>
        <li><a href="tags.html" class="d-flex">Videography <small class="ml-auto">(1)</small></a></li>
        <li><a href="tags.html" class="d-flex">Vlog <small class="ml-auto">(1)</small></a></li>
        <li><a href="tags.html" class="d-flex">Wondarland <small class="ml-auto">(1)</small></a></li>
        </ul>
    </div>

</aside>
