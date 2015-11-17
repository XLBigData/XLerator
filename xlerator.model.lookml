- connection: sqlprod

- include: "*.view.lookml"       # include all the views
- include: "*.dashboard.lookml"  # include all the dashboards

# - explore: activity_tracking
#   joins:
#     - join: users
#       foreign_key: user_id

#     - join: customers
#       foreign_key: customer_id

#     - join: projects
#       foreign_key: project_id

#     - join: clients
#       foreign_key: client_id

#     - join: activity_type
#       foreign_key: activity_type_id

#     - join: tasks
#       foreign_key: task_id

#     - join: customer_type
#       foreign_key: customers.customer_type_id

#     - join: task_type
#       foreign_key: tasks.task_type_id


# - explore: activity_type

# - explore: billable_groups

# - explore: board_already_read
#   joins:
#     - join: users
#       foreign_key: user_id


# - explore: board_main_topic
#   joins:
#     - join: users
#       foreign_key: user_id


# - explore: board_privileges
#   joins:
#     - join: privileges
#       foreign_key: privilege_id

#     - join: groups
#       foreign_key: group_id


# - explore: board_second_topic
#   joins:
#     - join: users
#       foreign_key: user_id


# - explore: board_status

# - explore: board_thread
#   joins:
#     - join: users
#       foreign_key: user_id


# - explore: board_topic
#   joins:
#     - join: users
#       foreign_key: user_id


# - explore: call_reference

# - explore: call_tracking
#   joins:
#     - join: call_type
#       foreign_key: call_type_id

#     - join: call_reference
#       foreign_key: call_reference_id

#     - join: users
#       foreign_key: user_id

#     - join: customers
#       foreign_key: customer_id

#     - join: projects
#       foreign_key: project_id

#     - join: tasks
#       foreign_key: task_id

#     - join: activity_type
#       foreign_key: activity_type_id

#     - join: customer_type
#       foreign_key: customers.customer_type_id

#     - join: task_type
#       foreign_key: tasks.task_type_id


# - explore: call_type

# - explore: client_attribute
#   joins:
#     - join: clients
#       foreign_key: client_id

#     - join: customers
#       foreign_key: clients.customer_id

#     - join: customer_type
#       foreign_key: customers.customer_type_id


# - explore: client_attribute_description
#   joins:
#     - join: clients
#       foreign_key: client_id

#     - join: customers
#       foreign_key: clients.customer_id

#     - join: customer_type
#       foreign_key: customers.customer_type_id


# - explore: clients
#   joins:
#     - join: customers
#       foreign_key: customer_id

#     - join: customer_type
#       foreign_key: customers.customer_type_id


# - explore: code
#   joins:
#     - join: code_group
#       foreign_key: code_group_id


# - explore: code_group

# - explore: concur_report
#   joins:
#     - join: groups
#       foreign_key: group_id

#     - join: reports
#       foreign_key: report_id


# - explore: control_master

# - explore: customer_attribute
#   joins:
#     - join: customers
#       foreign_key: customer_id

#     - join: customer_type
#       foreign_key: customers.customer_type_id


# - explore: customer_attribute_description
#   joins:
#     - join: customers
#       foreign_key: customer_id

#     - join: customer_type
#       foreign_key: customers.customer_type_id


# - explore: customer_description
#   joins:
#     - join: customers
#       foreign_key: customer_id

#     - join: customer_type
#       foreign_key: customers.customer_type_id


# - explore: customer_type

# - explore: customers
#   joins:
#     - join: customer_type
#       foreign_key: customer_type_id


# - explore: dim_date

# - explore: dtproperties

# - explore: events
#   joins:
#     - join: customers
#       foreign_key: customer_id

#     - join: projects
#       foreign_key: project_id

#     - join: clients
#       foreign_key: client_id

#     - join: customer_type
#       foreign_key: customers.customer_type_id


# - explore: file_attachments

# - explore: file_purpose_types

# - explore: file_purposes
#   joins:
#     - join: file_purpose_types
#       foreign_key: file_purpose_type_id


# - explore: group_menus
#   joins:
#     - join: groups
#       foreign_key: group_id

#     - join: menus
#       foreign_key: menu_id


# - explore: group_privileges
#   joins:
#     - join: groups
#       foreign_key: group_id

