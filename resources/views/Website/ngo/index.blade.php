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
                    <button type="button" class="btn btn-primary shadow-none m-auto py-2 px-4" data-toggle="modal" data-target="#exampleModal">Donate us</button>
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


<!-- Modal -->
<div class="modal fade" id="exampleModal" data-backdrop="false" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Dunation form</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <form action="{{ route('donate') }}" method="post">
            @csrf 

            <input type="hidden" name="ngo_id" value="{{ $id }}">

            <div class="form-group mb-3">
                <small>Name</small>
                <input 
                    type="text" 
                    class="form-control shadow-none" 
                    name="name" 
                    value="{{ Auth()->User() ? Auth()->User()->name : null }}"
                    placeholder="Your name" 
                    required
                >
            </div>

            <div class="form-group mb-3">
                <small>E-mail</small>
                <input 
                    type="email" 
                    class="form-control shadow-none"
                    name="email" 
                    value="{{ Auth()->User() ? Auth()->User()->email : null }}"
                    placeholder="Your e-mail" 
                    required
                >
            </div>

            <div class="form-group mb-3">
                <small>Phone</small>
                <input 
                    type="text" 
                    class="form-control shadow-none" 
                    name="phone" 
                    placeholder="Your phone" 
                    required
                >
            </div>

            <div class="form-group mb-3">
                <small>Transaction method</small>
                <select name="method" class="form-control shadow-none">
                    <option value="bkash">Bkash</option>
                    <option value="dbbl">DBBL</option>
                    <option value="nagad">Nagad</option>
                </select>
            </div>

            <div class="form-group mb-3">
                <small>Transaction Number</small>
                <input 
                    type="text" 
                    class="form-control shadow-none" 
                    name="transaction_number" 
                    placeholder="Transaction Number" 
                    required
                >
            </div>

            <div class="form-group mb-3">
                <small>Amount</small>
                <input 
                    type="number" 
                    class="form-control shadow-none" 
                    name="amount" 
                    placeholder="Amount" 
                    required
                >
            </div>

            <button type="submit" class="btn btn-primary shadow-none float-right px-4">Send</button>

        </form>
      </div>
    </div>
  </div>
</div>
</div>

@endsection
