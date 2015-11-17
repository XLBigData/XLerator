- view: v_projects
  sql_table_name: looker.vProjects
  fields:

# Primary Key
  - dimension: project_id
    primary_key: True
    type: int
    # hidden: true
    sql: ${TABLE}.project_id
    

# Foreign Keys
  - dimension: customer_id
    type: int
    sql: ${TABLE}.customer_id
    

# Dimensions
  - dimension: amount
    sql: ${TABLE}.amount

  - dimension_group: end
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.end_date

  - dimension: initial_setup_fee
    sql: ${TABLE}.initial_setup_fee

  - dimension: monthly_fee
    sql: ${TABLE}.monthly_fee

  - dimension: project_description
    sql: ${TABLE}.project_description

  - dimension: project_manager
    sql: ${TABLE}.project_manager

  - dimension: project_name
    sql: ${TABLE}.project_name

  - dimension: project_status
    sql: ${TABLE}.project_status

  - dimension_group: start
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.start_date

# Measures
  - measure: count
    type: count
    drill_fields: [project_name, projects.project_id]

