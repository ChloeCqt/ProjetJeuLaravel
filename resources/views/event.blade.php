@extends('layouts.app')

@section('content')
    <style>
       body{
           background-image:url('{{$event->Background->url}}');
       }
    </style>
    <div class="image-perso">
        @foreach($event->characters as $c)
        <img src="{{$c->url}}" >
            @endforeach
    </div>
    <div class="dialogue">
        @if($event->dialog == false)

        @else
           " {{$event->dialog}} "
        @endif
    </div>
    <div class="texte">
        {{$event->text}}
    </div>
    <div class="question">
        @if($event->question == false)

        @else
            {{$event->question}}
        @endif
    </div>
    <div class="button">
        @foreach($event->answers as $a)
            <div>
                <a href="/event/{{$a->idNextEvent}}">{{$a->wording}}</a>
            </div>
        @endforeach
    </div>


@endsection