{nocache}
<li class="nav-item dropdown">
    <a class="nav-link dropdown-toggle" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" href="{$item.href}" title="{$item.title}">{$item.name}</a>
    <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
        {startbootstrapsubmenu data=$nodes parentclass='default'}
    </div>
</li>
{/nocache}
