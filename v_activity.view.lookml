- view: v_activity
  sql_table_name: looker.vActivity
  fields:

#Foreign Keys

   
  - dimension: customer_id
    hidden: true
    type: int
    sql: ${TABLE}.customer_id

  - dimension: project_id
    hidden: true
    type: int
    sql: ${TABLE}.project_id

  - dimension: task_id
    hidden: true
    type: int
    sql: ${TABLE}.task_id   
    
  - dimension: user_id
    hidden: true
    type: int
    sql: ${TABLE}.user_id
  
  - dimension: user_group_id
    hidden: true
    sql: ${TABLE}.user_group_id
 
    
  - dimension: activity_type_id
    hidden: true
    sql: ${TABLE}.activity_type_id
 
 
# - dimension: hour_filter
#    sql:
#      (SELECT hour_criteria
#        FROM looker.vActiveProjectsFilter a
#      WHERE v_activity.project_id = a.project_id
#      AND v_activity.user_group_id = a.user_group_id
#      AND v_activity.activity_type_id = a.activity_type_id
#     )


# Dimensions

  - dimension: customer_name
    hidden: false
    type: int
    sql: ${TABLE}.customer_name
    
  - dimension: project_name
    hidden: false
    type: int
    sql: ${TABLE}.project_name
    
  - dimension: task_name
    hidden: false
    type: int
    sql: ${TABLE}.task_name  
    
  - dimension: group_name
    hidden: false
    type: int
    sql: ${TABLE}.group_name   
    
  - dimension_group: activity_date
    type: time
    timeframes: [date, week, month, month_num, year]
    sql: ${TABLE}.activity_date

  - dimension: activity_description
    sql: ${TABLE}.activity_description

  - dimension: activity_type
    sql: ${TABLE}.activity_type

  - dimension_group: date_recorded
    hidden: true
    type: time
    timeframes: [date, week, month, month_num, year]
    sql: ${TABLE}.date_recorded

# Flags
#  - dimension: is_activity
#    hidden: true
#    sql: ${TABLE}.is_activity
  
#  - dimension: is_daily_priorities
#    hidden: true
#    sql: ${TABLE}.is_daily_priorities

#  - dimension: is_declared_time_off
#    hidden: true
#    sql: ${TABLE}.is_declared_time_off

#  - dimension: is_travel
#    hidden: true
#    sql: ${TABLE}.is_travel

#  - dimension: is_unexpected_time_off
#    hidden: true
#    sql: ${TABLE}.is_unexpected_time_off

#  - dimension: is_weekly_priorities
#    hidden: true
#    sql: ${TABLE}.is_weekly_priorities

#  - dimension: is_wrapup
#    hidden: true
#    sql: ${TABLE}.is_wrapup

#  - dimension: is_xlg
#    hidden: true
#    sql: ${TABLE}.is_xlg




# Measures
  - measure: count
    type: count
    drill_fields: detail*

  - measure: total_minutes
    type: sum
    sql: ${TABLE}.total_minutes
    drill_fields: detail*
    
  - measure: total_hours
    type: sum
    sql: ${TABLE}.total_minutes/60.00
    drill_fields: detail*

  # ----- Sets of fields for drilling ------
  sets:
    detail:
    - users.user_name
    - activity.group_name
    - activity.customer_name
    - activity.project_name
    - projects.customer_project_name
    - activity.task_name


