- connection: sqlprod

- include: "*.view.lookml"       # include all the views
- include: "*.dashboard.lookml"  # include all the dashboards

- explore: activity
  joins:
     - join: users
       foreign_key: user_id

     - join: customers
       foreign_key: customer_id

     - join: projects
       foreign_key: project_id



     - join: tasks
       foreign_key: task_id

   