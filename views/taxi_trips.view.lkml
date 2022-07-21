view: taxi_trips {
  sql_table_name: `bigquery-demo-awfownwfmt.taxi_dataset.taxi_trips`
    ;;

  dimension: congestion_surcharge {
    type: number
    sql: ${TABLE}.Congestion_Surcharge ;;
  }

  dimension: dolocation_id {
    type: number
    sql: ${TABLE}.DOLocationID ;;
  }

  dimension_group: dropoff_date {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.Dropoff_DateTime ;;
  }

  dimension: ehail_fee {
    type: number
    sql: ${TABLE}.Ehail_Fee ;;
  }

  dimension: fare_amount {
    type: number
    sql: ${TABLE}.Fare_Amount ;;
  }

  dimension: improvement_surcharge {
    type: number
    sql: ${TABLE}.Improvement_Surcharge ;;
  }

  dimension: mta_tax {
    type: number
    sql: ${TABLE}.MTA_Tax ;;
  }

  dimension_group: partition {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.PartitionDate ;;
  }

  dimension: passenger_count {
    type: number
    sql: ${TABLE}.Passenger_Count ;;
  }

  dimension: payment_type_id {
    type: number
    sql: ${TABLE}.Payment_Type_Id ;;
  }

  dimension_group: pickup_date {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.Pickup_DateTime ;;
  }

  dimension: pulocation_id {
    type: number
    sql: ${TABLE}.PULocationID ;;
  }

  dimension: rate_code_id {
    type: number
    sql: ${TABLE}.Rate_Code_Id ;;
  }

  dimension: store_and_forward {
    type: string
    sql: ${TABLE}.Store_And_Forward ;;
  }

  dimension: surcharge {
    type: number
    sql: ${TABLE}.Surcharge ;;
  }

  dimension: taxi_company {
    type: string
    sql: ${TABLE}.TaxiCompany ;;
  }

  dimension: tip_amount {
    type: number
    sql: ${TABLE}.Tip_Amount ;;
  }

  dimension: tolls_amount {
    type: number
    sql: ${TABLE}.Tolls_Amount ;;
  }

  dimension: total_amount {
    type: number
    sql: ${TABLE}.Total_Amount ;;
  }

  dimension: trip_distance {
    type: number
    sql: ${TABLE}.Trip_Distance ;;
  }

  dimension: trip_type {
    type: number
    sql: ${TABLE}.Trip_Type ;;
  }

  dimension: vendor_id {
    type: number
    sql: ${TABLE}.Vendor_Id ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
