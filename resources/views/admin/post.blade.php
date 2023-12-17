@extends('admin.layouts.app')

@section('title')
    posts
@endsection

@php
    $page = 'posts';
@endphp

@section('mainpart')

    <div class="card">
        <div class="card-header d-flex align-items-center justify-content-between">
            <h4 class="card-title">All posts</h4>
            <button class="btn btn-primary" data-toggle="modal" data-target="#AddpostModal">Add post</button>
        </div>
        <div class="card-body">
            <table class="table table-bordered" id="dataTable">
                <thead>
                    <tr>
                        <th>SL</th>
                        <th>Name</th>
                        <th>Description</th>
                        <th>Category</th>
                        <th>Thumnail</th>
                        <th>Status</th>
                        <th>Action</th>
                    </tr>
                </thead>
                <tbody>

                    @foreach ($posts as $key => $post)


                        <tr>
                                <td>{{ ++$key }}</td>
                                <td>{{ $post->title }}</td>
                                <td>
                                    @php
                                        echo $post->description;
                                    @endphp
                                </td>
                                <td>{{ $post->category_name }}</td>

                                <td>
                                    <img src="{{ asset('post_thumbnails/' . $post->thumbnail) }}" alt=""
                                    style="width: 100px">
                                </td>
                            <td>
                                @if ($post->status == 1)
                                    <span class="badge badge-success">Active</span>
                                @else
                                    <span class="badge badge-danger">Inactive</span>
                                @endif
                            </td>
                                <td>
                        {{-- - Unique ID post Part ----}}
                                <div class="d-flex">
                                        <button class="btn btn-primary btn-sm mr-2" data-toggle="modal" data-target="{{ '#Edit' . $post->id . 'postModel'}}"><i class="fas fa-edit"></i></button>

                                    <form action="{{ route('post.destroy', $post->id) }}" method="POST" style="display: inline-block">
                                        @csrf
                                        <input type="hidden" name="_method" value="DELETE">
                                    <button type="submit" class="delete btn btn-danger btn-sm">
                                    <i class="fas fa-trash"></i></button>
                                    </form>
                                </div>
                            </td>
                        </tr>


                        {{-- ###  post Edit Modal ### --}}
                        <div class="modal" id="{{ 'Edit' . $post->id . 'postModel'}}" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
                            aria-hidden="true">
                            <div class="modal-dialog model-lg" role="document">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <h5 class="modal-title" id="exampleModalLabel">{{ $post->title }}</h5>
                                        <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                                            <span aria-hidden="true">×</span>
                                        </button>
                                    </div>

                            <form action="{{ route('post.update', $post->id) }}" method="POST" enctype="multipart/form-data">
                                        @csrf
                                        <input type="hidden" name="_method" value="put">
                                        <div class="modal-body">

    <div class="form-group">
        <label for="">post Title</label>

        <input type="text" name="title" class="form-control @error('title') is-invalid @enderror" value="{{ $post->title }}">

        @error('title')
            <span class="invalid-feedback" role="alert">
            <strong>{{ $message }}</strong>
            </span>
        @enderror

    </div>

    <div class="form-group">
        <label for="post_name">post Category</label>
        <select name="category_id" class="form-control">

            @foreach ($categories as $category)
                <option value="{{ $category->id }}" @if ($category->id == $post->category_id) selected @endif>
                    {{ $category->name }}</option>

            @endforeach
        </select>

    </div>

    {{-- Post Description --}}
    <div class="form-group">
        <label for="">post Description</label>
        <textarea  name="description" class="summernote form-control @error('description') is-invalid @enderror" rows="5">{{ $post->description }}</textarea>

        @error('description')
            <span class="invalid-feedback" role="alert">
            <strong>{{ $message }}</strong></span>
        @enderror
    </div>

    {{-- Post Thumbile --}}
    <div class="form-group">
        <label for="post_name">post Thumbnail</label>
        <input type="file" class="form-control-file" name="thumbnail">
        <input type="hidden" name="old_thumb" value="{{ $post->thumbnail }}">
    </div>

</div>

<label for="status" class="form-check-label">
    <input type="checkbox" value="1" name="status" id="status" @if ($post->status == 1) checked @endif>Status
</label>
                                            <div class="modal-footer">
                                                <a class="btn btn-light" type="button" data-dismiss="modal">Cancel</a>
                                                <button class="btn btn-primary" type="submit">Update post</button>
                                            </div>
                                </form>
                                </div>
                            </div>
                        </div>

                {{-- ### End post Edit Modal ### --}}

                        @endforeach
                </tbody>
            </table>
        </div>
    </div>



        <!-- post Add Modal-->
    <div class="modal" id="AddpostModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
            aria-hidden="true">
            <div class="modal-dialog model-lg" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel">Add post</h5>
                        <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">×</span>
                        </button>
                    </div>

                    {{-- post Title --}}

                    <form action="{{ route('post.store') }}" method="POST" enctype="multipart/form-data">
                        @csrf
                        <div class="modal-body">

                            <div class="form-group">
                                <label for="post_name">post Title</label>

                                <input type="text" name="title" class="form-control @error('title') is-invalid @enderror" value="{{ old('title') }}">

                                @error('title')
                                    <span class="invalid-feedback" role="alert">
                                    <strong>{{ $message }}</strong></span>
                                @enderror

                            </div>

                            <div class="form-group">
                                <label for="post_name">post Category</label>
                                <select name="category_id" class="form-control">

                                    <option selected disabled>Select Category</option>
                                    @foreach ($categories as $category)
                                        <option value="{{ $category->id }}">{{ $category->name }}</option>

                                    @endforeach
                                </select>

                            </div>

                            {{-- Post Description --}}
                            <div class="form-group">
                                <label for="post_name">post Description</label>
                                <textarea name="description" class="summernote form-control @error('description') is-invalid @enderror" rows="5">{{ old('description') }}</textarea>

                                @error('description')
                                    <span class="invalid-feedback" role="alert">
                                    <strong>{{ $message }}</strong></span>
                                @enderror
                            </div>

                            {{-- Post Thumbile --}}
                            <div class="form-group">
                                <label for="post_name">post Thumbnail</label>

                                <input type="file" class="form-control-file" name="thumbnail">
                            </div>

                            {{-- Post Status --}}
                                    <label for="status" class="form-check-label">
                                        <input type="checkbox" value="1" name="status" id="status">Status
                                    </label>


                        </div>
                            <div class="modal-footer">
                                <a class="btn btn-light" type="button" data-dismiss="modal">Cancel</a>
                                <button class="btn btn-primary" type="submit">Add post</button>
                            </div>
                </form>

                </div>
            </div>
    </div>

@endsection
