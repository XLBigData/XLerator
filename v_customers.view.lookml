- view: v_customers
  sql_table_name: looker.vCustomers
  fields:

# Primary Key
  - dimension: customer_id
    primary_key: True
    type: int
    hidden: true
    sql: ${TABLE}.customer_id
    
# Dimensions    
  - dimension: account_manager
    sql: ${TABLE}.account_manager

  - dimension: customer_name
    sql: ${TABLE}.customer_name

  - dimension: customer_type
    sql: ${TABLE}.customer_type 
    
  - dimension: address_line1
    hidden: true
    sql: ${TABLE}.address_line1

  - dimension: address_line2
    hidden: true
    sql: ${TABLE}.address_line2

  - dimension: city
    hidden: true
    sql: ${TABLE}.city

  - dimension: fax
    hidden: true
    sql: ${TABLE}.fax

  - dimension: phone
    hidden: true
    sql: ${TABLE}.phone

  - dimension: state
    hidden: true
    sql: ${TABLE}.state

  - dimension: website
    hidden: true
    sql: ${TABLE}.website

  - dimension: zip_code
    hidden: true
    sql: ${TABLE}.zip_code

# Measures
  - measure: count
    type: count
    drill_fields: [customer_name]

