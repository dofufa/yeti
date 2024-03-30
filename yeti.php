<?php

require_once 'msg.php';

$yaml_file = '_data/foo.yaml';
$arr = yaml_parse_file($yaml_file);

foreach ($arr as $key => $video) {

    $cmd = "
        bash yeti/mkqr.sh ${video['id']};
        bash yeti/mkyt.sh ${video['id']};
    ";
    msg($cmd);
    exec($cmd);

    ## then, commands for ytqr are here
}

function msg($str = null) {
    echo $str;
    echo PHP_EOL;
}
