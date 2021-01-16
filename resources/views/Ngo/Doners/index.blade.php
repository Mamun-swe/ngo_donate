
@extends('Layouts.ngo.layout')
@section('content')

<div class="container-fluid px-lg-4">
    <div class="row">

        <div class="col-12 my-4">
            <table class="table table-bordered table-responsive-md">
                <thead>
                    <tr>
                        <td><p class="mb-0 text-dark"><b>SL</b></p></td>
                        <td><p class="mb-0 text-dark"><b>Name</b></p></td>
                        <td><p class="mb-0 text-dark"><b>E-mail</b></p></td>
                        <td><p class="mb-0 text-dark"><b>Phone</b></p></td>
                        <td><p class="mb-0 text-dark"><b>Payment method</b></p></td>
                        <td><p class="mb-0 text-dark"><b>Transaction number</b></p></td>
                        <td><p class="mb-0 text-dark"><b>Amount</b></p></td>
                        <td><p class="mb-0 text-dark"><b>Payment date</b></p></td>
                    </tr>
                </thead>
                <tbody>
                @foreach($doners as $key => $doner)
                    <tr>
                        <td><p class="mb-0 text-dark">{{$key+1}}</p></td>
                        <td><p class="mb-0 text-dark">{{$doner->name}}</p></td>
                        <td><p class="mb-0 text-dark">{{$doner->email}}</p></td>
                        <td><p class="mb-0 text-dark">{{$doner->phone}}</p></td>
                        <td><p class="mb-0 text-dark">{{$doner->method}}</p></td>
                        <td><p class="mb-0 text-dark">{{$doner->transaction_number}}</p></td>
                        <td><p class="mb-0 text-dark">{{$doner->amount}}</p></td>
                        <td><p class="mb-0 text-dark">{{ \Carbon\Carbon::parse($doner->created_at)->format('d/m/Y')}}</p></td>
                    </tr>
                @endforeach
                </tbody>
            </table>
        </div>


    </div>
</div>

@endsection