<html lang="{{ app()->getLocale() }}">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>Laravel</title>
</head>

<body>
<h1> Bienvenido </h1>
<nav>
    <a href="/"> Home page</a>
    <a href="/event/1"> Evenement </a>
    <a href="/parametre/2">Parametre
        <a href="/films">Films</a>

        <div class="container">
            @yield("content")
        </div>

</nav>
</body>


</html>
