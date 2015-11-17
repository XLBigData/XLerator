- view: activity
  sql_table_name: looker.Activity
  fields:

  - dimension_group: activity
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.activity_date

  - dimension: activity_description
    sql: ${TABLE}.activity_description

  - dimension: activity_type
    sql: ${TABLE}.activity_type

  - dimension: customer_id
    type: int
    # hidden: true
    sql: ${TABLE}.customer_id

  - dimension_group: date_recorded
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.date_recorded

  - dimension: is_activity
    sql: ${TABLE}.is_activity

  - dimension: is_daily_priorities
    sql: ${TABLE}.is_daily_priorities

  - dimension: is_declared_time_off
    sql: ${TABLE}.is_declared_time_off

  - dimension: is_travel
    sql: ${TABLE}.is_travel

  - dimension: is_unexpected_time_off
    sql: ${TABLE}.is_unexpected_time_off

  - dimension: is_weekly_priorities
    sql: ${TABLE}.is_weekly_priorities

  - dimension: is_wrapup
    sql: ${TABLE}.is_wrapup

  - dimension: is_xlg
    sql: ${TABLE}.is_xlg

  - dimension: project_id
    type: int
    # hidden: true
    sql: ${TABLE}.project_id

  - dimension: task_id
    type: int
    # hidden: true
    sql: ${TABLE}.task_id

  - dimension: total_minutes
    type: int
    sql: ${TABLE}.total_minutes

  - dimension: user_id
    # hidden: true
    sql: ${TABLE}.user_id

  - measure: count
    type: count
    drill_fields: detail*


  # ----- Sets of fields for drilling ------
  sets:
    detail:
    - users.first_name
    - users.last_name
    - users.user_id
    - users.user_name
    - customers.customer_id
    - customers.customer_name
    - projects.project_id
    - projects.project_name
    - tasks.task_name
    - tasks.customer_fname
    - tasks.customer_lname
    - tasks.task_id
    - tasks.task_name
    - tasks.task_owner_name
    - tasks.task_type_name
    - workflow.count