#     - join: privileges
#       foreign_key: privilege_id

#     - join: menus
#       foreign_key: menu_id


# - explore: groups

# - explore: menus

# - explore: news
#   joins:
#     - join: users
#       foreign_key: user_id


# - explore: preference_page

# - explore: privilege_menus
#   joins:
#     - join: privileges
#       foreign_key: privilege_id

#     - join: menus
#       foreign_key: menu_id


# - explore: privileges

# - explore: processed_call

# - explore: project_attribute
#   joins:
#     - join: projects
#       foreign_key: project_id

#     - join: customers
#       foreign_key: projects.customer_id

#     - join: customer_type
#       foreign_key: customers.customer_type_id


# - explore: project_attribute_description
#   joins:
#     - join: projects
#       foreign_key: project_id

#     - join: customers
#       foreign_key: projects.customer_id

#     - join: customer_type
#       foreign_key: customers.customer_type_id


# - explore: project_description
#   joins:
#     - join: projects
#       foreign_key: project_id

#     - join: customers
#       foreign_key: projects.customer_id

#     - join: customer_type
#       foreign_key: customers.customer_type_id


# - explore: project_income
#   joins:
#     - join: projects
#       foreign_key: project_id

#     - join: project_income_type
#       foreign_key: project_income_type_id

#     - join: customers
#       foreign_key: projects.customer_id

#     - join: customer_type
#       foreign_key: customers.customer_type_id


# - explore: project_income_type

# - explore: project_status

# - explore: project_status_history
#   joins:
#     - join: projects
#       foreign_key: project_id

#     - join: project_status
#       foreign_key: project_status_id

#     - join: customers
#       foreign_key: projects.customer_id

#     - join: customer_type
#       foreign_key: customers.customer_type_id


# - explore: project_worth_estimate
#   joins:
#     - join: projects
#       foreign_key: project_id

#     - join: customers
#       foreign_key: projects.customer_id

#     - join: customer_type
#       foreign_key: customers.customer_type_id


# - explore: projects
#   joins:
#     - join: customers
#       foreign_key: customer_id

#     - join: customer_type
#       foreign_key: customers.customer_type_id


# - explore: projects_file_attachments_xref
#   joins:
#     - join: projects
#       foreign_key: project_id

#     - join: file_attachments
#       foreign_key: file_attachment_id

#     - join: file_purposes
#       foreign_key: file_purpose_id

#     - join: customers
#       foreign_key: projects.customer_id

#     - join: customer_type
#       foreign_key: customers.customer_type_id

#     - join: file_purpose_types
#       foreign_key: file_purposes.file_purpose_type_id


# - explore: quick_report_links
#   joins:
#     - join: reports
#       foreign_key: report_id


# - explore: regular_expressions

# - explore: reports

# - explore: search_master

# - explore: sfcomment_status

# - explore: sfcomments
#   joins:
#     - join: users
#       foreign_key: user_id


# - explore: sfcomments_read
#   joins:
#     - join: users
#       foreign_key: user_id


# - explore: sfdepartments
#   joins:
#     - join: users
#       foreign_key: user_id


# - explore: sfforum

# - explore: sfstandard_status

# - explore: sfstandards

# - explore: sftopics

# - explore: step_date
#   joins:
#     - join: steps
#       foreign_key: step_id

#     - join: projects
#       foreign_key: steps.project_id

#     - join: customers
#       foreign_key: projects.customer_id

#     - join: customer_type
#       foreign_key: customers.customer_type_id


# - explore: step_date_change_description

# - explore: step_stage

# - explore: steps
#   joins:
#     - join: projects
#       foreign_key: project_id

#     - join: customers
#       foreign_key: projects.customer_id

#     - join: customer_type
#       foreign_key: customers.customer_type_id


# - explore: sysdiagrams

# - explore: system_activity
#   joins:
#     - join: users
#       foreign_key: user_id

#     - join: system_activity_type
#       foreign_key: system_activity_type_id


# - explore: system_activity_type

# - explore: task_due_date
#   joins:
#     - join: tasks
#       foreign_key: task_id

#     - join: customers
#       foreign_key: tasks.customer_id

#     - join: projects
#       foreign_key: tasks.project_id

#     - join: task_type
#       foreign_key: tasks.task_type_id

