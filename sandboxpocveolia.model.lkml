connection: "lookersandbox"

# include all the views
include: "*.view"

# include all the dashboards
include: "*.dashboard"

datagroup: sandboxpocveolia_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: sandboxpocveolia_default_datagroup

explore: v_point_prelevement_v1 {}

explore: v_prelevement_v1 {
  join: v_point_prelevement_v1 {
    sql_on: ${v_prelevement_v1.cle_pplv} = ${v_point_prelevement_v1.cle_pplv} ;;
    }
}

explore: v_resultat_analyse_v1 {
    join: v_prelevement_v1 {
    sql_on: ${v_resultat_analyse_v1.cle_plv} = ${v_prelevement_v1.cle_plv} ;;
   # fields: [ v_resultat_analyse_v1.code_parametre,v_resultat_analyse_v1.libelle_parametre,v_resultat_analyse_v1.conforme_parametre ]
  }

  join: v_point_prelevement_v1 {
    sql_on: ${v_prelevement_v1.cle_pplv} = ${v_point_prelevement_v1.cle_pplv} ;;
  }

}