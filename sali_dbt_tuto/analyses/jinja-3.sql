---we use date sk for incremental laod data from bronz,  

{% set inc_flag = 1 %}  ---variable initial load of data
{% set last_load = 3 %}   ---variable date sk = 3

{% set cols_list = [ "sales_id" , "date_sk", "net_amount"]  %} 

----looop to call dynamicaly colomns
select 

   {% for i in cols_list %} 
       {{ i }}
       {% if not loop.last %}, {% endif %}
   {% endfor %}    

from
   {{   ref('bronze_sales') }}

{% if inc_flag == 1 %}

 where date_sk > {{ last_load }}

{% endif %} 