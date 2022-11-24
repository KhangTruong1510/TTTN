@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-12">
            <div class="card">
                <div class="card-header">Quản Lý tập phim</div>

                
            </div>
            <table class="table" id="tablephim">
              <thead>
                <tr>
                  <th scope="col">#</th>
                  <th scope="col">Tên phim</th>
                  <th scope="col">Hình ảnh phim</th>
                  <th scope="col">Tập phim</th>
                  <th scope="col">Link phim</th>
                  
                  <th scope="col">Quản lý</th>
                </tr>
              </thead>
              <tbody class="order_position">
                @foreach($list_episode as $key => $epi)
                <tr >
                  <th scope="row">{{$key}}</th>
                  <td>{{$epi->movie->title}}</td>
                  <td><img width="100" src="{{asset('uploads/movie/'.$epi->movie->image)}}"></td>
                  <td>{{$epi->episode}}</td>
                  <td>{!!$epi->linkphim!!}</td>
                 
                  <td>
                      {!! Form::open(['method'=>'DELETE','route'=>['episode.destroy',$epi->id],'onsubmit'=>'return confirm("Bạn có chắc muốn xóa?")']) !!}
                        {!! Form::submit('Xóa', ['class'=>'btn btn-danger']) !!}
                      {!! Form::close() !!}
                      <a href="{{route('episode.edit',$epi->id)}}" class="btn btn-warning">Sửa</a>
                  </td>
                </tr>
                @endforeach
              </tbody>
            </table>
        </div>
    </div>
</div>
@endsection
