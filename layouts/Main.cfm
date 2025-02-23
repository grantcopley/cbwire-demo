<cfoutput>
<!doctype html>
<html>
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link href="https://unpkg.com/tailwindcss@^2/dist/tailwind.min.css" rel="stylesheet">
</head>
<body class="bg-gray-50">
    <div class="bg-blue-100 border border-blue-400 text-blue-700 px-4 py-3 rounded relative" role="alert">
        <span class="block sm:inline">Welcome to the CBWIRE demo app from my ITB 2021 presentation. Please note that CBWIRE has significantly evolved since then, especially with its deep integration with AlpineJS, which is now included with CBWIRE. This example has been updated to work with CBWIRE 4 and changed to include integration with Alpine. - Grant</span>
    </div>
    #wire( "PlanetList" )#
</body>
</html>
</cfoutput>