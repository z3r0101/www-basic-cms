@php
    $arrData = $self->dbClass->select("SELECT * FROM content ORDER BY content_date DESC, content_id DESC");
@endphp
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Title</title>
    <link href="{!!VENDORS_URL!!}bootstrap/4.3.1/css/bootstrap.min.css" rel="stylesheet" />
    <link href="{!!RES_URL!!}css/global.css" rel="stylesheet" />
</head>
<body>
    <div class="container">
    @foreach($arrData as $Index => $Data)
        <a href="{!!$CONFIG['website']['path']!!}content/{!!$Data['content_slug']!!}"><h1>{{$Data['content_title']}}</h1>
        {!!($Data['content_image']!='') ? '<img src="'.$Data['content_image'].'" align="left">' : ''!!}
            {!!$Data['content_description']!!}</a>
        <hr>
    @endforeach
    </div>
    <script src="{!!VENDORS_URL!!}jquery/jquery-3.4.1.min.js"></script>
    <script src="{!!VENDORS_URL!!}bootstrap/4.3.1/js/bootstrap.js"></script>
</body>
</html>
