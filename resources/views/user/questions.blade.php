@extends('layouts.app')

@section('mainSection')

    @include('layouts.banner')
    {{-- @include('layouts.trending') --}}



    <!-- questions section -->
    <section class="section-sm">
        <div class="container">
        <div class="row justify-content-center">
            <div class="col-lg-8  mb-5 mb-lg-0">
            <h2 class="h5 section-title">Questions</h2>

            <div class="d-flex justify-content-between align-items-center mb-4">
                <h3 class="h5">Frequently asked questions</h5>
                <a href="#askQuestion" class="btn btn-primary">Ask a Question</a>
            </div>

            <div class="card mt-4 border">
                <div class="card-body">
                <div class="d-flex justify-content-between align-items-center mb-4">
                    <a href="#" class="btn-link h4">Your question here...</a>
                    <button class="text-danger border-0 bg-white"> <i class="fas fa-trash"></i> </button>
                </div>

                <ul class="card-meta list-inline mt-4">
                    <li class="list-inline-item">
                    <a href="#" class="card-meta-author">
                        <img src="images/john-doe.jpg">
                        <span>Charls Xaviar</span>
                    </a>
                    </li>
                    <li class="list-inline-item">
                    <i class="ti-calendar"></i>14 jan, 2020
                    </li>
                    <li class="list-inline-item text-primary">
                    <i class="ti-bookmark"></i>Programming
                    </li>
                    <li class="list-inline-item text-primary">
                    <i class="ti-comment"></i>5 answers
                    </li>
                </ul>

                <a href="./question_answers.html" class="btn btn-outline-primary btn-sm mt-4 py-1">See answers</a>
                </div>
            </div>

            <div class="card mt-4 border">
                <div class="card-body">
                <a href="#" class="btn-link h4">Your question here...</a>

                <ul class="card-meta list-inline mt-4">
                    <li class="list-inline-item">
                    <a href="#" class="card-meta-author">
                        <img src="images/john-doe.jpg">
                        <span>Charls Xaviar</span>
                    </a>
                    </li>
                    <li class="list-inline-item">
                    <i class="ti-calendar"></i>14 jan, 2020
                    </li>
                    <li class="list-inline-item text-primary">
                    <i class="ti-bookmark"></i>Programming
                    </li>
                    <li class="list-inline-item text-primary">
                    <i class="ti-comment"></i>5 answers
                    </li>
                </ul>

                <a href="" class="btn btn-outline-primary btn-sm mt-4 py-1">See answers</a>
                </div>
            </div>

            <div class="card mt-4 border">
                <div class="card-body">
                <a href="#" class="btn-link h4">Your question here...</a>

                <ul class="card-meta list-inline mt-4">
                    <li class="list-inline-item">
                    <a href="#" class="card-meta-author">
                        <img src="images/john-doe.jpg">
                        <span>Charls Xaviar</span>
                    </a>
                    </li>
                    <li class="list-inline-item">
                    <i class="ti-calendar"></i>14 jan, 2020
                    </li>
                    <li class="list-inline-item text-primary">
                    <i class="ti-bookmark"></i>Programming
                    </li>
                    <li class="list-inline-item text-primary">
                    <i class="ti-comment"></i>5 answers
                    </li>
                </ul>

                <a href="" class="btn btn-outline-primary btn-sm mt-4 py-1">See answers</a>
                </div>
            </div>


            <!-- ask question form -->
            <h3 class="h4 mb-3" id="askQuestion">Ask a question</h3>

            <form action="" method="post">

                <div class="form-group mb-3">
                <select name="category_id" class="form-control" required>
                    <option disabled selected>Choose Category</option>
                    <option value="">Programming</option>
                    <option value="">Web development</option>
                    <option value="">Mobile app development</option>
                </select>
                </div>

                <div class="form-group mb-3">
                <textarea class="form-control" name="question" rows="10" required
                    placeholder="Enter question here..."></textarea>
                </div>

                <button type="submit" class="btn btn-primary">Submit Question</button>
            </form>

            </div>


            {{-- Rightbar --}}
            @include('layouts.rightbar')

        </div>
        </div>
    </section>
@endsection
