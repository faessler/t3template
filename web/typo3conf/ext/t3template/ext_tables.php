<?php
// ************************************************************************** //
//  _____ _________ ___ __  __ ___ _      _ _____ ___
// |_   _|__ /_   _| __|  \/  | _ \ |    /_\_   _| __|
//   | |  |_ \ | | | _|| |\/| |  _/ |__ / _ \| | | _|
//   |_| |___/ |_| |___|_|  |_|_| |____/_/ \_\_| |___|
//
//
// EXT: (((CUSTOM_EXTKEY_UPPER_CAMEL_CASE))) ((((CUSTOM_EXTKEY))))
// VER: 0.0.1
//
// LIC: MIT License
// AUT: Jan Fässler / jan@faessler.be
//
// ************************************************************************** //


// ************************************ //
// SECURITY / ACCESS
// ************************************ //
if (!defined('TYPO3_MODE')) {
    die ('Access denied.');
}



// ************************************ //
// TYPO3 BACKEND LOGIN
// ************************************ //
$backendExtConf = unserialize($GLOBALS['TYPO3_CONF_VARS']['EXT']['extConf']['backend']);
$backendExtConf['loginLogo'] = 'EXT:' . $_EXTKEY . '/Resources/Public/Images/logo.svg';
$backendExtConf['loginBackgroundImage'] = 'EXT:' . $_EXTKEY . '/Resources/Public/Images/login-background.jpg';
$GLOBALS['TYPO3_CONF_VARS']['EXT']['extConf']['backend'] = serialize($backendExtConf);



// ************************************ //
// TYPOSCRIPT INCLUSION
// ************************************ //
\TYPO3\CMS\Core\Utility\ExtensionManagementUtility::addStaticFile(
    $_EXTKEY,
    'Configuration/TypoScript/',
    $_EXTKEY
);
