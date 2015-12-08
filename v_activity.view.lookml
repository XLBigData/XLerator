- view: v_activity
  sql_table_name: looker.vActivity
  fields:

#Foreign Keys
  - dimension: customer_id
    hidden: true
    type: int
    hidden: true
    sql: ${TABLE}.customer_id
    
  - dimension: project_id
    hidden: true
    type: int
    hidden: true
    sql: ${TABLE}.project_id

  - dimension: task_id
    hidden: true
    type: int
    hidden: true
    sql: ${TABLE}.task_id   
    
  - dimension: user_id
    hidden: true
    sql: ${TABLE}.user_id
   

# Dimensions
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
  - dimension: is_activity
    hidden: true
    sql: ${TABLE}.is_activity

  - dimension: is_daily_priorities
    hidden: true
    sql: ${TABLE}.is_daily_priorities

  - dimension: is_declared_time_off
    hidden: true
    sql: ${TABLE}.is_declared_time_off

  - dimension: is_travel
    hidden: true
    sql: ${TABLE}.is_travel

  - dimension: is_unexpected_time_off
    hidden: true
    sql: ${TABLE}.is_unexpected_time_off

  - dimension: is_weekly_priorities
    hidden: true
    sql: ${TABLE}.is_weekly_priorities

  - dimension: is_wrapup
    hidden: true
    sql: ${TABLE}.is_wrapup

  - dimension: is_xlg
    hidden: true
    sql: ${TABLE}.is_xlg




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
    sql: ${TABLE}.total_minutes/60
    drill_fields: detail*

  # ----- Sets of fields for drilling ------
  sets:
    detail:
    - users.user_name
    - users.group_name
    - customers.customer_name
    - projects.project_name
    - projects.customer_project_name
    - tasks.task_name
    - tasks.customer_fname
    - tasks.customer_lname
    - tasks.task_name
    - tasks.task_owner_name
    - tasks.task_type_name

