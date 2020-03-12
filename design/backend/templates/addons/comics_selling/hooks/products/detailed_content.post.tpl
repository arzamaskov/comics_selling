{include file="common/subheader.tpl" title=__("comics_selling.title") target="#comics_selling"}
<div id="comics_selling" class="collapse in">

    <div class="control-group">
        <label class="control-label" for="comics_selling_art_by">{__("comics_selling.art_by")}</label>
        <div class="controls">
            <input type="text" id="comics_selling_art_by" name="products[comics_selling_art_by]" value="{$product_data.comics_selling_art_by|default:""}" class="input-large" size="10" />
        </div>
    </div>

</div>