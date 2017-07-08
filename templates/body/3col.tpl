<section>
    <div class="container" id="theme_page_container">
        <div class="row" id="theme_maincontent">
            <div class="col-lg-2 col-lg-pull-8" id="theme_leftcol">
                {blockposition name=left}
            </div>
            <div class="col-lg-8 col-lg-push-2" id="z-maincontent">
                <div class="mt-5 p-4 bg-primary text-white">
                    {$maincontent}
                </div>
            </div>
            <div class="col-lg-2 col-lg-push-2" id="theme_rightcol">
                {blockposition name=homeright}
            </div>
        </div>
    </div>
</section>