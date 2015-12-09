- view: v_projects
  sql_table_name: looker.vProjects
  fields:

# Primary Key
  - dimension: project_id
    primary_key: true
    type: int
    sql: ${TABLE}.project_id
    

# Foreign Keys
  - dimension: customer_id
    hidden: true
    type: int
    sql: ${TABLE}.customer_id
    

# Dimensions
  - dimension: project_name
    sql: ${TABLE}.project_name
    
  - dimension: customer_name
    sql: ${TABLE}.customer_name 
    
  - dimension: customer_project_name
    sql: ${TABLE}.customer_project_name 
    
  - dimension: amount
    sql: ${TABLE}.amount

  - dimension: initial_setup_fee
    sql: ${TABLE}.initial_setup_fee

  - dimension: monthly_fee
    sql: ${TABLE}.monthly_fee

  - dimension: project_description
    sql: ${TABLE}.project_description

  - dimension: project_manager
    sql: ${TABLE}.project_manager

  - dimension: project_status
    sql: ${TABLE}.project_status

  - dimension_group: start_date
    type: time
    timeframes: [date]
    sql: ${TABLE}.start_date

  - dimension_group: end_date
    type: time
    timeframes: [date]
    sql: ${TABLE}.end_date
    
    
# Measures
  - measure: count
    type: count
    drill_fields: [project_name, customer_project_name]

  