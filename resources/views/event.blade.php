@extends('layouts.app')

@section('content')
    <style>
       body{
           background-image:url('{{$event->Background->url}}');
       }
    </style>
    <div class="image-perso">
        @if($event->Character == false)

        @else
        <img src="{{$event->Character->url}}" >
        <span>
            {{$event->Character->name}}
        </span>
        @endif
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
            <a href="/event/{{$a->idNextEvent}}">
                <div>
                    {{$a->wording}}
                </div>
            </a>
        @endforeach
    </div>


@endsection