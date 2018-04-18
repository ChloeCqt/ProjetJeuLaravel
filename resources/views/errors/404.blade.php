@extends('layouts.app')

@section('content')
C'est la page 404


@auth
    <a href="/event/{{Auth::user()->idEvent}}">Continuer le jeu</a>
@endauth


@endsection