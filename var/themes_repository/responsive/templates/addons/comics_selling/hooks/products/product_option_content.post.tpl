{if $product.comics_selling_art_by}
<div class="ty-control-group">
	<label class="ty-control-group__label" id="comics_selling_art_by">{__("comics_selling.art_by")}:</label>
	<span class="ty-control-group__item" id="comics_selling_art_by">{$product.comics_selling_art_by}</span>
</div>
{/if}

{if $product.comics_selling_written_by}
<div class="ty-control-group">
	<label class="ty-control-group__label" id="comics_selling_written_by">{__("comics_selling.written_by")}:</label>
	<span class="ty-control-group__item" id="comics_selling_written_by">{$product.comics_selling_written_by nofilter}</span>
</div>
{/if}

{if $product.comics_selling_release_date}
<div class="ty-control-group">
	<label class="ty-control-group__label" id="comics_selling_release_date">{__("comics_selling.release_date")}:</label>
	<span class="ty-control-group__item" id="comics_selling_release_date">{$product.comics_selling_release_date|date_format:"`$settings.Appearance.date_format`"}</span>
</div>
{/if}