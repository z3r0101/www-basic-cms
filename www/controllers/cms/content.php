<?php

class content extends BaseControllerCMS
{
    function __construct()
    {
        parent::__construct();
    }

    function index()
    {
        $this->renderPage(
            function () {
                global $CONFIG;
	    },
            function () {                                                                                                               
                global $CONFIG;

                $this->postSubmittedEvent['end'] = function ($pArrData) {
                    $this->dbClass->update("content",
                        array(
                            'content_slug' => $this->cmsPost['primary']['content_date'].'/'.cmsTools::makeSlug($this->cmsPost['primary']['content_title'])
                        ),
                        $pArrData['value']
                    );
                };
            }
	    );
    }
}