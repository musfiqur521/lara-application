<header class="navigation fixed-top">
    <div class="container">
        <nav class="navbar navbar-expand-lg navbar-white">
        <a class="navbar-brand order-1" href="{{ url('/') }}">
            <img class="img-fluid" width="100px" src="{{ asset('user_assets/images/logo.png') }}"
            alt="Blog Application">
        </a>
        <div class="order-3 text-center collapse navbar-collapse order-lg-2" id="navigation">
            <ul class="mx-auto navbar-nav">
                <li class="nav-item">
                    <a class="nav-link" href="{{ url('/') }}">Home</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="{{ route('about') }}">About</a>
                </li>

                <li class="nav-item">
                    <a class="nav-link" href="{{ route('contact') }}">Contact</a>
                </li>

                <li class="nav-item">
                    <a class="nav-link" href="{{ route('questions') }}">Question & Answer</a>
                </li>
            </ul>
        </div>

        <div class="order-2 order-lg-3 d-flex align-items-center">
            <ul class="navbar-nav mx-auto">
                <li class="nav-item dropdown">
                    <a class="nav-link" href="#" role="button" data-toggle="dropdown" aria-haspopup="true"
                    aria-expanded="false">

                    @auth
                    @if (auth()->user()->photo)

                    <img src="{{ asset('images/user_photos/'. auth()->user()->photo) }}" alt="" class="rounded-circle" style="height: 40px">

                    @else

                    <img src="{{ asset('images/user_photos/no_image.jpg') }}" alt="" class="rounded-circle" style="height: 40px">

                    @endif
                    @else

                    {{-- <img src="{{ asset('images/user_photos/no_image.jpg') }}" alt="" class="rounded-circle" style="height: 40px"> --}}
                    <i class="fas fa-user-circle" style="font-size: 20px"></i>
                    @endauth

                    <i class="ti-angle-down ml-1"></i>
                    </a>
                    <div class="dropdown-menu">

                    @auth
                        <a class="dropdown-item" href="author.html">{{ auth()->user()->name }}</a>

                        <form action="{{ route('logout') }}" method="POST">
                        @csrf
                        <button type="submit" class="logout dropdown-item">Logout</button>
                        </form>

                        @else
                        <a class="dropdown-item" href="{{ route('login') }}">Login</a>

                        <a class="dropdown-item" href="{{ route('register') }}">Register</a>
                    @endauth


                    </div>
                </li>
            </ul>

            <!-- search -->
            <form class="search-bar">
            <input id="search-query" name="s" type="search" placeholder="Search..">
            </form>

            <button class="navbar-toggler border-0 order-1" type="button" data-toggle="collapse" data-target="#navigation">
            <i class="ti-menu"></i>
            </button>
        </div>

        </nav>
    </div>
    </header>
