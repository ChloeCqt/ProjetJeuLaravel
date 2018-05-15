@extends('layouts.app')

@section('content')
<div class="home-container">
    <div class="img-bg">
    </div>
    <div class="txt-bienvenue">
        <h3>Bienvenue sur le jeu 3ème droite, le jeu rempli de suspens ...</h3>
        <p>Etudiant, vous recherchez un appartement pour prendre votre indépendance mais vous êtes complétement fauché. La suite des évènements dépend de vos choix. A vous de bien choisir…</p>
    </div>


    @auth
        <div class="button-game">
            @if(Auth::user()->idEvent != NULL)
                <a href="/event/{{Auth::user()->idEvent}}">Continuer le jeu</a>
                <a href="/event/1">Recommencer le jeu</a>
            @else
                <a href="/event/{{Auth::user()->idEvent}}">Commencer le jeu</a>
            @endif
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