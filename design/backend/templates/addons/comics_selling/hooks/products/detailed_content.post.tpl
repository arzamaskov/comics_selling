{include file="common/subheader.tpl" title=__("comics_selling.title") target="#comics_selling"}
<div id="comics_selling" class="collapse in">

    <div class="control-group">
        <label class="control-label" for="comics_selling_art_by">{__("comics_selling.art_by")}</label>
        <div class="controls">
            <input type="text" id="comics_selling_art_by" name="product_data[comics_selling_art_by]"
                value="{$product_data.comics_selling_art_by}" class="input-large" size="10" />
        </div>
    </div>

    <div class="control-group">
        <label class="control-label" for="comics_selling_written_by">{__("comics_selling.written_by")}:</label>
        <div class="controls">
            <textarea id="comics_selling_written_by" name="product_data[comics_selling_written_by]" cols="55" rows="2"
                class="cm-wysiwyg input-large">{$product_data.comics_selling_written_by}</textarea>
            {include file="buttons/update_for_all.tpl" display=$show_update_for_all
            object_id="comics_selling_written_by" name="update_all_vendors[comics_selling_written_by]"}
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

</div>