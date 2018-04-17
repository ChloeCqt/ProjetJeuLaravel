@extends('layouts.app')

@section('content')
    <div id="dialogue">
        @if($event->dialog == false)
ca amrche
        @else
            {{$event->dialog}}
        @endif
    </div>
    <div id="texte">
        {{$event->text}}
    </div>



@endsection