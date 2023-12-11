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
            <h3 class="card-title">Categories</h3>

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
                td<tbody>
                    <tr>
                        <td>SL</td>
                        <td>Name</td>
                        <td>Description</td>
                        <td>Action</td>
                    </tr>
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
                                <input type="text" name="name" class="form-control">
                            </div>
                            <div class="form-group">
                                <label for="">Category Description</label>
                                <textarea name="description" class="form-control" rows="5"></textarea>
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
