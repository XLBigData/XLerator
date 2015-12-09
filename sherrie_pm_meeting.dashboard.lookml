- dashboard: sherrie_pm_meeting
  title: Sherrie Pm Meeting
  layout: tile
  tile_size: 100

#  filters:

 
  elements:
  - name: add_a_unique_name_862
    title: Untitled Visualization
    type: looker_column
    model: xlerator
    explore: v_activity
    dimensions: [v_activity.activity_date_week, v_projects.customer_project_name]
    pivots: [v_activity.activity_date_week]
    measures: [v_activity.total_hours]
    filters:
      v_activity.activity_date_week: 2015/11/01 to 2015/11/28
      v_activity.activity_type: '"Creating"'
      v_projects.customer_name: -"XL Group"
      v_users.group_name: '"Programmer"'
    sorts: [v_activity.total_hours desc 0]
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
