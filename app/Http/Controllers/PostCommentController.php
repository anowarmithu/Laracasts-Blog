<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use App\Models\Post;

class PostCommentController extends Controller {
    public function store(Post $post) {
        // add a comment to the given post

        //validation
        request()->validate([
            'body' => 'required',
        ]);

        $post->comments()->create([
            'user_id' => request()->user()->id,
            'body'    => request('body'),
        ]);

        return back();

    }
}
