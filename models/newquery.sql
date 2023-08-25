{{
    config(
        materialized='table'
    )
}}
SELECT edition as edition1,
report_type as rtype,
state_name as sname,
subpopulation as subpopul,
source_date as date
 FROM `bigquery-public-data.america_health_rankings.ahr`
 group by
 1,
 2,
 3,
 4,
 5