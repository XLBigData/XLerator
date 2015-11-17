- view: v_users
  sql_table_name: looker.vUsers
  fields:

  - dimension: email_address
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

  - dimension: user_id
    primary_key: True
    # hidden: true
    sql: ${TABLE}.user_id

  - dimension: user_name
    sql: ${TABLE}.user_name

  - measure: count
    type: count
    drill_fields: [user_name, users.user_id, users.first_name, users.last_name]

