@php
    $arrData = $self->dbClass->select("SELECT * FROM content ORDER BY content_date DESC, content_id DESC");
@endphp
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

    @foreach($arrData as $Index => $Data)
        <a href="content/{!!$Data['content_slug']!!}"><h1>{{$Data['content_title']}}</h1>
        {!!($Data['content_image']!='') ? '<img src="'.$Data['content_image'].'" align="left">' : ''!!}
            {!!$Data['content_description']!!}</a>
        <hr>
    @endforeach

</body>
</html>
