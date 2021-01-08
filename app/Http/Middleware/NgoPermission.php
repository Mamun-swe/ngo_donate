<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Http\Request;

class NgoPermission
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @return mixed
     */
    public function handle(Request $request, Closure $next)
    {
        if ($request->user() && $request->user()->user_type == 'ngo'){
            return $next($request);
        }else{
            return redirect('denied')->with('status', 'Access denied, You have not permission.');
        }
    }
}
