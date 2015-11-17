- view: v_customers
  sql_table_name: looker.vCustomers
  fields:

# Primary Key
  - dimension: customer_id
    primary_key: True
    type: int
    # hidden: true
    sql: ${TABLE}.customer_id
    
# Dimensions    
  - dimension: account_manager
    sql: ${TABLE}.account_manager

  - dimension: address_line1
    sql: ${TABLE}.address_line1

  - dimension: address_line2
    sql: ${TABLE}.address_line2

  - dimension: city
    sql: ${TABLE}.city

  - dimension: customer_name
    sql: ${TABLE}.customer_name

  - dimension: customer_type
    sql: ${TABLE}.customer_type

  - dimension: fax
    sql: ${TABLE}.fax

  - dimension: phone
    sql: ${TABLE}.phone

  - dimension: state
    sql: ${TABLE}.state

  - dimension: website
    sql: ${TABLE}.website

  - dimension: zip_code
    sql: ${TABLE}.zip_code

# Measures
  - measure: count
    type: count
    drill_fields: [customer_name, customers.customer_id]

