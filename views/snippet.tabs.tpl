<div class="view-content">
	
	<div class="skin-default">
		<div class="views-slideshow-controls-top clearfix">
			<div id="widget_pager_top_slideshow-block" class="views-slideshow-pager-fields widget_pager widget_pager_top views_slideshow_pager_field">
				{{ each examples as ex where find_in_set({page.zid}, ex.page) sort by ex.sort_order }}
				<div id="views_slideshow_pager_field_item_top_slideshow-block_{{ ex._index }}" class="views-slideshow-pager-field-item views_slideshow_pager_field_item views-row-odd {{ if {ex._num} == 1 }}views-row-first{{ end-if }}" aria-controls="views_slideshow_cycle_div_slideshow-block_{{ ex._index }}" style="width: {{eval(100/{ex._length})}}%;">
					
					<div class="views-field-title" >
						<div class="views-content-title">
							{{ ex.title }}   
						</div>
					</div>
				</div>
				{{ end-each }}
			</div>
		</div>
		
		<div id="views_slideshow_cycle_main_slideshow-block" class="views_slideshow_cycle_main views_slideshow_main"><div id="views_slideshow_cycle_teaser_section_slideshow-block" class="views-slideshow-cycle-main-frame views_slideshow_cycle_teaser_section">
			{{ each examples as ex where find_in_set({page.zid}, ex.page) sort by ex.sort_order }}
			<div id="views_slideshow_cycle_div_slideshow-block_{{ ex._index }}" class="views-slideshow-cycle-main-frame-row views_slideshow_cycle_slide views_slideshow_slide views-row-1 views-row-first views-row-odd" aria-labelledby='views_slideshow_pager_field_item_bottom_slideshow-block_{{ ex._index }}'>
				
				<div class="views-slideshow-cycle-main-frame-row-item views-row-odd  views-row views-row-{{ ex._index }}  {{ if {ex._num} == 1 }}views-row-first{{ end-if }}">
					
					<div class="views-field views-field-field-slide-image">        
						<div class="field-content"><img typeof="foaf:Image" src="{{ ex.image.getImage() }}" width="837" height="534" alt="" pagespeed_url_hash="1787951893" onload="pagespeed.CriticalImages.checkImageForCriticality(this);"/>
						</div>  
					</div>  
					<div class="views-field views-field-php">        
						<span class="field-content balloon">  
							<div class="balloon_wrapper balloon-type-arrow-{{ex.balloon_arrow}}" style="position: absolute; {{ if {ex.distance_from_the_top} }}top: {{ex.distance_from_the_top}};{{end-if}}{{ if {ex.distance_from_the_left} }}left: {{ex.distance_from_the_left}};{{end-if}}"{{if {ex.distance_from_the_left} }} initial_x="{{ex.distance_from_the_left}}"{{end-if}}{{ if {ex.distance_from_the_top} }} initial_y="{{ex.distance_from_the_top}}{{end-if}}">
							
								<div class="balloon-left-side"></div>
								<div class="balloon-right-side">
									<div class="balloon-title"><div class="content">{{ ex.overlay_title }}</div></div>
									<div class="balloon-description">
										<div class="content"><p>{{ ex.overlay_description }}</p>
										</div>
									</div>
								</div>
								<div class="balloon-bottom-side"></div>
							</div>
						</span>  
					</div>
				</div>
			</div>
			{{ end-each }}
			</div>
		</div>
		<div class="views-slideshow-controls-bottom clearfix">
			<div id="views_slideshow_controls_text_slideshow-block" class="views-slideshow-controls-text views_slideshow_controls_text">
				<span id="views_slideshow_controls_text_previous_slideshow-block" class="views-slideshow-controls-text-previous views_slideshow_controls_text_previous">
					<a href="#" rel="prev">Previous</a>
				</span>
				<span id="views_slideshow_controls_text_pause_slideshow-block" class="views-slideshow-controls-text-pause views_slideshow_controls_text_pause  views-slideshow-controls-text-status-play"><a href="#">Pause</a></span>
				<span id="views_slideshow_controls_text_next_slideshow-block" class="views-slideshow-controls-text-next views_slideshow_controls_text_next">
					<a href="#" rel="next">Next</a>
				</span>
			</div>
		</div>
	</div>
</div>


