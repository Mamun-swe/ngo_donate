
@extends('Layouts.website')
@section('content')

    <div class="auth">
        <div class="flex-center flex-column">
            <div class="card shadow border-0 reg-card">
                <div class="card-header text-center bg-white">
                    <h4 class="mb-0">Register</h4>
                </div>
                <div class="card-body">
                    @if(Session::has('success'))
                    <p class="text-success">{{Session::get('success')}}</p>
                    @endif
                    <form method="POST" action="{{ route('auth.register') }}">
                        @csrf

                        <div class="row">
                            <div class="col-12 col-lg-6">
                                <div class="form-group">
                                    @if($errors->has('name'))
                                        <label class="text-danger" for="name">{{ __('Name is required') }}</label>
                                    @else
                                        <label for="name">{{ __('Name') }}</label>
                                    @endif

                                    <input id="name" type="text" class="form-control rounded-0 shadow-none @error('name') is-invalid @enderror" name="name" value="{{ old('name') }}" autocomplete="name" autofocus>
                                </div>
                            </div>

                            <div class="col-12 col-lg-6">
                                <div class="form-group">
                                    @if($errors->has('email'))
                                        <label class="text-danger" for="email">{{ $errors->first('email') }}</label>
                                    @else
                                    <label for="email">{{ __('E-Mail Address') }}</label>
                                    @endif

                                    <input id="email" type="email" class="form-control rounded-0 shadow-none @error('email') is-invalid @enderror" name="email" value="{{ old('email') }}" autocomplete="email">
                                </div>
                            </div>

                            <div class="col-12">
                                <div class="form-group">
                                    @if($errors->has('user_type'))
                                        <label class="text-danger" for="user_type">{{ $errors->first('user_type') }}</label>
                                    @else
                                    <label for="user_type">{{ __('Account type') }}</label>
                                    @endif

                                    <select class="form-control rounded-0 shadow-none" name="user_type">
                                        <option value="user">User</option>
                                        <option value="ngo">NGO</option>
                                    </select>
                                </div>
                            </div>

                            <div class="col-12 col-lg-6">
                                <div class="form-group">
                                    @if($errors->has('password'))
                                    <label class="text-danger" for="password">{{ $errors->first('password') }}</label>
                                    @else
                                    <label for="password">{{ __('Password') }}</label>
                                    @endif

                                    <input id="password" type="password" class="form-control rounded-0 shadow-none @error('password') is-invalid @enderror" name="password" autocomplete="new-password">
                                </div>
                            </div>

                            <div class="col-12 col-lg-6">
                                <div class="form-group">
                                    <label for="password-confirm">{{ __('Confirm Password') }}</label>
                                    <input id="password-confirm" type="password" class="form-control rounded-0 shadow-none" name="password_confirmation" autocomplete="new-password">
                                </div>
                            </div>

                            <div class="col-12 text-right">
                                <button type="submit" class="btn btn-primary shadow-none text-white px-4">Submit</button>
                            </div>

                        </div>

                        <div class="text-right">
                            <a href="{{ route('login') }}">Go to login</a>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>

@endsection
