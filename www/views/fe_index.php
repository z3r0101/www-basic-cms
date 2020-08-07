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
        <nav class="navbar navbar-expand-lg navbar-light bg-light mb-2">
            <a class="navbar-brand" href="#">
                <img src="{!!RES_URL!!}images/logo.png" width="30" height="30" class="d-inline-block align-top" alt="">
                BASIC WEBSITE
            </a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarText" aria-controls="navbarText" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarText">
                <ul class="navbar-nav ml-auto">
                    <li class="nav-item active">
                        <a class="nav-link" href="#">Home <span class="sr-only">(current)</span></a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Content</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">About</a>
                    </li>
                </ul>
                <span class="navbar-text"></span>
            </div>
        </nav>
        @foreach($arrData as $Index => $Data)
            <a href="{!!$CONFIG['website']['path']!!}content/{!!$Data['content_slug']!!}"><h1>{{$Data['content_title']}}</h1>
            {!!($Data['content_upload']!='') ? '<img class="content-img" src="'.UPLOADS_URL.$Data['content_upload'].'" align="left">' : ''!!}
                {!!$Data['content_description']!!}</a>
            <hr>
        @endforeach
    </div>
    <script src="{!!VENDORS_URL!!}jquery/jquery-3.4.1.min.js"></script>
    <script src="{!!VENDORS_URL!!}bootstrap/4.3.1/js/bootstrap.js"></script>
</body>
</html>
