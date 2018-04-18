@extends('layouts.app')

@section('content')
    <style>
       body{
           background-image:url('{{$event->Background->url}}');
       }
    </style>
    <div id="image-perso">

        <img src="smiley.gif" >
    </div>
    <div id="dialogue">
        @if($event->dialog == false)

        @else
           " {{$event->dialog}} "
        @endif
    </div>
    <div id="texte">
        {{$event->text}}
    </div>

    {{$event->question}}

    <div class="button">
        @foreach($event->answers as $a)
            <div>
                <a href="/event/{{$a->idNextEvent}}">{{$a->wording}}</a>
            </div>
        @endforeach
    </div>


@endsection