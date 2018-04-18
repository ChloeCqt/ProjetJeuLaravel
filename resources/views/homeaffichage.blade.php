@extends('layouts.app')

@section('content')
<div class="home-container">
    <div class="img-bg">
    </div>
    <div class="txt-bienvenue">
        <h2>Bienvenue sur le jeu 3ème droite.</h2>
    </div>


    @auth
        <form action="#">

    <input type="submit" id="continue" value="Continuer le jeu">
    <input type="submit" id="restart" value="Recommencer le jeu">

        </form>
    @endauth

    @guest

        <a href="/login">Se connecter pour jouer</a>
        <a href="/register">Pas encore de compte ? créer un compte</a>
    @endguest

</div>
@endsection