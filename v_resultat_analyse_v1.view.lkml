view: v_resultat_analyse_v1 {
  sql_table_name: lookersandbox.V_RESULTAT_ANALYSE_V1 ;;

  dimension: cle_plv {
    type: number
    sql: ${TABLE}.CLE_PLV ;;
  }

  dimension: cle_ran {
    type: number
    sql: ${TABLE}.CLE_RAN ;;
  }

  dimension: code_parametre {
    type: string
    sql: ${TABLE}.CODE_PARAMETRE ;;
  }

  dimension: conforme_parametre {
    type: string
    sql: ${TABLE}.CONFORME_PARAMETRE ;;
  }

  dimension: libelle_parametre {
    type: string
    sql: ${TABLE}.LIBELLE_PARAMETRE ;;
  }

  dimension: valeur_saisie {
    type: number
    sql: ${TABLE}.VALEUR_SAISIE ;;
  }

  measure: analyse_count {
    type: count
  }
}
