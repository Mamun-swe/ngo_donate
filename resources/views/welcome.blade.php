
@extends('Layouts.website')
@section('content')

<div class="banner">
    <div id="carouselExampleControls" class="carousel slide" data-ride="carousel">
        <div class="carousel-inner">
            @foreach($banners as $key => $banner)
            <div class="carousel-item  {{ $loop->first ? 'active' : '' }}">
                <img src="{{url('')}}/website/images/banners/{{$banner->banner_image}}" class="w-100 img-fluid">
            </div>
            @endforeach
        </div>
        <a class="carousel-control-prev" href="#carouselExampleControls" role="button" data-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
        </a>
        <a class="carousel-control-next" href="#carouselExampleControls" role="button" data-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
        </a>
    </div>
</div>

<!-- NGO -->
<div class="ngo">
    <div class="container">
        <div class="row mb-4">
            <div class="col-12 col-lg-7 m-auto text-center">
                <h2>NGO</h2>
                <p>Who helped people independent of government involvement are known as non-governmental organizations or non-government organizations</p>
            </div>
        </div>

        <div class="row">
            @foreach($ngos as $ngo)
            <div class="col-12 col-md-6 col-md-4 col-lg-3 text-center m-auto">
                <a href="{{route('ngo.view', $ngo->id)}}">
                    <div class="card rounded-circle mb-4 mb-lg-5">
                        <img src="{{url('')}}/website/images/ngo/{{$ngo->image}}" class="img-fluid">
                    </div>
                </a>
            </div>
            @endforeach
        </div>
    </div>
</div>

<!-- Blog -->
<div class="blog">
    <div class="container">
        <div class="row">
            <div class="col-12 mb-4 text-center">
                <h2>Our Blog</h2>
            </div>

            @foreach($blogs as $blog)
            <div class="col-12 col-md-6 col-lg-4">
                <a href="{{route('blog.read', $blog->id)}}">
                    <div class="card rounded-0 blog-card">
                        <img src="{{url('')}}/website/images/blog/{{$blog->image}}" class="img-fluid">
                        <div class="card-body">
                            <h4>{{$blog->title}}</h4>
                            <p>{{ Illuminate\Support\Str::limit($blog->short_details, 120) }}</p>

                            <small class="mb-0">{{ date('M d, Y', strtotime($blog->created_at)) }}</small>
                        </div>
                    </div>
                </a>
            </div>
            @endforeach

            <div class="col-12 mt-4 text-center">
                <a href="{{route('blog')}}" type="button" class="btn shadow-none">Load More</a>
            </div>

        </div>
    </div>
</div>



@endsection