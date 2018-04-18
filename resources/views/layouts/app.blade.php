<html lang="{{ app()->getLocale() }}">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>Jeu</title>
</head>

<body>
<nav>
    <a href="/"> Home page</a>
    <a href="/logout">Déconnexion</a>

        <div class="container">
            @yield("content")
        </div>

</nav>
</body>


</html>
