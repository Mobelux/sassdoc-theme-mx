
<nav class="side-nav">
  <ul class="social">
    <li><a class="github" href="http://github.com/mobelux/sassdoc-theme-mx">GitHub / Install</a></li>
    <li><a class="twitter" href="http://twitter.com/mobelux">Twitter</a></li>
  </ul>

  <a class="logo-container" href="/styleguide">
    <img alt="{{ view.library.name }} Logo" class="logo" src="../../assets/img/logo.png">
  </a>

  <ul class="list">
    {% for group_name, group in data.byGroupAndType %}
      {% for type, items in group %}
        {% if type == "mixin" %}
          {% include "type_list.swig" %}
        {% endif %}
      {% endfor %}
      {% for type, items in group %}
        {% if type == "function" %}
          {% include "type_list.swig" %}
        {% endif %}
      {% endfor %}
      {% for type, items in group %}
        {% if type == "variable" %}
          {% include "type_list.swig" %}
        {% endif %}
      {% endfor %}
    {% endfor %}
  </ul>
</nav>
