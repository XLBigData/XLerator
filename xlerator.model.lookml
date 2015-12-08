- connection: sqlprod

- include: "*.view.lookml"       # include all the views
- include: "*.dashboard.lookml"  # include all the dashboards

- explore: v_activity
  joins:
     - join: v_users
       foreign_key: user_id

     - join: v_customers
       foreign_key: customer_id

     - join: v_projects
       foreign_key: project_id

     - join: v_tasks
       foreign_key: task_id
       

- explore: v_customers

- explore: v_projects
  joins:
     - join: v_customers
       foreign_key: customer_id


- explore: v_tasks
  joins:
     - join: v_customers
       foreign_key: customer_id

     - join: v_projects
       foreign_key: project_id

- explore: v_users


 