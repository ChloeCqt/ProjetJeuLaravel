@extends('layouts.app')
$background = App\Background::with('event.idBackground')->get();

@section('content')
    <style>
       body{
           background-image:url('{{$event->Background->url}}');
       }
    </style>
    <div id="dialogue">
        @if($event->dialog == false)

        @else
           " {{$event->dialog}} "
        @endif
    </div>
    <div id="texte">
        {{$event->text}}
    </div>

    {{$event->Question->wording}}

    <div class="button">
        @foreach($event->Question->answers as $a)
            <div>
                <a href="/event/{{$a->idNextEvent}}">{{$a->wording}}</a>
            </div>
        @endforeach
    </div>


@endsection