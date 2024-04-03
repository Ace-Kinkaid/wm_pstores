connection: "paperless_stores_bq"
label: "Paperless Stores POC"

include: "/views/*.view.lkml"                # include all views in the views/ folder in this project
include: "/dashboards/*.dashboard.lookml"   # include all dashboards in the dashboards/ folder in this project

explore: receipts_extractions {
  hidden: no
  join: receipts_extractions__purchase_items {
    view_label: "Receipts Extractions: Purchase Items"
    sql: LEFT JOIN UNNEST(${receipts_extractions.purchase_items}) as receipts_extractions__purchase_items ;;
    relationship: one_to_many
  }
}
