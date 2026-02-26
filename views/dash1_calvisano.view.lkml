view: dash1_calvisano {
  sql_table_name: `fer-acc-data-prj.Calvisano.Dash1Calvisano` ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.ID ;;
  }
  dimension: anno {
    type: number
    sql: ${TABLE}.Anno ;;
  }
  dimension: calo {
    type: number
    sql: ${TABLE}.Calo ;;
  }
  dimension: cod_mat_sap_fk {
    type: number
    sql: ${TABLE}.CodMatSapFK ;;
  }
  dimension: energia_eaf {
    type: number
    sql: ${TABLE}.EnergiaEAF ;;
  }
  dimension: famiglia {
    type: string
    sql: ${TABLE}.Famiglia ;;
  }
  dimension: giorno {
    type: number
    sql: ${TABLE}.Giorno ;;
  }
  dimension: gp {
    type: number
    sql: ${TABLE}.GP ;;
  }
  dimension: linee_perse_cc {
    type: number
    sql: ${TABLE}.LineePerseCC ;;
  }
  dimension: mese {
    type: number
    sql: ${TABLE}.Mese ;;
  }
  dimension: metano_eaf {
    type: number
    sql: ${TABLE}.MetanoEAF ;;
  }
  dimension: misura {
    type: number
    sql: ${TABLE}.Misura ;;
  }
  dimension: ncolata {
    type: string
    sql: cast(${TABLE}.NColata as string) ;;

  }
  dimension: odp {
    type: number
    sql: ${TABLE}.Odp ;;
  }
  dimension: ore_attesa_eaf {
    type: number
    sql: ${TABLE}.OreAttesaEAF ;;
  }
  dimension: ore_lavoro_eaf {
    type: number
    sql: ${TABLE}.OreLavoroEAF ;;
  }
  dimension: ore_totali_eaf {
    type: number
    sql: ${TABLE}.OreTotaliEAF ;;
  }
  dimension: ossigeno_eaf {
    type: number
    sql: ${TABLE}.OssigenoEAF ;;
  }
  dimension: paniere_utilizzate {
    type: number
    sql: ${TABLE}.PaniereUtilizzate ;;
  }
  dimension: produttivita {
    type: number
    sql: ${TABLE}.Produttivita ;;
  }
  dimension: qta_prod_kg {
    type: number
    sql: ${TABLE}.QtaProdKG ;;
  }
  dimension: qta_prod_pz {
    type: number
    sql: ${TABLE}.QtaProdPZ ;;
  }
  dimension: qta_rot_kg {
    type: number
    sql: ${TABLE}.QtaRotKG ;;
  }
  dimension: qual_tec {
    type: string
    sql: ${TABLE}.QualTec ;;
  }
  dimension: sezione {
    type: number
    sql: ${TABLE}.Sezione ;;
  }
  dimension_group: time_stamp {
    type: time
    description: "bq-datetime"
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.TimeStamp ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
