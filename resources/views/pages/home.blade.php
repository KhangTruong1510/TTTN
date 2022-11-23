@extends('layout')
@section('content')
<div class="row container" id="wrapper">
            <div class="halim-panel-filter">
               <div id="ajax-filter" class="panel-collapse collapse" aria-expanded="true" role="menu">
                  <div class="ajax"></div>
               </div>
            </div>
            
            <div id="halim_related_movies-2xx" class="wrap-slider">
                     <div class="section-bar clearfix">
                        <h3 class="section-title"><span>Phim hot</span></h3>
                     </div>
                     <div id="halim_related_movies-2" class="owl-carousel owl-theme related-film">
                        @foreach($phimhot as $key => $hot)
                        <article class="thumb grid-item post-38498">
                           <div class="halim-item">
                              <a class="halim-thumb" href="{{route('movie',$hot->slug)}}" title="{{$hot->title}}">
                                 <figure><img class="lazy img-responsive" src="{{asset('uploads/movie/'.$hot->image)}}" alt="{{$hot->title}}" title="{{$hot->title}}"></figure>
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
                        jQuery(document).ready(function($) {            
                        var owl = $('#halim_related_movies-2');
                        owl.owlCarousel({loop: true,margin: 4,autoplay: true,autoplayTimeout: 4000,autoplayHoverPause: true,nav: true,navText: ['<i class="hl-down-open rotate-left"></i>', '<i class="hl-down-open rotate-right"></i>'],responsiveClass: true,responsive: {0: {items:2},480: {items:3}, 600: {items:5},1000: {items: 5}}})});
                     </script>
                  </div>
            <main id="main-contents" class="col-xs-12 col-sm-12 col-md-8">
               @foreach($category_home as $key => $cate_home)
               <section id="halim-advanced-widget-2">

                  <div class="section-heading">
                     <a href="danhmuc.php" title="Phim Bộ">
                     <span class="h-text">{{$cate_home->title}}</span>
                     </a>
                  </div>
                  <div id="halim-advanced-widget-2-ajax-box" class="halim_box">
                     @foreach($cate_home->movie->take(12) as $key => $mov)
                     <article class="col-md-3 col-sm-3 col-xs-6 thumb grid-item post-37606">
                        <div class="halim-item">
                           <a class="halim-thumb" href="{{route('movie',$mov->slug)}}">
                              <figure><img class="lazy img-responsive" src="{{asset('uploads/movie/'.$mov->image)}}" alt="error" title="{{$mov->title}}"></figure>
                              <span class="status">
                               @if($mov->resolution==0)
                                       HD
                                 @elseif($mov->resolution==1)
                                       SD
                                 @elseif($mov->resolution==2)
                                       HDCAM
                                 @elseif($mov->resolution==3)
                                       CAM
                                 @elseif($mov->resolution==4)
                                       FULLHD
                                 @else 
                                    Trailer
                                    @endif                   
                              </span>
                              @if($mov->resolution!=5)
                              <span class="episode">
                              @if($mov->phude==0)
                                             Phụ đề
                                             @if($mov->season!=0)
                                             - Season.{{$mov->season}}
                                             @endif
                                       @else
                                             Thuyết minh
                                             @if($mov->season!=0)
                                             - Season.{{$mov->season}}
                                             @endif
                                       @endif
                  </span> 
                           @endif
                              <div class="icon_overlay"></div>
                              <div class="halim-post-title-box">
                                 <div class="halim-post-title ">
                                    <p class="entry-title">{{$mov->title}}</p>
                                    <p class="original_title">{{$mov->name_eng}}</p>
                                 </div>
                              </div>
                           </a>
                        </div>
                     </article>
                     @endforeach
                  </div>
               </section>
               <div class="clearfix"></div>
               @endforeach
            </main>
            <aside id="sidebar" class="col-xs-12 col-sm-12 col-md-4">
               <div id="halim_tab_popular_videos-widget-7" class="widget halim_tab_popular_videos-widget">
                  <div class="section-bar clearfix">
                     <div class="section-title">
                        <span>Top Views</span>
                       
                     </div>
                  </div>
                  <ul class="nav nav-pills mb-3" id="pills-tab" role="tablist">
                     <li class="nav-item">
                        <a class="nav-link active" id="pills-ngay-tab" data-toggle="pill" href="#ngay" role="tab" aria-controls="pills-home" aria-selected="true">Ngày</a>
                     </li>
                     <li class="nav-item">
                        <a class="nav-link" id="pills-tuan-tab" data-toggle="pill" href="#tuan" role="tab" aria-controls="pills-profile" aria-selected="false">Tuần</a>
                     </li>
                     <li class="nav-item">
                        <a class="nav-link" id="pills-thang-tab" data-toggle="pill" href="#thang" role="tab" aria-controls="pills-contact" aria-selected="false">Tháng</a>
                     </li>
                     </ul>
                     <div class="tab-content" id="pills-tabContent">
                    
                    
                     
                     </div>
                  <div class="clearfix"></div>
               </div>
            </aside>
         </div>
@endsection