#     - join: customer_type
#       foreign_key: customers.customer_type_id


# - explore: task_files
#   joins:
#     - join: tasks
#       foreign_key: task_id

#     - join: customers
#       foreign_key: tasks.customer_id

#     - join: projects
#       foreign_key: tasks.project_id

#     - join: task_type
#       foreign_key: tasks.task_type_id

#     - join: customer_type
#       foreign_key: customers.customer_type_id


# - explore: task_priority_history
#   joins:
#     - join: tasks
#       foreign_key: task_id

#     - join: users
#       foreign_key: user_id

#     - join: customers
#       foreign_key: tasks.customer_id

#     - join: projects
#       foreign_key: tasks.project_id

#     - join: task_type
#       foreign_key: tasks.task_type_id

#     - join: customer_type
#       foreign_key: customers.customer_type_id


# - explore: task_status

# - explore: task_status_xref
#   joins:
#     - join: tasks
#       foreign_key: task_id

#     - join: task_status
#       foreign_key: task_status_id

#     - join: customers
#       foreign_key: tasks.customer_id

#     - join: projects
#       foreign_key: tasks.project_id

#     - join: task_type
#       foreign_key: tasks.task_type_id

#     - join: customer_type
#       foreign_key: customers.customer_type_id


# - explore: task_type

# - explore: task_users
#   joins:
#     - join: tasks
#       foreign_key: task_id

#     - join: users
#       foreign_key: user_id

#     - join: customers
#       foreign_key: tasks.customer_id

#     - join: projects
#       foreign_key: tasks.project_id

#     - join: task_type
#       foreign_key: tasks.task_type_id

#     - join: customer_type
#       foreign_key: customers.customer_type_id


# - explore: tasks
#   joins:
#     - join: customers
#       foreign_key: customer_id

#     - join: projects
#       foreign_key: project_id

#     - join: task_type
#       foreign_key: task_type_id

#     - join: customer_type
#       foreign_key: customers.customer_type_id


# - explore: user_attribute
#   joins:
#     - join: users
#       foreign_key: user_id


# - explore: user_attribute_description
#   joins:
#     - join: users
#       foreign_key: user_id


# - explore: user_billable_groups
#   joins:
#     - join: users
#       foreign_key: user_id

#     - join: billable_groups
#       foreign_key: billable_group_id


# - explore: user_customer_projects
#   joins:
#     - join: users
#       foreign_key: user_id

#     - join: customers
#       foreign_key: customer_id

#     - join: projects
#       foreign_key: project_id

#     - join: customer_type
#       foreign_key: customers.customer_type_id


# - explore: user_groups
#   joins:
#     - join: users
#       foreign_key: user_id

#     - join: groups
#       foreign_key: group_id


# - explore: user_preference
#   joins:
#     - join: preference_page
#       foreign_key: preference_page_id

#     - join: users
#       foreign_key: user_id


# - explore: user_preference_temp
#   joins:
#     - join: user_preference
#       foreign_key: user_preference_id

#     - join: preference_page
#       foreign_key: preference_page_id

#     - join: users
#       foreign_key: user_id


# - explore: user_privilege
#   joins:
#     - join: users
#       foreign_key: user_id

#     - join: privileges
#       foreign_key: privilege_id


# - explore: user_reporting_attribute
#   joins:
#     - join: users
#       foreign_key: user_id


# - explore: user_reporting_attribute_description

# - explore: user_reports_exclude
#   joins:
#     - join: users
#       foreign_key: user_id

#     - join: reports
#       foreign_key: report_id


# - explore: users

# - explore: v_active_user_work_activity
#   joins:
#     - join: users
#       foreign_key: user_id

#     - join: customers
#       foreign_key: customer_id

#     - join: projects
#       foreign_key: project_id

#     - join: tasks
#       foreign_key: task_id

#     - join: activity_type
#       foreign_key: activity_type_id

#     - join: customer_type
#       foreign_key: customers.customer_type_id

#     - join: task_type
#       foreign_key: tasks.task_type_id


# - explore: v_all_activity
#   joins:
#     - join: activity_tracking
#       foreign_key: activity_tracking_id

#     - join: call_tracking
#       foreign_key: call_tracking_id

#     - join: users
#       foreign_key: user_id

#     - join: customers
#       foreign_key: customer_id

