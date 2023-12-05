<?php

/**
 * @Project ACCOMMODATION 4.x
 * @Author PHAN TAN DUNG (phantandung92@gmail.com)
 * @Copyright (C) 2016 PHAN TAN DUNG. All rights reserved
 * @License GNU/GPL version 2 or any later version
 * @Createdate Sat, 11 Jun 2016 16:20:15 GMT
 */

if (!defined('NV_IS_MOD_SEARCH'))
    die('Stop!!!');

$db->sqlreset()->select('COUNT(*)')->from(NV_PREFIXLANG . '_' . $m_values['module_data'] . '_rows')->where('(' . nv_like_logic('title', $dbkeywordhtml, $logic) . ') AND status = 1');

$num_items = $db->query($db->sql())->fetchColumn();

if ($num_items) {
    $link = NV_BASE_SITEURL . 'index.php?' . NV_LANG_VARIABLE . '=' . NV_LANG_DATA . '&amp;' . NV_NAME_VARIABLE . '=' . $m_values['module_name'] . '&amp;' . NV_OP_VARIABLE . '=';

    $db->select('id, title, alias, facility')->order('id DESC')->limit($limit)->offset(($page - 1) * $limit);
    $result = $db->query($db->sql());
    while (list($id, $tilterow, $alias, $facility) = $result->fetch(3)) {
        $content = nv_clean60(strip_tags($facility), 100);

        $url = $link . $alias . $global_config['rewrite_exturl'];

        $result_array[] = array(
            'link' => $url,
            'title' => BoldKeywordInStr($tilterow, $key, $logic),
            'content' => BoldKeywordInStr($content, $key, $logic)
        );
    }
}
