@extends('admin.layouts.app')

@section('title')
    Categories
@endsection

@php
    $page = 'categories';
@endphp

@section('mainpart')

    <div class="card">
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

@endsection