#     - join: projects
#       foreign_key: project_id

#     - join: tasks
#       foreign_key: task_id

#     - join: activity_type
#       foreign_key: activity_type_id

#     - join: clients
#       foreign_key: activity_tracking.client_id

#     - join: call_type
#       foreign_key: call_tracking.call_type_id

#     - join: call_reference
#       foreign_key: call_tracking.call_reference_id

#     - join: customer_type
#       foreign_key: customers.customer_type_id

#     - join: task_type
#       foreign_key: tasks.task_type_id


# - explore: v_call_summary

# - explore: v_call_summary_current_week_vs_last

# - explore: v_change_requests
#   joins:
#     - join: customers
#       foreign_key: customer_id

#     - join: projects
#       foreign_key: project_id

#     - join: task_type
#       foreign_key: task_type_id

#     - join: customer_type
#       foreign_key: customers.customer_type_id


# - explore: v_change_requests_total
#   joins:
#     - join: customers
#       foreign_key: customer_id

#     - join: task_type
#       foreign_key: task_type_id

#     - join: customer_type
#       foreign_key: customers.customer_type_id


# - explore: v_programmer_activity
#   joins:
#     - join: activity_tracking
#       foreign_key: activity_tracking_id

#     - join: users
#       foreign_key: user_id

#     - join: customers
#       foreign_key: customer_id

#     - join: projects
#       foreign_key: project_id

#     - join: tasks
#       foreign_key: task_id

#     - join: activity_type
#       foreign_key: activity_type_id

#     - join: clients
#       foreign_key: activity_tracking.client_id

#     - join: customer_type
#       foreign_key: customers.customer_type_id

#     - join: task_type
#       foreign_key: tasks.task_type_id


# - explore: v_xleraters
#   joins:
#     - join: users
#       foreign_key: user_id


# - explore: v_xlerator_activity_user_details
#   joins:
#     - join: users
#       foreign_key: user_id

#     - join: customers
#       foreign_key: customer_id

#     - join: projects
#       foreign_key: project_id

#     - join: activity_type
#       foreign_key: activity_type_id

#     - join: tasks
#       foreign_key: task_id

#     - join: call_type
#       foreign_key: call_type_id

#     - join: customer_type
#       foreign_key: customers.customer_type_id

#     - join: task_type
#       foreign_key: tasks.task_type_id


# - explore: v_xlereator_activity
#   joins:
#     - join: activity_tracking
#       foreign_key: activity_tracking_id

#     - join: users
#       foreign_key: user_id

#     - join: customers
#       foreign_key: customer_id

#     - join: projects
#       foreign_key: project_id

#     - join: activity_type
#       foreign_key: activity_type_id

#     - join: tasks
#       foreign_key: task_id

#     - join: clients
#       foreign_key: activity_tracking.client_id

#     - join: customer_type
#       foreign_key: customers.customer_type_id

#     - join: task_type
#       foreign_key: tasks.task_type_id


# - explore: view_state_save

# - explore: vw_xlbig_data_sales_activity
#   joins:
#     - join: projects
#       foreign_key: project_id

#     - join: project_status
#       foreign_key: project_status_id

#     - join: users
#       foreign_key: user_id

#     - join: tasks
#       foreign_key: task_id

#     - join: customers
#       foreign_key: projects.customer_id

#     - join: customer_type
#       foreign_key: customers.customer_type_id

#     - join: task_type
#       foreign_key: tasks.task_type_id


# - explore: vw_xlbig_data_sales_activity_calls

# - explore: workflow
#   joins:
#     - join: tasks
#       foreign_key: task_id

#     - join: customers
#       foreign_key: customer_id

#     - join: projects
#       foreign_key: project_id

#     - join: task_type
#       foreign_key: tasks.task_type_id

#     - join: customer_type
#       foreign_key: customers.customer_type_id


# - explore: workflow_status

# - explore: workflow_to
#   joins:
#     - join: workflow
#       foreign_key: workflow_id

#     - join: tasks
#       foreign_key: workflow.task_id

#     - join: customers
#       foreign_key: workflow.customer_id

#     - join: projects
#       foreign_key: workflow.project_id

#     - join: task_type
#       foreign_key: tasks.task_type_id

#     - join: customer_type
#       foreign_key: customers.customer_type_id


