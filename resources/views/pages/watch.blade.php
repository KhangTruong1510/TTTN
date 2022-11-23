@extends('layout')
@section('content')
<div class="row container" id="wrapper">
         <div class="halim-panel-filter">
            <div class="panel-heading">
               <div class="row">
               <div class="yoast_breadcrumb hidden-xs"><span><span><a href="{{route('category',[$movie->category->slug])}}">{{$movie->category->title}}</a> » <span>
                           <a href="{{route('country',[$movie->country->slug])}}">{{$movie->country->title}}</a> » 

                           @foreach($movie->movie_genre as $gen)
                                    <a href="{{route('genre',$gen->slug)}}" rel="category tag">{{$gen->title}}</a>  » 
                            @endforeach
                           <span class="breadcrumb_last" aria-current="page">{{$movie->title}}  - {{$movie->name_eng}} - Tập {{$tapphim}}</span></span></span></span></div>
                     </div>
               </div>
            </div>
            <div id="ajax-filter" class="panel-collapse collapse" aria-expanded="true" role="menu">
               <div class="ajax"></div>
            </div>
         </div>
         <main id="main-contents" class="col-xs-12 col-sm-12 col-md-8">
            <section id="content" class="test">
               <div class="clearfix wrap-content">
                  <style type="text/css">
                     .iframe_phim iframe {
                        width: 100%;
                        height: 500px;
                     }
                  </style>
                  <div class="iframe_phim">
                  {!! $episode->linkphim!!}
                  </div>
                
                  <div class="collapse" id="moretool">
                     <ul class="nav nav-pills x-nav-justified">
                        <li class="fb-like" data-href="" data-layout="button_count" data-action="like" data-size="small" data-show-faces="true" data-share="true"></li>
                        <div class="fb-save" data-uri="" data-size="small"></div>
                     </ul>
                  </div>
               
                  <div class="clearfix"></div>
                  <div class="clearfix"></div>
                  <div class="title-block">
                  <h1 class="entry-title"><a href="" title="{{$movie->title}}" class="tl">{{$movie->title}} - {{$movie->name_eng}} - Tập {{$tapphim}}</a></h1>
                     
                  </div>
                  <div class="entry-content htmlwrap clearfix collapse" id="expand-post-content">
                     <article id="post-37976" class="item-content post-37976"></article>
                  </div>
                  <div class="clearfix"></div>
                  <div class="text-center">
                     <div id="halim-ajax-list-server"></div>
                  </div>
                  <div id="halim-list-server">
                     <ul class="nav nav-tabs" role="tablist">
                        <li role="presentation" class="active server-1"><a href="#server-0" aria-controls="server-0" role="tab" data-toggle="tab"><i class="hl-server"></i> Vietsub</a></li>
                     </ul>
                     <div class="tab-content">
                        <div role="tabpanel" class="tab-pane active server-1" id="server-0">
                           <div class="halim-server">
                              <ul class="halim-list-eps">
                                 @foreach($movie->episode as $key => $sotap)
                                <a href="{{url('xem-phim/'.$movie->slug.'/tap-'.$sotap->episode )}}"><li class="halim-episode"><span class="halim-btn halim-btn-2 {{$tapphim==$sotap->episode? 'active' : ''}} halim-info-1-1 box-shadow" data-post-id="
                                37976" data-server="1" data-episode="1" data-position="first" data-embed="0" data-title="Xem phim {{$movie->title}} - Tập {{$sotap->episode}} - {{$movie->name_eng}} - vietsub + Thuyết Minh" 
                                data-h1="{{$movie->title}} - {{$sotap->episode}}">{{$sotap->episode}}</span></li></a>
                                
                                 @endforeach


                              </ul> 
                              <div class="clearfix"></div>
                           </div>
                        </div>
                     </div>
                  </div>
                  <div class="clearfix"></div>
                  <div class="htmlwrap clearfix">
                     <div id="lightout"></div>
                  </div>
            </section>
            <section class="related-movies">
                  <div id="halim_related_movies-2xx" class="wrap-slider">
                     <div class="section-bar clearfix">
                        <h3 class="section-title"><span>CÓ THỂ BẠN MUỐN XEM</span></h3>
                     </div>
                     <div id="halim_related_movies-2" class="owl-carousel owl-theme related-film">
                        @foreach($related as $key => $hot)
                        <article class="thumb grid-item post-38498">
                           <div class="halim-item">
                              <a class="halim-thumb" href="{{route('movie',$hot->slug)}}" title="{{$hot->title}}">
                                 <figure><img class="lazy img-responsive" src="{{asset('uploads/movie/'.$hot->image)}}" alt="{{$hot->title}}" title="img-movie"></figure>
                                 <span class="status">
                                 @if($hot->resolution==0)
                                       HD
                                 @elseif($hot->resolution==1)
                                       SD
                                 @elseif($hot->resolution==2)
                                       HDCAM
                                 @elseif($hot->resolution==3)
                                       CAM
                                 @elseif($hot->resolution==4)
                                       FULLHD
                                 @else
                                    Trailer
                                    @endif                   
                                 </span><span class="episode"><i class="fa fa-play" aria-hidden="true"></i>
                                 @if($hot->phude==0)
                                             Phụ đề
                                             @if($hot->season!=0)
                                             - Season.{{$hot->season}}
                                             @endif
                                       @else
                                             Thuyết minh
                                             @if($hot->season!=0)
                                             - Season.{{$hot->season}}
                                             @endif
                                       @endif
                              </span> 
                                 <div class="icon_overlay"></div>
                                 <div class="halim-post-title-box">
                                    <div class="halim-post-title ">
                                       <p class="entry-title">{{$hot->title}}</p>
                                       <p class="original_title">{{$hot->name_eng}}</p>
                                    </div>
                                 </div>
                              </a>
                           </div>
                        </article>
                        @endforeach
                       
                     </div>

                    
                     <script>
                        $(document).ready(function($) {				
                        var owl = $('#halim_related_movies-2');
                        owl.owlCarousel({loop: true,margin: 4,autoplay: true,autoplayTimeout: 4000,autoplayHoverPause: true,nav: true,navText: ['<i class="hl-down-open rotate-left"></i>', '<i class="hl-down-open rotate-right"></i>'],responsiveClass: true,responsive: {0: {items:2},480: {items:3}, 600: {items:4},1000: {items: 4}}})});
                     </script>
                  </div>
               </section>
         </main>
        
      </div>
      </div>
@endsection