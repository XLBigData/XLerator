- view: v_tasks
  sql_table_name: looker.vTasks
  fields:

# Primary Key
  - dimension: task_id
    primary_key: True
    type: int
    # hidden: true
    sql: ${TABLE}.task_id
    
    
#Foreign Keys
  - dimension: customer_id
    type: int
    # hidden: true
    sql: ${TABLE}.customer_id
    
  - dimension: project_id
    type: int
    # hidden: true
    sql: ${TABLE}.project_id


# Dimensions
  - dimension: estimated_hours
    type: number
    sql: ${TABLE}.estimated_hours

  - dimension: task_description
    sql: ${TABLE}.task_description

  - dimension: task_name
    sql: ${TABLE}.task_name

  - dimension: task_owner_name
    sql: ${TABLE}.task_owner_name

  - dimension: task_status
    sql: ${TABLE}.task_status

  - dimension: task_type_name
    sql: ${TABLE}.task_type_name

# Measures
  - measure: count
    type: count
    drill_fields: detail*


  # ----- Sets of fields for drilling ------
  sets:
    detail:
    - task_name
    - task_owner_name
    - task_type_name
    - tasks.task_id
    - tasks.task_name
    - tasks.customer_fname
    - tasks.customer_lname

