- dashboard: xlerator_dash
  title: Xlerator Dash
  layout: tile
  tile_size: 200
  
  auto_run: true
  
  filters:
  # for security, this must come from an exposed explore
  # this takes the full form (view_name.dimension_name)
    
  - name: my_reportdate
    title: "Time Frame"
    type: date_filter
    default_value: 2015/01/01 to 2015/12/31


  elements:

  - name: Project_Breakdown
    title: Project Breakdown
    type: looker_pie
    model: xlerator
    explore: v_activity
    dimensions: [v_projects.project_name]
    measures: [v_activity.total_minutes]
    listen:
      my_reportdate:  v_activity.activity_date_year
    filters:
      v_customers.customer_name: '"NAPA - Genuine Parts Company"'
    sorts: [v_activity.total_minutes desc]
    limit: 500
    show_view_names: true
    show_null_points: true

  - name: XLerator_Minutes_Last_5_years
    title: XLerator Minutes Last 5 years
    type: looker_line
    model: xlerator
    explore: v_activity
    dimensions: [v_activity.activity_date_year, v_activity.activity_date_month_num]
    pivots: [v_activity.activity_date_year]
    measures: [v_activity.total_minutes]
    filters:
      v_activity.activity_date_year: 5 years
    sorts: [v_activity.activity_date_year, v_activity.total_minutes desc 0]
    limit: 500
    show_null_points: true
    stacking: ''
    show_value_labels: false
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    point_style: none
    interpolation: linear

  - name: Minutes_by_Customer
    title: Minutes by Customer
    type: looker_bar
    model: xlerator
    explore: v_activity
    dimensions: [v_customers.customer_name, v_activity.activity_date_year]
    pivots: [v_activity.activity_date_year]
    measures: [v_activity.total_minutes]
    
    listen:
      my_reportdate:  v_activity.activity_date_year
      
    sorts: [v_customers.customer_name]
    limit: 500
    stacking: ''
    show_value_labels: false
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    show_null_labels: false


  - name: Total_hours_Users
    title: Annual User Hours
    type: table
    model: xlerator
    explore: v_activity
    dimensions: [v_activity.activity_date_year, v_users.user_name]
    pivots: [v_activity.activity_date_year]
    measures: [v_activity.total_minutes]
    
    listen:
      my_reportdate:  v_activity.activity_date_year
    
    sorts: [v_activity.total_minutes desc 0]
    limit: 500
