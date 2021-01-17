@extends('Layouts.ngo.layout')
@section('content')
<div class="dashboard">
    <div class="container py-3">
        <div class="row">

            <div class="col-6 col-md-4 col-lg-3">
                <div class="card rounded-0 border-0 shadow-sm mb-3">
                    <div class="card-body">
                        <div class="flex-center flex-column text-center">
                            <h3 class="mb-0"><b>{{$doners}}</b></h3>
                            <h5 class="mb-0">Doners</h5>
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-6 col-md-4 col-lg-3">
                <div class="card rounded-0 border-0 shadow-sm mb-3">
                    <div class="card-body">
                        <div class="flex-center flex-column text-center">
                            <h3 class="mb-0"><b>{{$total}}</b></h3>
                            <h5 class="mb-0">Donate</h5>
                        </div>
                    </div>
                </div>
            </div>

        </div>
    </div>
</div>

@endsection