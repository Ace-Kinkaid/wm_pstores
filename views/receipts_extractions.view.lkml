view: receipts_extractions {
  sql_table_name: `pro-world-313702.walmart_paperless_store.receipts_extractions` ;;

  dimension: gcs_url {
    label: "GCS URL"
    type: string
    sql: ${TABLE}.gcs_url ;;
  }

  dimension: image_location {
    label: "Receipt Image"
    type: string
    sql: CASE
            WHEN ${TABLE}.gcs_url IS NULL THEN "https://lh3.googleusercontent.com/nQqqgPFv6R3ixx0t4guZv-eRCGY8A9XY3HXse4XQwB_herRS6P51S1kNzxBSw0NBjtOBGugRV217=e14-rj-sc0xffffff-h338-w600"
            ELSE CONCAT(REPLACE(${TABLE}.gcs_url,'gs://','https://storage.cloud.google.com/'),'?authuser=1')
         END ;;
    html: <img src="{{ value }}" style="width:700px;" /> ;;
    #html: <img src="{{ value }}" style="width:55 vw; min-width: 100px;"/> ;;
  }

  dimension: image_url {
    label: "Receipt Authenticated URL"
    type: string
    sql: CASE
            WHEN ${TABLE}.gcs_url IS NULL THEN "https://lh3.googleusercontent.com/nQqqgPFv6R3ixx0t4guZv-eRCGY8A9XY3HXse4XQwB_herRS6P51S1kNzxBSw0NBjtOBGugRV217=e14-rj-sc0xffffff-h338-w600"
            ELSE CONCAT(REPLACE(${TABLE}.gcs_url,'gs://','https://storage.cloud.google.com/'),'?authuser=1')
         END ;;
    link: {
      #label: "Transaction Detail Report: ID# {{value}}"
      label: "View Purchase Details"
      url: "https://cloud.google.com"
      icon_url: "https://freeiconshop.com/wp-content/uploads/edd/clipboard-list-outline.png"
    }
    link: {
      label: "Email Vendor"
      url: "mailto:cjgunn@google.com"
      icon_url: "https://1000logos.net/wp-content/uploads/2021/05/Gmail-logo.png"
    }
    link: {
      label: "View Receipt Image"
      url: "https://26f8fa28-f7e5-496b-9917-8f67b49271fd.looker.app/looks/32?&f[receipts_extractions.image_location]={{ image_url._value }}&toggle=det"
      icon_url: "https://freeiconshop.com/wp-content/uploads/edd/image-solid.png"
    }
    link: {
      label: "Download Receipt Image"
      url: "{{ image_url._value }} "
      icon_url: "https://freeiconshop.com/wp-content/uploads/edd/download-flat.png"
    }
    action: {
      label: "Audit Transaction"
      url: "https://hooks.zapier.com/hooks/catch/2813548/oosxkej/"
      form_param: {
        name: "Audit ID"
        type: string
        default: "{{ value }}"
      }

      form_param: {
        name: "Message"
        type: textarea
        default: "Test Test Test"
      }
    }
  }

  dimension: raw_receipt_text {
    type: string
    sql: ${TABLE}.text ;;
  }

  dimension: txn_amount {
    type: number
    sql: COALESCE(SAFE_CAST(${TABLE}.txn_amount AS NUMERIC),0) ;;
    value_format_name: usd
  }

  dimension_group: txn {
    type: time
    datatype: date
    timeframes: [raw, date, week, month, quarter, year, day_of_week]
    sql: COALESCE(SAFE_CAST(${TABLE}.txn_date AS DATE),CAST('1900-01-01' AS DATE)) ;;
  }

  dimension: purchase_company_name {
    type: string
    sql: ${TABLE}.purchase_company_name ;;
  }

  dimension: purchase_city {
    type: string
    sql: ${TABLE}.purchase_city ;;
  }

  # Note that one state value is null and has a large txn amount associated with it
  # On the dashboard, add a note at the top of the tile for this
  dimension: purchase_state {
    type: string
    map_layer_name: us_states
    sql: ${TABLE}.purchase_state ;;
  }

  dimension: purchase_items {
    hidden: yes
    sql: ${TABLE}.purchase_items ;;
  }

  measure: total_txn_amount {
    label: "Total Transaction Amount"
    type: sum
    sql: ${txn_amount} ;;
    value_format_name: usd
  }

  measure: txn_count {
    type: count
    drill_fields: [purchase_company_name]
  }
}

view: receipts_extractions__purchase_items {

  dimension: line_item {
    type: string
    sql: line_item ;;
  }

  dimension: line_item_amount {
    type: number
    sql: amount ;;
    value_format_name: usd
  }

  dimension: line_item_description {
    type: string
    sql: description ;;
  }

  dimension: product_code {
    type: string
    sql: product_code ;;
  }

  dimension: receipts_extractions__purchase_items {
    type: string
    hidden: yes
    sql: receipts_extractions__purchase_items ;;
  }

  measure: total_line_item_amount {
    type: sum
    sql: ${line_item_amount} ;;
    value_format_name: usd
  }

  measure: total_line_item_count {
    type: count_distinct
    sql:  ${line_item};;
  }
}
