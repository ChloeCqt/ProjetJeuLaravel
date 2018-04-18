@extends('layouts.app')

@section('content')
<div class="home-container">
    <div class="img-bg">
    </div>
    <div class="txt-bienvenue">
        <h2>Bienvenue sur le jeu 3ème droite.</h2>
    </div>


    @auth
        <a href="/event/{{Auth::user()->idEvent}}">Continuer le jeu</a>
        <a href="/">Recommencer le jeu</a>


    @endauth

    @guest

        <a href="/login">Se connecter pour jouer</a>
        <a href="/register">Pas encore de compte ? créer un compte</a>
    @endguest

</div>
@endsection