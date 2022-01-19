@auth

<x-panel>
    <form method="POST"
          action="/posts/{{ $post->slug }}/comments"
          class="">
        @csrf
        <header class="flex items-center">
            <img src="https://i.pravatar.cc/60?u={{ auth()->id() }}"
                 alt=""
                 width="60"
                 height="60"
                 class="rounded-full">

            <h2 class="ml-3">Want to participate?</h2>
        </header>

        <div class="mt-5">
            <textarea class="w-full text-sm focus:outline-none focus:ring"
                      name="body"
                      id=""
                      rows="5"
                      placeholder="Quick, thing of something to say!"></textarea>
            @error('body')
            <span class='text-xs text-red-500'>{{ $message }}</span>
            @enderror
        </div>

        <div class="flex justify-end mt-2 pt-3 border-t border-gray-200 ">

                    <x-submit-button>Post</x-submit-button>
        </div>
    </form>
</x-panel>
    @else
    <p class="font-semibold">
        <a href="/register"
           class="hover:underline ">Register</a> or
        <a href="/login"
           class="hover:underline">Log in </a>to leave a comment.
    </p>

    @endauth
