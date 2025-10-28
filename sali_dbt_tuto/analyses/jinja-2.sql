{%-   set apples = [ "orange" , "kiwi" , "gala" , "fuji" , "honey"]   -%}

{%  for i in apples %}

   {%  if i in "kiwi" %}
         {{ i }}

   {% else %}
         i hate {{ i }}

   {% endif %} 

{% endfor %} 