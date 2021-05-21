<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Slide;
use DB;
use App\Http\Middleware\Locale;
use Session;
use App\Discussion;
use App\Models;
use App\Category;
use DevDojo\Chatter\Helpers\ChatterHelper as Helper;

class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return view('/beeforum');
    }
	
	/**Search post*/
	
	public function search(Request $request){
		$discussions = Models::discussion()->with('user')->with('post')->with('postsCount')->with('category')->orderBy(config('chatter.order_by.discussions.order'), config('chatter.order_by.discussions.by'));
        if (isset($slug)) {
            $category = Models::category()->where('slug', '=', $slug)->first();
            
            if (isset($category->id)) {
                $current_category_id = $category->id;
                $discussions = $discussions->where('chatter_category_id', '=', $category->id);
            } else {
                $current_category_id = null;
            }
        }
		$categories = Models::category()->get();
        $categoriesMenu = Helper::categoriesMenu(array_filter($categories->toArray(), function ($item) {
            return $item['parent_id'] === null;
        }));
		$search_discussion = Discussion::where('title', 'like', '%'.$request->key.'%')->get();
		return view('search', compact('search_discussion', 'categoriesMenu'));
	}
	
	/**About*/
	public function about(){
		return view('about');
	}
	
	public function changeLanguage(Request $request){
		$lang = $request->language;
        $language = config('app.locale');
        if ($lang == 'en') {
         $language = 'en';
        }
        if ($lang == 'vi') {
         $language = 'vi';
         }
         Session::put('language', $language);
         return redirect('/beeforum');
	}
}
