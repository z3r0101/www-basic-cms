<?php
$executed = false;
$error = array();

$serverName = (isset($_SERVER['SERVER_NAME'])) ? $_SERVER['SERVER_NAME'] : '';
$serverHTTP = (isset($_SERVER['HTTP_HOST'])) ? 'http://'.$_SERVER['HTTP_HOST'] : '';
$serverDocPath = rtrim(dirname($_SERVER['SCRIPT_NAME']), 'setup');

if (isset($_POST['setup'])) {
    $CONFIG['database'][0]['host'] = trim($_POST['input_database_host_name']);
    $CONFIG['database'][0]['username'] = trim($_POST['input_database_username']);
    $CONFIG['database'][0]['password'] = trim($_POST['input_database_password']);
    $CONFIG['database'][0]['name'] = trim($_POST['input_database_name']);

    if (!file_exists("../www")) {
        $error[] = "www directory not found.";
    }

    $index=0;
    $mysqli = null;
    if (count($error) == 0) {
        $mysqli = @new mysqli($CONFIG['database'][$index]['host'], $CONFIG['database'][$index]['username'], $CONFIG['database'][$index]['password']);
        if (!$mysqli->connect_error) {

            $db_selected = $mysqli->select_db($CONFIG['database'][0]['name']);
            if ($db_selected) {
                #$error[] = "Database Name: {$CONFIG['database'][0]['name']} already exist";
            } else {
                $mysqli->multi_query(
                    "CREATE DATABASE {$CONFIG['database'][0]['name']} CHARACTER SET utf8 COLLATE utf8_unicode_ci;"
                );
                if ($mysqli->error) {
                    $error[] = $mysqli->error;
                }
                $mysqli->close();
            }

        } else {
            $error[] = "Database connection failed. <br>" . $mysqli->connect_error;
        }
    }

    if (count($error) == 0) {
        $arrSetup = glob("*");
        foreach ($arrSetup as $Index => $File) {
            $tFile = basename($File);
            $tPathInfo = pathinfo($tFile);

            if ($tPathInfo['extension'] == 'sql') {
                $mysqli = @new mysqli($CONFIG['database'][$index]['host'], $CONFIG['database'][$index]['username'], $CONFIG['database'][$index]['password']);
                $mysqli->select_db($CONFIG['database'][0]['name']);
                $mysqli->multi_query(file_get_contents($File));
                $mysqli->close();
            }
            if ($tPathInfo['extension'] == 'json') {
                $arrJSON = json_decode(file_get_contents($File), true);
                foreach ($arrJSON as $Index => $Data) {
                    $upload_parent_dir = '../uploads/' . $Data['upload_parent_dir'];

                    if (!file_exists($upload_parent_dir))
                        mkdir($upload_parent_dir, 0777);

                    if (file_exists($upload_parent_dir)) {
                        if (!file_exists($upload_parent_dir . '/' . $Data['id']))
                            mkdir($upload_parent_dir . '/' . $Data['id'], 0777);
                    }

                    if (file_exists($upload_parent_dir . '/' . $Data['id'])) {
                        if (!file_exists($upload_parent_dir . '/' . $Data['id'] . '/' . $Data['upload_container_dir']))
                            mkdir($upload_parent_dir . '/' . $Data['id'] . '/' . $Data['upload_container_dir'], 0777);
                    }

                    $file = fopen($upload_parent_dir . '/' . $Data['id'] . '/' . $Data['upload_container_dir'] . '/' . $Data['file'], "wb");
                    fwrite($file, base64_decode($Data['data']));
                    fclose($file);

                }
            }
        }

        sleep(10);

        include_once "../application/classes/database.php";
        include_once "../application/classes/cryptonite.php";
        $dbClass = new cmsDatabaseClass(0);
        $tCrypt = new cmsCryptonite();
        $arrInsert = $dbClass->insert("cms_users",
            array(
                'CMS_Users_Email'=>trim($_POST['input_cms_username']),
                'CMS_Users_Name'=>trim($_POST['input_cms_username']),
                'CMS_Users_Name_First'=>trim($_POST['input_cms_fname']),
                'CMS_Users_Name_Last'=>trim($_POST['input_cms_lname']),
                'CMS_Users_Password'=>$tCrypt->encode(trim($_POST['input_cms_password'])),
                'CMS_Users_Status'=>1,
                'CMS_Users_Date_Created'=>date("Y-m-d H:i:s"),
                'CMS_Users_Website'=>$serverName
            )
        );

        if (!isset($arrInsert['error'])) {
            $CONFIG['cookie']['prefix'] = $serverName;
            $CONFIG['session']['prefix'] = $serverName;
            $CONFIG['website']['path'] = $serverDocPath;
            $CONFIG['website']['domain'] = $serverName;
            $CONFIG['website']['url'] = rtrim(trim($serverHTTP), "/");

            $executed = true;
        } else {
            $error[] = $arrInsert['error'];
        }
    }

}
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>z3r0101 - Setup</title>
    <link href="../vendors/bootstrap/4.3.1/css/bootstrap.min.css" rel="stylesheet" />
    <style type="text/css">
        body {
            margin: 1%;
            padding: 1%;
        }

        .config_script {
            border: 1px #333 solid;
            background-color: #f4f4f4;
            padding: 1%;
        }
    </style>
