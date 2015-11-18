- view: v_users
  sql_table_name: looker.vUsers
  fields:

#Primary Key
  - dimension: user_id
    hidden: true
    primary_key: True
    sql: ${TABLE}.user_id
    
    
# Dimensions   
  - dimension: user_name
    sql: ${TABLE}.user_name
    
  - dimension: email_address
    hidden: true
    sql: ${TABLE}.email_address

  - dimension: is_accountable
    sql: ${TABLE}.is_accountable

  - dimension: is_active
    type: yesno
    sql: ${TABLE}.is_active

  - dimension: is_responsible
    sql: ${TABLE}.is_responsible

  - dimension: is_suspended
    sql: ${TABLE}.is_suspended




# Measures
  - measure: count
    type: count
    drill_fields: [user_name, users.first_name, users.last_name]

