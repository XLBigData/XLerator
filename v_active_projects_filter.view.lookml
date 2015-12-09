- view: v_active_projects_filter
  sql_table_name: looker.vActiveProjectsFilter
  fields:


# Primary Keys  
  - dimension: record_id
    primary_key: True
    type: int
    # hidden: true
    sql: ${TABLE}.record_id
 
 # Foreign Keys    
  - dimension: project_id
    type: int
    # hidden: true
    sql: ${TABLE}.project_id
    
  - dimension: activity_type_id
    type: int
    # hidden: true
    sql: ${TABLE}.ActivityTypeID

  - dimension: user_group_id
    type: int
    # hidden: true
    sql: ${TABLE}.user_group_id


# Dimensions
  - dimension: activity_type
    sql: ${TABLE}.activity_type
    
  - dimension_group: activity_week
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.ActivityWeek

  - dimension: hour_criteria
    sql: ${TABLE}.hour_criteria
    

# Measures
  - measure: total_minutes
    type: sum
    drill_fields: [projects.project_id, activity_type.activity_type_id]

  - measure: total_hours
    type: sum
    drill_fields: [projects.project_id, activity_type.activity_type_id]

