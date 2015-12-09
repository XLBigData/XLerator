- connection: sqlprod

- include: "*.view.lookml"       # include all the views
- include: "*.dashboard.lookml"  # include all the dashboards

- explore: activity
  view: v_activity
  joins:
     - join: users
       from: v_users
       foreign_key: v_activity.user_id
       
     - join: tasks
       from: v_tasks
       foreign_key: v_activity.task_id

     - join: projects
       from : v_projects
       foreign_key: v_activity.project_id

#     - join: activeprojectsfilter
#       from : v_active_projects_filter
#       foreign_key: v_activity.project_id 
#       foreign_key: v_activity.user_group_id 
#       foreign_key: v_activity.activity_type_id 

     
#     - join: v_customers
#       foreign_key: customer_id
       

- explore: customers
  view: v_customers
  
- explore: projects
  view: v_projects
  joins:
     - join: customers
       from: v_customers
       foreign_key: v_projects.customer_id
       
- explore: users
  view: v_users

- explore: tasks
  view: v_tasks
  joins:
     - join: projects
       from: v_projects
       foreign_key: v_tasks.project_id
       
  




 