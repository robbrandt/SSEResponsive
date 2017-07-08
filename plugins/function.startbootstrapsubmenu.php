<?php

function smarty_function_startbootstrapsubmenu($params, $smarty)
{
    $content = "";

    $treeArray = isset($params['data']) ? $params['data'] : array();
    $parent = isset($params['parentclass']) ? $params['parentclass'] : null;

    foreach($treeArray as $index => $data) {
        $smarty->assign("item", $data['item']);
        $smarty->assign("nodes", $data['nodes']);

        if (empty($data['item']['class'])) {
            if ($parent) {
                if (empty($data['nodes'])) {
                    $content .= $smarty->fetch("startbootstrapmenu/".$parent."_default_item.tpl");
                } else {
                    $content .= $smarty->fetch("startbootstrapmenu/".$parent."_default_menu.tpl");
                }
            } else {
                if (empty($data['nodes'])) {
                    $content .= $smarty->fetch("startbootstrapmenu/default_item.tpl");
                } else {
                    $content .= $smarty->fetch("startbootstrapmenu/default_menu.tpl");
                }
            }
        } else {
            if ($data['item']['class'] == "divider") {
                if ($parent) {
                    $content .= $smarty->fetch("startbootstrapmenu/".$parent."_divider.tpl");
                } else {
                    $content .= $smarty->fetch("startbootstrapmenu/divider.tpl");
                }
            } else {
                if ($parent) {
                    if (empty($data['nodes'])) {
                        $content .= $smarty->fetch("startbootstrapmenu/".$parent."_".$data['item']['class']."_item.tpl");
                    } else {
                        $content .= $smarty->fetch("startbootstrapmenu/".$parent."_".$data['item']['class']."_menu.tpl");
                    }
                } else {
                    if (empty($data['nodes'])) {
                        $content .= $smarty->fetch("startbootstrapmenu/".$data['item']['class']."_item.tpl");
                    } else {
                        $content .= $smarty->fetch("startbootstrapmenu/".$data['item']['class']."_menu.tpl");
                    }
                }
            }
        }
    }

    return $content;
}