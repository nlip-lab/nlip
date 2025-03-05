---
title: Resources
permalink: /resources/
---

## Lab Resources

<table>
  <thead>
    <tr>
      <th>Name</th>
      <th>Type</th>
      <th>Details</th>
      <th>Associated Paper</th>
      <th>Links</th>
    </tr>
  </thead>
  <tbody>
  {% for r in site.data.lab %}
  <tr>
    <td>{{r.name}}</td>
    <td>{{r.type}}</td>
    <td>{{r.details}}</td>
    <td>{{r.paper}}</td>
    <td><a href="{{r.link}}" download>Download</a></td>
  </tr>
  {% endfor %}
  </tbody>
</table>



## Community Resources

<table>
   <tr>
    <th colspan="2"  style="text-align: center; font-size: 20px;">General Suggestions for Ph.D. Students</th>
  </tr>
  <tbody>
  {% for r in site.data.community %}
  {% if r.tag == "suggestions-phd" %}
  <tr>
    <td style="width: 80%;">{{r.title}}</td>
    <td style="width: 20%; text-align: center"><a href="{{r.link}}" download>Link</a></td>
  </tr>
  {%endif%}
  {% endfor %}
  </tbody>
</table>

<table>
   <tr>
    <th colspan="2"  style="text-align: center; font-size: 20px;">Popular NLP Courses</th>
  </tr>
  <tbody>
  {% for r in site.data.community %}
  {% if r.tag == "popular-nlp-courses" %}
  <tr>
    <td style="width: 80%;">{{r.title}}</td>
    <td style="width: 20%; text-align: center"><a href="{{r.link}}" download>Link</a></td>
  </tr>
  {%endif%}
  {% endfor %}
  </tbody>
</table>

<table>
   <tr>
    <th colspan="2"  style="text-align: center; font-size: 20px;">Popular Mathematical Foundation, Machine Learning and Deep Learning Courses</th>
  </tr>
  <tbody>
  {% for r in site.data.community %}
  {% if r.tag == "ml-dl-courses" %}
  <tr>
    <td style="width: 80%;">{{r.title}}</td>
    <td style="width: 20%; text-align: center"><a href="{{r.link}}" download>Link</a></td>
  </tr>
  {%endif%}
  {% endfor %}
  </tbody>
</table>

<table>
   <tr>
    <th colspan="2"  style="text-align: center; font-size: 20px;">Upcoming Submission Deadlines</th>
  </tr>
  <tbody>
  {% for r in site.data.community %}
  {% if r.tag == "conference-deadlines" %}
  <tr>
    <td style="width: 80%;">{{r.title}}</td>
    <td style="width: 20%; text-align: center"><a href="{{r.link}}" download>Link</a></td>
  </tr>
  {%endif%}
  {% endfor %}
  </tbody>
</table>


<table>
   <tr>
    <th colspan="2"  style="text-align: center; font-size: 20px;">NLP Resources</th>
  </tr>
  <tbody>
  {% for r in site.data.community %}
  {% if r.tag == "nlp-resources" %}
  <tr>
    <td style="width: 80%;">{{r.title}}</td>
    <td style="width: 20%; text-align: center"><a href="{{r.link}}" download>Link</a></td>
  </tr>
  {%endif%}
  {% endfor %}
  </tbody>
</table>

<table>
   <tr>
    <th colspan="2"  style="text-align: center; font-size: 20px;">Ranking Sources</th>
  </tr>
  <tbody>
  {% for r in site.data.community %}
  {% if r.tag == "ranking-sources" %}
  <tr>
    <td style="width: 80%;">{{r.title}}</td>
    <td style="width: 20%; text-align: center"><a href="{{r.link}}" download>Link</a></td>
  </tr>
  {%endif%}
  {% endfor %}
  </tbody>
</table>


<table>
   <tr>
    <th colspan="2"  style="text-align: center; font-size: 20px;">Other Relevant Resources</th>
  </tr>
  <tbody>
  {% for r in site.data.community %}
  {% if r.tag == "other-sources" %}
  <tr>
    <td style="width: 80%;">{{r.title}}</td>
    <td style="width: 20%; text-align: center"><a href="{{r.link}}" download>Link</a></td>
  </tr>
  {%endif%}
  {% endfor %}
  </tbody>
</table>
