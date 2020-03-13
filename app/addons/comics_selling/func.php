<?php

if (!defined('BOOTSTRAP')) { die('Access denied'); }

function fn_comics_selling_update_product_pre(&$product_data, $product_id, $lang_code, $can_update) {

    if (!empty($product_data['comics_selling_release_date'])) {
        $_data['comics_selling_release_date'] = fn_parse_date($product_data['comics_selling_release_date']);
    }
}