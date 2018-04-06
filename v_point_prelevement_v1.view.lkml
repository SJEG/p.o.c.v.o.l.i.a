view: v_point_prelevement_v1 {
  sql_table_name: lookersandbox.V_POINT_PRELEVEMENT_V1 ;;

  dimension: cle_pplv {
    type: number
    sql: ${TABLE}.CLE_PPLV ;;
  }

  dimension: code_contrat {
    type: string
    sql: ${TABLE}.CODE_CONTRAT ;;
  }

  dimension: code_entite_reseau {
    type: string
    sql: ${TABLE}.CODE_ENTITE_RESEAU ;;
  }

  dimension: code_insee_commune {
    type: string
    sql: ${TABLE}.CODE_INSEE_COMMUNE ;;
  }

  dimension: code_nature {
    type: string
    sql: ${TABLE}.CODE_NATURE ;;
  }

  dimension: code_pplv {
    type: string
    sql: ${TABLE}.CODE_PPLV ;;
  }

  dimension: coord_x {
    type: number
    sql: ${TABLE}.COORD_X ;;
  }

  dimension: coord_y {
    type: number
    sql: ${TABLE}.COORD_Y ;;
  }

  dimension: gestion_pplv {
    type: string
    sql: ${TABLE}.GESTION_PPLV ;;
  }

  dimension: libelle_contrat {
    type: string
    sql: ${TABLE}.LIBELLE_CONTRAT ;;
  }

  dimension: libelle_insee_commune {
    type: string
    sql: ${TABLE}.LIBELLE_INSEE_COMMUNE ;;
  }

  dimension: libelle_nature {
    type: string
    sql: ${TABLE}.LIBELLE_NATURE ;;
  }

  dimension: nom_pplv {
    type: string
    sql: ${TABLE}.NOM_PPLV ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
