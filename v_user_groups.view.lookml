- view: v_user_groups
  sql_table_name: looker.vUserGroups
  fields:


#Primary Key
  - dimension: user_group_id
    primary_key: true
    hidden: true
    sql: ${TABLE}.user_group_id
    
#Foreign Key
  - dimension: user_id
    hidden: true
    sql: ${TABLE}.user_id
    
# Dimensions
  - dimension: group_name
    sql: ${TABLE}.group_name

  - dimension: hourly_billable_rate
    type: int
    sql: ${TABLE}.hourly_billable_rate



# Measures
  - measure: count
    type: count
    drill_fields: [group_name, users.first_name, users.last_name]

