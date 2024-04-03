connection: "paperless_stores_bq"

include: "/views/*.view.lkml"                # include all views in the views/ folder in this project
# include: "/**/*.view.lkml"                 # include all views in this project
# include: "my_dashboard.dashboard.lookml"   # include a LookML dashboard called my_dashboard

explore: receipts_extractions {
  hidden: no
  join: receipts_extractions__purchase_items {
    view_label: "Receipts Extractions: Purchase Items"
    sql: LEFT JOIN UNNEST(${receipts_extractions.purchase_items}) as receipts_extractions__purchase_items ;;
    relationship: one_to_many
  }
}
