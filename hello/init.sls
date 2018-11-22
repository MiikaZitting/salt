{% if "Windows" == grains["os"] %}
{%      set hellofile = "C:\hellosalt.txt" %}
{% else %}
{%      set hellofile = "/tmp/hellosalt.md" %}
{% endif %}

{{ hellofile }}:
 file.managed:
 - source: salt://hello/hellosalt.txt
