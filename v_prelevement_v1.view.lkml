view: v_prelevement_v1 {
  sql_table_name: lookersandbox.V_PRELEVEMENT_V1 ;;

  dimension: cle_plv {
    type: number
    primary_key: yes
    sql: ${TABLE}.CLE_PLV ;;
  }

  dimension: cle_pplv {
    type: number
    sql: ${TABLE}.CLE_PPLV ;;
  }

  dimension: code_nat_programme {
    type: string
    sql: ${TABLE}.CODE_NAT_PROGRAMME ;;
  }


  dimension: code_statut {
    type: string
    sql: ${TABLE}.CODE_STATUT ;;
  }

  dimension: conforme_bacterio {
    type: string
    sql: ${TABLE}.CONFORME_BACTERIO ;;
  }

  dimension: conforme_physiqco {
    type: string
    sql: ${TABLE}.CONFORME_PHYSIQCO ;;
  }

  dimension_group: date_prelevement {
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
    sql: ${TABLE}.DATE_PRELEVEMENT ;;
  }

  dimension: eau_distribution {
    type: string
    sql: ${TABLE}.EAU_DISTRIBUTION ;;
  }

  dimension: libelle_statut {
    type: string
    sql: ${TABLE}.LIBELLE_STATUT ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
