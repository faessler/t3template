<?php
// ************************************************************************** //
//  _____ _________ ___ __  __ ___ _      _ _____ ___
// |_   _|__ /_   _| __|  \/  | _ \ |    /_\_   _| __|
//   | |  |_ \ | | | _|| |\/| |  _/ |__ / _ \| | | _|
//   |_| |___/ |_| |___|_|  |_|_| |____/_/ \_\_| |___|
//
//
// EXT: T3Template (t3template)
// VER: 0.0.1
//
// LIC: MIT License
// AUT: Jan Fässler / jan@faessler.be
//
// ************************************************************************** //


// ************************************ //
// EXTENSION INFORMATION
// ************************************ //
$EM_CONF[$_EXTKEY] = array (
    'title' => 'T3Template',
    'description' => 'TYPO3 development template with customisable template extension',
    'category' => 'templates',
    'version' => '0.0.1',
    'state' => 'beta',

    'createDirs' => 'fileadmin/images, fileadmin/documents, fileadmin/medias',
    'clearCacheOnLoad' => 1,
    'uploadfolder' => 0,

    'author' => 'Jan Fässler',
    'author_email' => 'jan@faessler.be',

    'constraints' => array (
        'depends' => array (
            'typo3' => '8.0.0-8.9.99',
            'fluid' => '',
            'fluid_styled_content' => '',
        ),
        'conflicts' => array (
            'css_styled_content' => '',
        ),
        'suggests' => array (
        ),
    ),
);
