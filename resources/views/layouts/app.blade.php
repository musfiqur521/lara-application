<!DOCTYPE html>
<html lang="en-us">
{{-- header part  --}}
    @include('layouts.includes.head')
<body>
    <!-- navigation -->
    @include('layouts.includes.navbar')
    <!-- /navigation -->



    @yield('mainSection')


    {{-- Footer part --}}
    @include('layouts.includes.footer')
    {{-- Scripts part --}}
    @include('layouts.includes.scripts')
</body>
</html>
