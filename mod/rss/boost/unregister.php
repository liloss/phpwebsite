<?php
  /**
   * @author Matthew McNaney <mcnaney at gmail dot com>
   * @version $Id$
   */

function rss_unregister($module, &$content)
{
    translate('rss');
    $db = new PHPWS_DB('rssfeeds');
    $db->addWhere('module', $module);
    $result = $db->delete();
    if (PEAR::isError($result)) {
        PHPWS_Error::log($result);
        $content[] = _('An error occurred trying to unregister this module from RSSFeeds.');
        translate();
        return FALSE;
    } else {
        $content[] = _('Module unregistered from RSSFeeds.');
        translate();
        return TRUE;
    }
}

?>