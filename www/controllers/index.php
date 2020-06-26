<?php
session_start();

class index extends BaseController
{
    function __construct()
    {
        parent::__construct();
    }

    function index() {
        global $CONFIG;
        if (count($this->requestSlug) == 0) {
            $this->loadView("fe_index", 1, ['self' => $this, 'CONFIG' => $CONFIG]);
        } else {
            $this->loadView("fe_404", 1, ['self' => $this, 'CONFIG' => $CONFIG]);
        }
    }

    function content() {
        global $CONFIG;

        $arrData = $this->dbClass->select(
            sprintf(
                "SELECT * FROM content WHERE content_slug = '%s'",
                $this->dbClass->mysqli->real_escape_string(implode('/', $this->requestSlug))
            )
        );
        if (count($arrData) > 0) {
            $this->loadView("fe_content", 1, ['self' => $this, 'CONFIG' => $CONFIG, 'content' => $arrData[0]]);
        } else {
            $this->loadView("fe_404", 1, ['self' => $this, 'CONFIG' => $CONFIG]);
        }
    }
}
