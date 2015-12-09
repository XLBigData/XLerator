- dashboard: sherrie_pm_meeting
  title: Sherrie Pm Meeting
  layout: tile
  tile_size: 200

#  filters:

 
  elements:
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
