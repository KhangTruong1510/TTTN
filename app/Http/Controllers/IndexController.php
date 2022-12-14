<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Category;
use App\Models\Genre;
use App\Models\Country;
use App\Models\Movie;
use App\Models\Movie_Genre;
use App\Models\Episode;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\DB as FacadesDB;

class IndexController extends Controller
{
    public function timkiem() {
        if(isset($_GET['search'])){
            $search = $_GET['search'];

            $category = Category::orderBy('position','ASC')->where('status',1)->get();
            $genre = Genre::orderBy('id','DESC')->get();
            $country = Country::orderBy('id','DESC')->get();
    
           
            $movie = Movie::where('title','LIKE', '%'.$search.'%')->orderBy('ngaycapnhat', 'DESC')->paginate(40);
            return view('pages.timkiem', compact('category','genre','country','search','movie'));
        }else {
            return redirect()->to('/');
        }
    }

    public function home(){
        $phimhot = Movie::where('phim_hot',1)->where('status',1)->orderBy('ngaycapnhat', 'DESC')->get();
        $category = Category::orderBy('position','ASC')->where('status',1)->get();
        $genre = Genre::orderBy('id','DESC')->get();
        $country = Country::orderBy('id','DESC')->get();
        $category_home = Category::with('movie')->orderBy('id','DESC')->where('status',1)->get();
    	return view('pages.home', compact('category','genre','country','category_home','phimhot'));
    }
    public function category($slug){
        $category = Category::orderBy('position','ASC')->where('status',1)->get();
        $genre = Genre::orderBy('id','DESC')->get();
        $country = Country::orderBy('id','DESC')->get();

        $cate_slug = Category::where('slug',$slug)->first();
        $movie = Movie::where('category_id',$cate_slug->id)->orderBy('ngaycapnhat', 'DESC')->paginate(40);
    	return view('pages.category', compact('category','genre','country','cate_slug','movie'));
    }
    public function genre($slug){
        $category = Category::orderBy('position','ASC')->where('status',1)->get();
        $genre = Genre::orderBy('id','DESC')->get();
        $country = Country::orderBy('id','DESC')->get();

        $genre_slug = Genre::where('slug',$slug)->first();
        
        //phim nhieu the loai
        $movie_genre = Movie_Genre::where('genre_id',$genre_slug->id)->get();
        $many_genre = [];
        foreach($movie_genre as $key =>$movi){
            $many_genre[] = $movi->movie_id;
        }
        $movie = Movie::whereIn('id',$many_genre)->orderBy('ngaycapnhat', 'DESC')->paginate(40);
    	return view('pages.genre', compact('category','genre','country','genre_slug','movie'));
    }
    public function country($slug){
        $category = Category::orderBy('position','ASC')->where('status',1)->get();
        $genre = Genre::orderBy('id','DESC')->get();
        $country = Country::orderBy('id','DESC')->get();

        $country_slug = Country::where('slug',$slug)->first();
        $movie = Movie::where('country_id',$country_slug->id)->orderBy('ngaycapnhat', 'DESC')->paginate(40);
    	return view('pages.country', compact('category','genre','country','country_slug','movie'));
    }
    public function movie($slug){
        $category = Category::orderBy('position','ASC')->where('status',1)->get();
        $genre = Genre::orderBy('id','DESC')->get();
        $country = Country::orderBy('id','DESC')->get();
       
        $movie = Movie::with('category','genre','country','movie_genre')->where('slug',$slug)->where('status',1)->first();
        $episode_tapdau = Episode::with('movie')->where('movie_id', $movie->id)->orderBy('episode','ASC')->take(1)->first();
        
        
        $related = Movie::with('category','genre','country')->where('category_id',$movie->category->id)->whereNotIn('slug',[$slug])->get();
    	
        $episode = Episode::with('movie')->where('movie_id', $movie->id)->orderBy('episode', 'DESC')->take(3)->get();
        
        $episode_current_list = Episode::with('movie')->where('movie_id',$movie->id)->get();
        $episode_current_list_count = $episode_current_list->count();
        
        return view('pages.movie', compact('category','genre','country','movie','related','episode','episode_tapdau', 'episode_current_list_count'));
    }
    public function watch($slug, $tap){
       
        
        $category = Category::orderBy('position','ASC')->where('status',1)->get();
        $genre = Genre::orderBy('id','DESC')->get();
        $country = Country::orderBy('id','DESC')->get();

        $movie = Movie::with('category','genre','country','movie_genre','episode')->where('slug',$slug)->where('status',1)->first();
        $related = Movie::with('category','genre','country')->where('category_id',$movie->category->id)->whereNotIn('slug',[$slug])->get();
    	
        if(isset($tap)){
            $tapphim = $tap;
            $tapphim = substr($tap,4,20);
            $episode = Episode::where('movie_id',$movie->id)->where('episode',$tapphim)->first();
        }else {
            $tapphim =1;
            $episode = Episode::where('movie_id',$movie->id)->where('episode',$tapphim)->first();
        }

        // dd($movie);        
        return view('pages.watch',compact('category','genre','country','movie', 'episode','tapphim', 'related'));
    }
    public function episode(){
    	return view('pages.episode');
    }
//     ->orderBy(DB::raw('RAND()'))
// 
}
