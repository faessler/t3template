-- ************************************************************************** --
--  _____ _________ ___ __  __ ___ _      _ _____ ___
-- |_   _|__ /_   _| __|  \/  | _ \ |    /_\_   _| __|
--   | |  |_ \ | | | _|| |\/| |  _/ |__ / _ \| | | _|
--   |_| |___/ |_| |___|_|  |_|_| |____/_/ \_\_| |___|
--
--
-- EXT: T3Template (t3template)
-- VER: 0.0.1
--
-- LIC: MIT License
-- AUT: Jan Fässler / jan@faessler.be
--
-- ************************************************************************** --


-- ************************************ --
-- PAGES
-- ************************************ --
-- Tabellenstruktur für Tabelle `pages`
CREATE TABLE `pages` (
  `uid` int(11) NOT NULL,
  `pid` int(11) NOT NULL DEFAULT '0',
  `t3ver_oid` int(11) NOT NULL DEFAULT '0',
  `t3ver_id` int(11) NOT NULL DEFAULT '0',
  `t3ver_wsid` int(11) NOT NULL DEFAULT '0',
  `t3ver_label` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `t3ver_state` smallint(6) NOT NULL DEFAULT '0',
  `t3ver_stage` int(11) NOT NULL DEFAULT '0',
  `t3ver_count` int(11) NOT NULL DEFAULT '0',
  `t3ver_tstamp` int(11) NOT NULL DEFAULT '0',
  `t3ver_move_id` int(11) NOT NULL DEFAULT '0',
  `t3_origuid` int(11) NOT NULL DEFAULT '0',
  `tstamp` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `sorting` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `deleted` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `perms_userid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `perms_groupid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `perms_user` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `perms_group` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `perms_everybody` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `editlock` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `crdate` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `cruser_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `hidden` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `doktype` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `TSconfig` text COLLATE utf8_unicode_ci,
  `is_siteroot` smallint(6) NOT NULL DEFAULT '0',
  `php_tree_stop` smallint(6) NOT NULL DEFAULT '0',
  `url` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `starttime` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `endtime` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `urltype` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `shortcut` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `shortcut_mode` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `no_cache` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `fe_group` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `subtitle` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `layout` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `target` varchar(80) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `media` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `lastUpdated` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `keywords` text COLLATE utf8_unicode_ci,
  `cache_timeout` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `cache_tags` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `newUntil` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `description` text COLLATE utf8_unicode_ci,
  `no_search` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `SYS_LASTCHANGED` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `abstract` text COLLATE utf8_unicode_ci,
  `module` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `extendToSubpages` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `author` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `author_email` varchar(80) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `nav_title` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `nav_hide` smallint(6) NOT NULL DEFAULT '0',
  `content_from_pid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `mount_pid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `mount_pid_ol` smallint(6) NOT NULL DEFAULT '0',
  `alias` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `l18n_cfg` smallint(6) NOT NULL DEFAULT '0',
  `fe_login_mode` smallint(6) NOT NULL DEFAULT '0',
  `backend_layout` varchar(64) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `backend_layout_next_level` varchar(64) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `tsconfig_includes` text COLLATE utf8_unicode_ci,
  `tx_impexp_origuid` int(11) NOT NULL DEFAULT '0',
  `categories` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Daten für Tabelle `pages`
INSERT INTO `pages` (`uid`, `pid`, `t3ver_oid`, `t3ver_id`, `t3ver_wsid`, `t3ver_label`, `t3ver_state`, `t3ver_stage`, `t3ver_count`, `t3ver_tstamp`, `t3ver_move_id`, `t3_origuid`, `tstamp`, `sorting`, `deleted`, `perms_userid`, `perms_groupid`, `perms_user`, `perms_group`, `perms_everybody`, `editlock`, `crdate`, `cruser_id`, `hidden`, `title`, `doktype`, `TSconfig`, `is_siteroot`, `php_tree_stop`, `url`, `starttime`, `endtime`, `urltype`, `shortcut`, `shortcut_mode`, `no_cache`, `fe_group`, `subtitle`, `layout`, `target`, `media`, `lastUpdated`, `keywords`, `cache_timeout`, `cache_tags`, `newUntil`, `description`, `no_search`, `SYS_LASTCHANGED`, `abstract`, `module`, `extendToSubpages`, `author`, `author_email`, `nav_title`, `nav_hide`, `content_from_pid`, `mount_pid`, `mount_pid_ol`, `alias`, `l18n_cfg`, `fe_login_mode`, `backend_layout`, `backend_layout_next_level`, `tsconfig_includes`, `tx_impexp_origuid`, `categories`) VALUES
(1, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1507926968, 256, 0, 1, 0, 31, 27, 0, 0, 1507926933, 1, 0, 'Home', 1, NULL, 1, 0, '', 0, 0, 1, 0, 0, 0, '', '', 0, '', 0, 0, NULL, 0, '', 0, NULL, 0, 0, NULL, '', 0, '', '', '', 0, 0, 0, 0, '', 0, 0, '', '', NULL, 0, 0),
(2, 1, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1507931126, 256, 0, 1, 0, 31, 27, 0, 0, 1507930957, 1, 0, 'Error 404', 1, NULL, 0, 0, '', 0, 0, 1, 0, 0, 0, '', '', 0, '', 0, 0, NULL, 0, '', 0, NULL, 0, 0, NULL, '', 0, '', '', '', 1, 0, 0, 0, '', 0, 0, '', '', NULL, 0, 0),
(3, 1, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1507931075, 512, 0, 1, 0, 31, 27, 0, 0, 1507930976, 1, 0, 'Impressum', 1, NULL, 0, 0, '', 0, 0, 1, 0, 0, 0, '', '', 0, '', 0, 0, NULL, 0, '', 0, NULL, 0, 0, NULL, '', 0, '', '', '', 1, 0, 0, 0, '', 0, 0, '', '', NULL, 0, 0),
(4, 1, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1507931050, 768, 0, 1, 0, 31, 27, 0, 0, 1507930992, 1, 0, 'Meta Navigation', 1, NULL, 0, 0, '', 0, 0, 1, 0, 0, 0, '', '', 0, '', 0, 0, NULL, 0, '', 0, NULL, 0, 0, NULL, '', 0, '', '', '', 1, 0, 0, 0, '', 0, 0, '', '', NULL, 0, 0),
(5, 1, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1507931061, 1024, 0, 1, 0, 31, 27, 0, 0, 1507931016, 1, 0, 'Fusszeilen Navigation', 1, NULL, 0, 0, '', 0, 0, 1, 0, 0, 0, '', '', 0, '', 0, 0, NULL, 0, '', 0, NULL, 0, 0, NULL, '', 0, '', '', '', 1, 0, 0, 0, '', 0, 0, '', '', NULL, 0, 0);



-- ************************************ --
-- FILEMOUNTS
-- ************************************ --
-- Tabellenstruktur für Tabelle `sys_filemounts`
CREATE TABLE `sys_filemounts` (
  `uid` int(10) UNSIGNED NOT NULL,
  `pid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `tstamp` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `title` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` varchar(2000) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `path` varchar(120) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `base` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `hidden` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `deleted` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `sorting` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `read_only` smallint(5) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Daten für Tabelle `sys_filemounts`
INSERT INTO `sys_filemounts` (`uid`, `pid`, `tstamp`, `title`, `description`, `path`, `base`, `hidden`, `deleted`, `sorting`, `read_only`) VALUES
(1, 0, 1507930745, 'Bilder', '', '/images/', 1, 0, 0, 256, 0),
(2, 0, 1507930767, 'Dokumente', '', '/documents/', 1, 0, 0, 128, 0),
(3, 0, 1507930790, 'Medien', '', '/media/', 1, 0, 0, 64, 0);



-- ************************************ --
-- LANGUAGES
-- ************************************ --
-- Tabellenstruktur für Tabelle `sys_language`
CREATE TABLE `sys_language` (
  `uid` int(10) UNSIGNED NOT NULL,
  `pid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `tstamp` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `hidden` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `title` varchar(80) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `flag` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `language_isocode` varchar(2) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `static_lang_isocode` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `sorting` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Daten für Tabelle `sys_language`
INSERT INTO `sys_language` (`uid`, `pid`, `tstamp`, `hidden`, `title`, `flag`, `language_isocode`, `static_lang_isocode`, `sorting`) VALUES
(1, 0, 1507930431, 1, 'Français', 'fr', 'fr', 0, 256),
(2, 0, 1507930432, 1, 'Italiano', 'it', 'it', 0, 512),
(3, 0, 1507930433, 1, 'English', 'en-us-gb', 'en', 0, 768),
(4, 0, 1507930433, 1, 'Nederlands', 'nl', 'nl', 0, 1024),
(5, 0, 1507930434, 1, 'Español', 'es', 'es', 0, 1280),
(6, 0, 1507930435, 1, 'Português', 'pt', 'pt', 0, 1536),
(7, 0, 1507930435, 1, 'Russian', 'ru', 'ru', 0, 1792),
(8, 0, 1507930438, 1, 'Chinese', 'cn', 'zh', 0, 2048),
(9, 0, 1507930440, 1, 'Japanese', 'jp', 'ja', 0, 2304);



-- ************************************ --
-- INDIZES OF EXPORTED TABLES
-- ************************************ --
-- Indizes für die Tabelle `pages`
ALTER TABLE `pages`
  ADD PRIMARY KEY (`uid`),
  ADD KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`),
  ADD KEY `parent` (`pid`,`deleted`,`sorting`),
  ADD KEY `alias` (`alias`),
  ADD KEY `determineSiteRoot` (`is_siteroot`);

-- Indizes für die Tabelle `sys_filemounts`
ALTER TABLE `sys_filemounts`
  ADD PRIMARY KEY (`uid`),
  ADD KEY `parent` (`pid`);

-- Indizes für die Tabelle `sys_language`
ALTER TABLE `sys_language`
  ADD PRIMARY KEY (`uid`),
  ADD KEY `parent` (`pid`);


-- ************************************ --
-- AUTO_INCREMENT OF EXPORTED TABLES
-- ************************************ --
-- AUTO_INCREMENT für Tabelle `pages`
ALTER TABLE `pages`
  MODIFY `uid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

-- AUTO_INCREMENT für Tabelle `sys_filemounts`
ALTER TABLE `sys_filemounts`
  MODIFY `uid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

-- AUTO_INCREMENT für Tabelle `sys_language`
ALTER TABLE `sys_language`
  MODIFY `uid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
