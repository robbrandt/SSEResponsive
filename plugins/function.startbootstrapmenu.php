<?php

function smarty_function_startbootstrapmenu($params, $smarty)
{
    $content = "";

    $treeArray = isset($params['data']) ? $params['data'] : array();

    foreach($treeArray as $index => $data) {
        $smarty->assign("item", $data['item']);
        $smarty->assign("nodes", $data['nodes']);

        if (empty($data['item']['class'])) {
            if (empty($data['nodes'])) {
                $content .= $smarty->fetch("startbootstrapmenu/default_item.tpl");
            } else {
                $content .= $smarty->fetch("startbootstrapmenu/default_menu.tpl");
            }
        } else {
            if ($data['item']['class'] == "divider") {
                $content .= $smarty->fetch("startbootstrapmenu/divider.tpl");
            } else {
                if (empty($data['nodes'])) {
                    $content .= $smarty->fetch("startbootstrapmenu/".$data['item']['class']."_item.tpl");
                } else {
                    $content .= $smarty->fetch("startbootstrapmenu/".$data['item']['class']."_menu.tpl");
                }
            }
        }
    }

    return $content;
}
