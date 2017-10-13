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
// SECURITY / ACCESS
// ************************************ //
if (!defined('TYPO3_MODE')) {
    die ('Access denied.');
}



// ************************************ //
// TSCONFIG
// ************************************ //
// TCEMAIN
\TYPO3\CMS\Core\Utility\ExtensionManagementUtility::addPageTSConfig('<INCLUDE_TYPOSCRIPT: source="FILE:EXT:' . $_EXTKEY . '/Configuration/PageTS/TCEMAIN.txt">');

// TCEFORM
\TYPO3\CMS\Core\Utility\ExtensionManagementUtility::addPageTSConfig('<INCLUDE_TYPOSCRIPT: source="FILE:EXT:' . $_EXTKEY . '/Configuration/PageTS/TCEFORM.txt">');

// USER
\TYPO3\CMS\Core\Utility\ExtensionManagementUtility::addUserTSConfig('<INCLUDE_TYPOSCRIPT: source="FILE:EXT:' . $_EXTKEY . '/Configuration/PageTS/USER.txt">');

// RTE
\TYPO3\CMS\Core\Utility\ExtensionManagementUtility::addPageTSConfig('<INCLUDE_TYPOSCRIPT: source="FILE:EXT:' . $_EXTKEY . '/Configuration/PageTS/RTE.txt">');

// CUSTOM RTE SETTINGS (CKEDITOR)
$GLOBALS['TYPO3_CONF_VARS']['RTE']['Presets']['custom'] = 'EXT:' . $_EXTKEY . '/Configuration/PageTs/RTE/custom.yaml';
