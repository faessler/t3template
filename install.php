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
// CUSTOM VARIABLES
// ************************************ //
$CustomExtkey = "INPUTHERE";
$CustomExtkeyUpperCamelCase = "INPUTHERE";
$CustomCompanyName = "INPUTHERE";
$CustomLegalForm = "INPUTHERE";
$CustomCountry = "INPUTHERE";
$CustomCity = "INPUTHERE";
$CustomZip = "INPUTHERE";
$CustomStreet = "INPUTHERE";
$CustomStreetNr = "INPUTHERE";
$CustomSuffix = "INPUTHERE";
$CustomPhone = "INPUTHERE";
$CustomMobilePhone = "INPUTHERE";
$CustomFax = "INPUTHERE";
$CustomEmail = "INPUTHERE";



// ************************************ //
// KEY AND NEW STRING ARRAYS
// ************************************ //
$keyString = array(
    "(((CUSTOM_EXTKEY)))",
    "(((CUSTOM_EXTKEY_UPPER_CAMEL_CASE)))",
    "(((CUSTOM_COMPANYNAME)))",
    "(((CUSTOM_LEGALFORM)))",
    "(((CUSTOM_COUNTRY)))",
    "(((CUSTOM_CITY)))",
    "(((CUSTOM_ZIP)))",
    "(((CUSTOM_STREET)))",
    "(((CUSTOM_STREETNR)))",
    "(((CUSTOM_SUFFIX)))",
    "(((CUSTOM_PHONE)))",
    "(((CUSTOM_MOBILEPHONE)))",
    "(((CUSTOM_FAX)))",
    "(((CUSTOM_EMAIL)))"
);
$newString = array(
    $CustomExtkey,
    $CustomExtkeyUpperCamelCase,
    $CustomCompanyName,
    $CustomLegalForm,
    $CustomCountry,
    $CustomCity,
    $CustomZip,
    $CustomStreet,
    $CustomStreetNr,
    $CustomSuffix,
    $CustomPhone,
    $CustomMobilePhone,
    $CustomFax,
    $CustomEmail
);



// ************************************ //
// REMOVE .GIT FOLDER
// ************************************ //
shell_exec("rm -rf ./.git");



// ************************************ //
// REPLACE STRINGS IN EACH FILE
// ************************************ //
foreach (new RecursiveIteratorIterator(new RecursiveDirectoryIterator('.')) as $filename) {
    // filter out "." and ".."
    if ($filename->isDir()) continue;

    // filter out ".git" directory
    if (strpos($filename, '.git/') == false) {
        // Get file content
        $fileContent = file_get_contents($filename);

        // Replace key with new string in the current fetched filecontent
        $fileContent = str_replace($keyString, $newString, $fileContent);

        // Write changed filecontent to current file
        file_put_contents($filename, $fileContent);
    }
}



// ************************************ //
// RENAME EXTENSION FOLDER
// ************************************ //
shell_exec("mv ./web/typo3conf/ext/t3template ./web/typo3conf/ext/$CustomExtkey");
?>
