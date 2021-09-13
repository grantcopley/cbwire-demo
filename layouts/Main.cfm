<cfoutput>
<!doctype html>
<html>
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link href="https://unpkg.com/tailwindcss@^2/dist/tailwind.min.css" rel="stylesheet">
    #wireStyles()#
</head>
<body class="">
    #wire( "PlanetList" )#
    #wireScripts()#
</body>
</html>
</cfoutput>