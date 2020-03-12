{include file="common/subheader.tpl" title=__("comics_selling.title") target="#comics_selling"}
<div id="comics_selling" class="collapse in">

    <div class="control-group">
        <label class="control-label" for="comics_selling_art_by">{__("comics_selling.art_by")}</label>
        <div class="controls">
            <input type="text" id="comics_selling_art_by" name="products[comics_selling_art_by]"
                value="{$product_data.comics_selling_art_by|default:""}" class="input-large" size="10" />
        </div>
    </div>

    <div class="control-group">
        <label class="control-label" for="comics_selling_release_date">{__("comics_selling.release_date")}:</label>
        <div class="controls">
            {include file="common/calendar.tpl" date_id="comics_selling_release_date"
            date_name="product_data[comics_selling_release_date]"
            date_val=$product_data.comics_selling_release_date|default:""
            start_year=$settings.Company.company_start_year}
        </div>
    </div>

    <div class="control-group cm-no-hide-input">
        <label class="control-label" for="comics_selling_written_by">{__("comics_selling.written_by")}:</label>
        <div class="controls">
            {include file="buttons/update_for_all.tpl" display=$show_update_for_all
            object_id="comics_selling_written_by"
            name="update_all_vendors[comics_selling_written_by]"}
            <textarea id="comics_selling_written_by" name="product_data[comics_selling_written_by]" cols="55" rows="8"
                class="cm-wysiwyg input-large" data-ca-is-block-manager-enabled="{fn_check_view_permissions("
                block_manager.block_selection", "GET" )|intval}">{$product_data.comics_selling_written_by}</textarea>

            {if $view_uri}
            {include
            file="buttons/button.tpl"
            but_href="customization.update_mode?type=live_editor&status=enable&frontend_url={$view_uri|urlencode}{if
            "ULTIMATE"|fn_allowed_for}&switch_company_id={$product_data.company_id}{/if}"
            but_text=__("edit_content_on_site")
            but_role="action"
            but_meta="btn-small btn-live-edit cm-post"
            but_target="_blank"}
            {/if}
        </div>
    </div>

</div>
