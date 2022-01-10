<x-layout>

    <section class="px-6 py-8">

        <main class="max-w-lg mx-auto mt-10 bg-gray-100 border border-gray p-6 rounded-xl">
            <h1 class="text-center font-bold text-xl">Log In!</h1>

            <form method="POST"
                  action="/sessions"
                  class="mt-5">
                @csrf
                <div class="mb-6">
                    <label class=""
                           for="email">
                        Email
                    </label>
                    <input class="border border-gray-400 p-2 w-full"
                           type="email"
                           name="email"
                           id="email"
                           value="{{ old('email') }}">

                    @error('email')
                    <p class="text-red-500 text-xs mt-2">{{ $message }}</p>
                    @enderror
                </div>

                <div class="mb-6">
                    <label class=""
                           for="password">
                        Password
                    </label>
                    <input class="border border-gray-400 p-2 w-full"
                           type="password"
                           name="password"
                           id="password">

                    @error('password')
                    <p class="text-red-500 text-xs mt-2">{{ $message }}</p>
                    @enderror
                </div>

                <div class="mb-6">
                    <button type="submit"
                            class="bg-blue-400 text-white rounded py-2 px-4 hover:bg-blue-500">
                        Submit
                    </button>
                </div>

                {{-- errors at bellow --}}
                {{-- @if ($errors->any())
                @foreach ($errors->all() as $error )

                <ul>
                    <li class="text-red-500 text-xs">{{ $error }}</li>
                </ul>

                @endforeach

                @endif --}}


            </form>
        </main>
    </section>
</x-layout>