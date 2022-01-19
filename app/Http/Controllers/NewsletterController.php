<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use App\Services\Newsletter;
use Illuminate\Http\Request;
use Illuminate\Validation\ValidationException;

class NewsletterController extends Controller {
    public function __invoke(Newsletter $newsletter) {
        request()->validate(['email' => 'required | email']);

        try {
            $newsletter->subscribe(request('email'));
        } catch (\Exception$e) {
            throw ValidationException::withMessages([
                'email' => "This email looks like a dummy email. Couldn't added to our newsletter list.",
            ]);
        }
        return back()->with('success', 'You are now signed up for our newsletter!');
    }
}
