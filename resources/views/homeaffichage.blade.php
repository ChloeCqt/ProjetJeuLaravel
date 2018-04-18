@extends('layouts.app')

@section('content')
<div class="home-container">
    <div class="img-bg">
    </div>
    <div class="txt-bienvenue">
        <h2>Bienvenue sur le jeu 3ème droite.</h2>
    </div>


    @auth
        <div class="button-game">
            <a href="/event/{{Auth::user()->idEvent}}">Continuer le jeu</a>
            <a href="/event/1">Recommencer le jeu</a>
        </div>
    @endauth

    @guest
        <div class="button-login">
            <a href="/login">Se connecter pour jouer</a>
            <a href="/register">Pas encore de compte ? créer un compte</a>
        </div>
    @endguest

</div>
@endsection