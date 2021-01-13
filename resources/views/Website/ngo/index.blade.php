@extends('Layouts.website')
@section('content')

<div class="ngo">
    <div class="container">
        <div class="row">

            @if($profile)
            <div class="col-12 text-center mb-4 mb-lg-5">
                <img src="{{url('')}}/website/images/ngo/{{$profile->image}}" class="img-fluid" style="height: 200px;">
            </div>
            <div class="col-12">
                <div class="text-center mb-4">
                    <button type="button" class="btn btn-primary shadow-none m-auto py-2 px-4">Donate us</button>
                </div>
                {!! $profile->description !!}
            </div>
            @else
            <div class="col-12 text-center">
                <h5>Opps organization not found !!</h5>
            </div>
            @endif
        </div>
    </div>
</div>

@endsection
