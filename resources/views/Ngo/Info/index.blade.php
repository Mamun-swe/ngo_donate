@extends('Layouts.ngo.layout')
@section('content')

<div class="info-fill p-4">
    <div class="card">
        <div class="card-header bg-white text-center p-4">
            <h5 class="mb-0">Fill-up the form</h5>
        </div>
        <div class="card-body">
            <form action="{{route('ngo.update.info')}}" method="post" enctype="multipart/form-data">
                @csrf 

                <!-- Long description -->
                <div class="form-group mb-3">
                    @if($errors->has('description'))
                        <p class="text-danger mb-2">{{ $errors->first('description') }}</p>
                    @else
                        <p class="text-dark mb-2">NGO Description</p>
                    @endif

                    <textarea name="description" row="10"></textarea>
                </div>

                <!-- Image -->
                <div class="form-group mb-3">
                    @if($errors->has('image'))
                        <p class="text-danger mb-2">{{ $errors->first('image') }}</p>
                    @else
                        <p class="text-dark mb-2">Image</p>
                    @endif
                    <input type="file" name="image">
                </div>


                <button type="submit" class="btn btn-lg btn-primary rounded-0 shadow-none float-right text-white px-5">Submit</button>
            </form>
        </div>
    </div>
</div>
<script>
    CKEDITOR.replace( 'description' );
</script>
@endsection