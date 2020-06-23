<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <style type="text/css">
        body {
            font-size: 1em;
            font-family: "Courier New";
        }

        img {
            width: 20%;
            margin-right: 1%;
        }

        hr {
            margin-top: 3%;
        }

        a {
            color: #333;
            text-decoration: none;
        }


    </style>
</head>
<body>

<h1>{{$content['content_title']}}</h1>
    {!!($content['content_image']!='') ? '<img src="'.$CONFIG['website']['path'].$content['content_image'].'" align="left">' : ''!!}
    {!!$content['content_description']!!}
<hr>
<a href="{!!$CONFIG['website']['path']!!}">Back to home</a>

</body>
</html>
