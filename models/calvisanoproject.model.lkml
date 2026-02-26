connection: "fer-acc-data-prj-connection"

# include all the views
include: "/views/**/*.view.lkml"

datagroup: calvisanoproject_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: calvisanoproject_default_datagroup

