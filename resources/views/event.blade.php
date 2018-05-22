@extends('layouts.app')

@section('content')
    <style>
       .background{
           background-image:url('{{$event->Background->url}}');
       }
    </style>
    <div class="background"></div>
    <div class="chapter-name">
        <h2>{{$event->Chapter->name}}</h2>
    </div>

    <div class="character-container">
        <div class="dialogue">
            @if($event->dialog == false)

            @else
                <p> " {{$event->dialog}} "</p>
            @endif
        </div>
        <div class="image-perso">
            @if($event->Character == false)

            @else
                <h4>
                {{$event->Character->name}}
            </h4>
                <img src="{{$event->Character->url}}" >

            @endif
        </div>
    </div>
    <div class="texte">
        {{$event->text}}
    </div>
    <div class="question">
        @if($event->question == false)

        @else
            <h4>{{$event->question}}</h4>
        @endif
    </div>
    <div class="button">
        @foreach($event->answers as $a)
            <a href="/event/{{$a->idNextEvent}}">
                <div>
                    {{$a->wording}}
                </div>
            </a>
        @endforeach
    </div>

    @if($event->fin == 1)
        <div class="recommencer">
            <a href="/event/1">Recommencer le jeu</a>
            {{--<a href="/" onClick="{{Auth::user()->idEvent = NULL}}">Revenir à la page d'accueil</a>--}}

        </div>
    @endif


@endsection