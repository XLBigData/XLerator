- dashboard: sherrie_pm_meeting
  title: Sherrie Pm Meeting
  layout: tile
  tile_size: 200

#  filters:

 
  elements:
  
  - name: add_a_unique_name_816
    title: Activity Trends Last 6 Years
    type: looker_donut_multiples
    model: xlerator
    explore: activity
    dimensions: [v_activity.activity_type, v_activity.activity_date_year]
    pivots: [v_activity.activity_type]
    measures: [v_activity.total_hours]
    filters:
      v_activity.activity_date_year: 2010/01/01 to 2015/12/14
      v_activity.activity_type: -"Time Off",-"Compliance Adjustment",-"Remote Meeting",-"Outreach",-"Remote Support"
    sorts: [v_activity.activity_type, v_activity.activity_date_year]
    limit: 120
    show_view_names: true


  - name: add_a_unique_name_822
    title: Untitled Table
    type: table
    model: xlerator
    explore: activity
    dimensions: [projects.customer_project_name, users.group_name, users.user_name,
      v_activity.activity_type]
    measures: [v_activity.total_hours]
    filters:
      projects.customer_project_name: '%solution%,%penetration%,%entera%,%A&DP%'
      v_activity.activity_date_date: 2015/11/02 to 2015/11/08
    sorts: [projects.customer_project_name]
    limit: 500
    row_total: right