</head>
<body>
    <div class="container">
        <h4 class="mb-3">z3r0101 - Setup</h4>
        <?php
        if (count($error) > 0):
            ?>
            <div class="alert alert-danger" role="alert">
                <?php
                print implode('<br>', $error);
                ?>
            </div>
        <?php endif ?>
        <?php
        if (!$executed):
        ?>
        <form name="setup" method="post">
            <hr>
            <h5>MySQL or MariaDB Database Server</h5>
            <div class="form-group">
                <label for="exampleInputEmail1">Database Host Name</label>
                <input type="text" class="form-control" name="input_database_host_name" value="<?=(isset($_POST['input_database_host_name'])) ? trim($_POST['input_database_host_name']) : 'localhost'?>" placeholder="Enter host name or IP address" required>
            </div>
            <div class="form-group">
                <label for="exampleInputEmail1">Database Name</label>
                <input type="text" class="form-control" name="input_database_name" value="<?=(isset($_POST['input_database_name'])) ? trim($_POST['input_database_name']) : ''?>" placeholder="Enter database name" required>
            </div>
            <div class="form-group">
                <label for="exampleInputEmail1">Database User Name</label>
                <input type="text" class="form-control" name="input_database_username" value="<?=(isset($_POST['input_database_username'])) ? trim($_POST['input_database_username']) : ''?>" placeholder="Enter database User Name" required>
            </div>
            <div class="form-group">
                <label for="exampleInputEmail1">Database Password</label>
                <input type="text" class="form-control" name="input_database_password" value="<?=(isset($_POST['input_database_password'])) ? trim($_POST['input_database_password']) : ''?>" placeholder="Enter database User Name" required>
            </div>
            <hr>
            <h5>Content Management System</h5>
            <div class="form-group">
                <label for="exampleInputEmail1">Email</label>
                <input type="text" class="form-control" name="input_cms_username" value="<?=(isset($_POST['input_cms_username'])) ? trim($_POST['input_cms_username']) : ''?>" placeholder="Enter CMS Email Address" required>
            </div>
            <div class="form-group">
                <label for="exampleInputEmail1">Password</label>
                <input type="text" class="form-control" name="input_cms_password" value="<?=(isset($_POST['input_cms_password'])) ? trim($_POST['input_cms_password']) : ''?>" placeholder="Enter CMS Password" required>
            </div>
            <div class="form-group">
                <label for="exampleInputEmail1">First Name</label>
                <input type="text" class="form-control" name="input_cms_fname" value="<?=(isset($_POST['input_cms_fname'])) ? trim($_POST['input_cms_fname']) : ''?>" placeholder="Enter CMS First Name" required>
            </div>
            <div class="form-group">
                <label for="exampleInputEmail1">Last Name</label>
                <input type="text" class="form-control" name="input_cms_lname" value="<?=(isset($_POST['input_cms_lname'])) ? trim($_POST['input_cms_lname']) : ''?>" placeholder="Enter CMS Last Name" required>
            </div>
            <button class="btn btn-primary">Submit</button>
            <input type="hidden" name="setup" value="1">
        </form>
        <?php elseif (count($error) == 0): ?>
            <div class="alert alert-primary" role="alert">
                Database successfully created
            </div>
            <strong>Copy the script below and paste it to &lt;website root&gt;/www/config.php:</strong>
            <div class="config_script mb-3" class="d-inline-block">
                <pre>
&lt;?php
$CONFIG['environment'] = 'development'; #production | development

$CONFIG['database'][0]['host'] = '<?=trim($_POST['input_database_host_name'])?>';
$CONFIG['database'][0]['username'] = '<?=trim($_POST['input_database_username'])?>';
$CONFIG['database'][0]['password'] = '<?=trim($_POST['input_database_password'])?>';
$CONFIG['database'][0]['name'] = '<?=trim($_POST['input_database_name'])?>';

$CONFIG['cookie']['prefix'] = '<?=$CONFIG['cookie']['prefix']?>';
$CONFIG['session']['prefix'] = '<?=$CONFIG['session']['prefix']?>';
$CONFIG['website']['path'] = '<?=$CONFIG['website']['path']?>';
$CONFIG['website']['domain'] = "<?=$CONFIG['website']['domain']?>";
$CONFIG['website']['url'] = '<?=$CONFIG['website']['url']?>';
                </pre>
            </div>
            <strong>CMS Login Credential:</strong>
            <div class="config_script" class="d-inline-block">
                URL: <a href="<?=$CONFIG['website']['url'].$CONFIG['website']['path'].'cms'?>"><?=$CONFIG['website']['url'].$CONFIG['website']['path'].'cms'?></a><br>
                Username: <?=trim($_POST['input_cms_username'])?><br>
                Password: <?=trim($_POST['input_cms_password'])?>
            </div>
        <?php endif ?>
    </div>
    <script src="../vendors/jquery/jquery-3.4.1.min.js"></script>
</body>
</html>