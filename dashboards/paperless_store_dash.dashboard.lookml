---
- dashboard: walmart_paperless_stores_pilot
  title: Walmart Paperless Stores Pilot
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: zD1X5bzCozyH2Y9ZuHo1FX
  refresh: 4 seconds
  elements:
  - title: Transaction Amount by Date
    name: Transaction Amount by Date
    model: paperless_store_poc
    explore: receipts_extractions
    type: looker_column
    fields: [receipts_extractions__purchase_items.total_line_item_count, receipts_extractions.txn_date]
    sorts: [receipts_extractions.txn_date]
    limit: 500
    column_limit: 50
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: ordinal
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: "# Items Purchased", orientation: left, series: [{axisId: receipts_extractions__purchase_items.total_line_item_count,
            id: receipts_extractions__purchase_items.total_line_item_count, name: Total
              Line Item Count}], showLabels: true, showValues: true, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
    x_axis_label: Transaction Date
    x_axis_zoom: true
    y_axis_zoom: true
    series_colors:
      receipts_extractions__purchase_items.total_line_item_count: "#ffc220"
    label_color: ["#041f41"]
    reference_lines: [{reference_type: line, line_value: mean, range_start: max, range_end: min,
        margin_top: deviation, margin_value: mean, margin_bottom: deviation, label_position: right,
        color: "#041f41"}]
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    hidden_pivots: {}
    defaults_version: 1
    listen: {}
    row: 4
    col: 0
    width: 12
    height: 7
  - title: Untitled (Copy)
    name: Untitled (Copy)
    model: paperless_store_poc
    explore: receipts_extractions
    type: single_value
    fields: [receipts_extractions.txn_count]
    limit: 500
    column_limit: 50
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    custom_color: "#041f41"
    single_value_title: Total Items Purchased
    defaults_version: 1
    hidden_pivots: {}
    row: 0
    col: 17
    width: 7
    height: 4
  - title: Transaction Count by Retailer
    name: Transaction Count by Retailer
    model: paperless_store_poc
    explore: receipts_extractions
    type: looker_pie
    fields: [receipts_extractions.purchase_company_name, receipts_extractions.txn_count]
    sorts: [receipts_extractions.txn_count desc 0]
    limit: 500
    column_limit: 50
    value_labels: legend
    label_type: labPer
    inner_radius: 40
    series_colors:
      Whataburger: "#0071ce"
      Walmart Supercenter: "#ffc220"
      The Home Depot: "#eb148d"
      NAPA Auto Parts: "#041f41"
      McLarty Daniel Chevrolet: "#12B5CB"
    hidden_pivots: {}
    defaults_version: 1
    listen: {}
    row: 11
    col: 0
    width: 7
    height: 8
  - name: ''
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: '<img src="https://upload.wikimedia.org/wikipedia/commons/thumb/c/ca/Walmart_logo.svg/2560px-Walmart_logo.svg.png"
      style="max-width: 400px; height: auto;">'
    row: 0
    col: 0
    width: 10
    height: 4
  - title: Transaction Amount by Purchase Location
    name: Transaction Amount by Purchase Location
    model: paperless_store_poc
    explore: receipts_extractions
    type: looker_google_map
    fields: [receipts_extractions.total_txn_amount, receipts_extractions.purchase_state]
    sorts: [receipts_extractions.total_txn_amount desc 0]
    limit: 500
    column_limit: 50
    hidden_fields: []
    hidden_points_if_no: []
    series_labels: {}
    show_view_names: false
    map_plot_mode: points
    heatmap_gridlines: false
    heatmap_gridlines_empty: false
    heatmap_opacity: 0.5
    show_region_field: true
    draw_map_labels_above_data: true
    map_tile_provider: light
    map_position: fit_data
    map_pannable: true
    map_zoomable: true
    map_marker_type: circle
    map_marker_icon_name: default
    map_marker_radius_mode: proportional_value
    map_marker_units: meters
    map_marker_proportional_scale_type: linear
    map_marker_color_mode: fixed
    show_legend: true
    map_value_colors: ["#0071ce", "#ffc220"]
    quantize_map_value_colors: false
    reverse_map_value_colors: false
    defaults_version: 0
    note_state: expanded
    note_display: above
    note_text: Note that only records with valid state codes are mapped. Additional
      data can be found in the visualization to the right.
    listen: {}
    row: 11
    col: 7
    width: 10
    height: 8
  - title: Untitled
    name: Untitled
    model: paperless_store_poc
    explore: receipts_extractions
    type: single_value
    fields: [receipts_extractions.total_txn_amount]
    limit: 500
    column_limit: 50
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    custom_color: "#041f41"
    single_value_title: Total Transaction $
    defaults_version: 1
    row: 0
    col: 10
    width: 7
    height: 4
  - title: Transaction Amount by Retailer
    name: Transaction Amount by Retailer
    model: paperless_store_poc
    explore: receipts_extractions
    type: looker_column
    fields: [receipts_extractions.total_txn_amount, receipts_extractions.purchase_company_name]
    sorts: [receipts_extractions.total_txn_amount desc 0]
    limit: 500
    column_limit: 50
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    x_axis_label: Retailer
    x_axis_zoom: true
    y_axis_zoom: true
    defaults_version: 1
    row: 4
    col: 12
    width: 12
    height: 7
  - title: Transactions Details
    name: Transactions Details
    model: paperless_store_poc
    explore: receipts_extractions
    type: looker_grid
    fields: [receipts_extractions.txn_date, receipts_extractions.purchase_company_name,
      receipts_extractions__purchase_items.total_line_item_count, receipts_extractions__purchase_items.total_line_item_amount,
      receipts_extractions.image_url]
    sorts: [receipts_extractions.txn_date desc]
    limit: 500
    column_limit: 50
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    minimum_column_width: 75
    series_labels:
      receipts_extractions.txn_date: Transaction Date
      receipts_extractions__purchase_items.total_line_item_count: "# Items Purchased"
      receipts_extractions__purchase_items.total_line_item_amount: Transaction Total
      receipts_extractions.image_url: Receipt Image URL
      receipts_extractions.purchase_company_name: Retailer
    series_cell_visualizations:
      receipts_extractions__purchase_items.total_line_item_count:
        is_active: true
        palette:
          palette_id: a1bfa109-8558-1be2-747c-18a1196281d0
          collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
          custom_colors:
          - "#ffc220"
          - "#0071ce"
    header_font_color: "#ffffff"
    header_background_color: "#0071ce"
    conditional_formatting: [{type: along a scale..., value: !!null '', background_color: "#1A73E8",
        font_color: !!null '', color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 56d0c358-10a0-4fd6-aa0b-b117bef527ab}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    listen: {}
    row: 19
    col: 0
    width: 24
    height: 7
  - name: " (2)"
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: '[{"type":"p","children":[{"text":"The transactions included in the
      audit report above do not appear on the map because they have invalid State
      codes.","color":"hsl(209, 81%, 34%)"}]},{"type":"p","children":[{"text":"","color":"hsl(209,
      81%, 34%)"}],"id":"nhujj"},{"type":"p","id":"altbq","children":[{"text":"Action
      ✅:","bold":true,"color":"hsl(209, 81%, 34%)"},{"text":" Update the State code
      in the database to a valid 2-character US State abbreviation.","color":"hsl(209,
      81%, 34%)"}]}]'
    rich_content_json: '{"format":"slate"}'
    row: 15
    col: 17
    width: 7
    height: 4
  - title: Purchase Location Audit Report
    name: Purchase Location Audit Report
    model: paperless_store_poc
    explore: receipts_extractions
    type: looker_grid
    fields: [receipts_extractions.purchase_company_name, receipts_extractions.purchase_city,
      receipts_extractions.purchase_state, receipts_extractions.total_txn_amount]
    filters:
      receipts_extractions.purchase_state: 'NULL'
    sorts: [receipts_extractions.total_txn_amount desc 0]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - category: table_calculation
      expression: 'coalesce(${receipts_extractions.purchase_city},concat("❌", " ",
        ${receipts_extractions.purchase_city}))

        '
      label: Retailer City
      value_format:
      value_format_name:
      _kind_hint: dimension
      table_calculation: retailer_city
      _type_hint: string
    - category: table_calculation
      expression: 'coalesce(${receipts_extractions.purchase_state},concat("❌", " ",
        ${receipts_extractions.purchase_state}))

        '
      label: Retailer State
      value_format:
      value_format_name:
      _kind_hint: dimension
      table_calculation: retailer_state
      _type_hint: string
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: true
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    minimum_column_width: 75
    series_labels:
      receipts_extractions.purchase_company_name: Retailer Name
    series_cell_visualizations:
      receipts_extractions.total_txn_amount:
        is_active: true
        palette:
          palette_id: dc43af02-8bdc-91cb-b149-91cddad6d3c0
          collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
          custom_colors:
          - "#ffc220"
          - "#0071ce"
    header_font_color: "#ffffff"
    header_background_color: "#0071ce"
    conditional_formatting: []
    defaults_version: 1
    hidden_fields: [receipts_extractions.purchase_state, receipts_extractions.purchase_city]
    row: 11
    col: 17
    width: 7
    height: 4
