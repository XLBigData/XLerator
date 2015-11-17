- dashboard: xlerator_dash
  title: Xlerator Dash
  layout: tile
  tile_size: 100

#  filters:

  elements:

  - name: Time_by_Customer
    title: Top 20 Customers
    type: looker_column
    model: xlerator
    explore: v_activity
    dimensions: [v_customers.customer_name]
    measures: [v_activity.total_minutes]
    sorts: [v_activity.total_minutes desc]
    limit: 15
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
    dimensions: [v_activity.activity_year, v_users.user_name]
    pivots: [v_activity.activity_year]
    measures: [v_activity.total_minutes]
    sorts: [v_activity.total_minutes desc 0]
    limit: 500
