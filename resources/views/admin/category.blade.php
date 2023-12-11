@extends('admin.layouts.app')

@section('title')
    Categories
@endsection

@php
    $page = 'categories';
@endphp

@section('mainpart')

<div class="card">
    <div class="card-header d-flex align-items-center justify-content-between">
        <h4 class="card-title">All Categories</h4>

            <button class="btn btn-primary" data-toggle="modal" data-target="#AddCategoryModal">Add Category</button>
    </div>
    <div class="card-body">
        <table class="table table-bordered" id="dataTable">
            <thead>
                <tr>
                    <th>SL</th>
                    <th>Name</th>
                    <th>Description</th>
                    <th>Action</th>
                </tr>
            </thead>
            <tbody>
                @foreach ($categories as $sl => $category)
                    <tr>
                        <td>{{ ++$sl }}</td>
                        <td>{{ $category->name }}</td>
                        <td>{{ $category->description }}</td>
                        <td>
                            <button class="btn btn-primary btn-sm"><i class="fas fa-edit"></i></button>

                            <button class="btn btn-danger btn-sm"><i class="fas fa-trash"></i></button>
                        </td>
                    </tr>
                @endforeach
            </tbody>
        </table>
    </div>
</div>



        <!-- Category Add Modal-->
<div class="modal fade" id="AddCategoryModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
        aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Add Category</h5>
                    <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">×</span>
                    </button>
                </div>

                {{-- Add Category Form --}}

                <form action="{{ route('category.store') }}" method="POST">
                    @csrf
                    <div class="modal-body">
                        <div class="form-group">
                            <label for="">Category Name</label>

                            <input type="text" name="name" class="form-control @error('name') is-invalid @enderror" value="{{ old('name') }}">

                            @error('name')
                                <span class="invalid-feedback" role="alert">
                                <strong>{{ $message }}</strong></span>
                            @enderror

                        </div>

                        {{-- Description part --}}
                        <div class="form-group">
                            <label for="">Category Description</label>
                            <textarea name="description" class="form-control @error('name') is-invalid @enderror" rows="5">{{ old('description') }}</textarea>

                            @error('description')
                                <span class="invalid-feedback" role="alert">
                                <strong>{{ $message }}</strong></span>
                            @enderror
                        </div>
                    </div>
                        <div class="modal-footer">
                            <a class="btn btn-light" type="button" data-dismiss="modal">Cancel</a>
                            <button class="btn btn-primary" type="submit">Add Category</button>
                        </div>
            </form>

            </div>
        </div>
</div>

@endsection
