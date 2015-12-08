- view: v_users
  sql_table_name: looker.vUsers
  fields:

#Primary Key
  - dimension: user_id
    hidden: true
    primary_key: true
    sql: ${TABLE}.user_id
    
    
# Dimensions   
  - dimension: user_name
    sql: ${TABLE}.user_name
  
  - dimension: group_name
    sql: ${TABLE}.group_name
    
  - dimension: hourly_billable_rate
    sql: ${TABLE}.hourly_billable_rate
    
  - dimension: email_address
    hidden: true
    sql: ${TABLE}.email_address

  - dimension: is_accountable
    hidden: true
    sql: ${TABLE}.is_accountable

  - dimension: is_active
    hidden: true
    type: yesno
    sql: ${TABLE}.is_active

  - dimension: is_responsible
    hidden: true
    sql: ${TABLE}.is_responsible

  - dimension: is_suspended
    hidden: true
    sql: ${TABLE}.is_suspended




# Measures
  - measure: count
    type: count
    drill_fields: [group_name,user_name]

