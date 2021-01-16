@extends('Layouts.website')
@section('content')

<nav class="navbar navbar-dark bg-light justify-content-between">
  <p class="navbar-brand text-dark mb-0">Profile</p>
  <div class="ml-auto">
        <a href="{{ route('auth.logout') }}"
            class="nav-item nav-link active"
            onclick="event.preventDefault();
            document.getElementById('logout-form').submit();">
            {{ __('Logout') }}
        </a>

        <form id="logout-form" action="{{ route('auth.logout') }}" method="POST" style="display: none;">
            @csrf
        </form>
    </div>
</nav>

<div class="container">
    <div class="row">
        <div class="col-12 text-center py-4">
            <h5 class="mb-0">Welcome {{ Auth()->User()->name }}</h5>
        </div>

        <div class="col-12">
            <table class="table table-bordered">
                <thead>
                    <tr>
                        <td><p class="mb-0 text-dark text-center"><b>SL</b></p></td>
                        <td><p class="mb-0 text-dark"><b>Name</b></p></td>
                        <td><p class="mb-0 text-dark"><b>Amount</b></p></td>
                        <td><p class="mb-0 text-dark"><b>Payment date</b></p></td>
                    </tr>
                </thead>
                <tbody>
                @foreach($donates as $key => $donate)
                    <tr>
                        <td><p class="mb-0 text-dark text-center">{{$key+1}}</p></td>
                        <td><p class="mb-0 text-dark">{{$donate->name}}</p></td>
                        <td><p class="mb-0 text-dark">{{$donate->amount}} tk.</p></td>
                        <td><p class="mb-0 text-dark">{{ \Carbon\Carbon::parse($donate->date)->format('d/m/Y')}}</p></td>
                    </tr>
                @endforeach
                </tbody>
            </table>
        </div>
    </div>
</div>


@endsection