---
title: People
permalink: /people/
---

{% assign people_sorted = site.people | sort: 'joined' %}
{% assign role_array = "professor|postdoc|phd|masters|researchstaff|visiting|others|alumni|mtechalumni" | split: "|" %}

{% for role in role_array %}

{% assign people_in_role = people_sorted | where: 'position', role %}

<!-- Skip section if there's nobody -->

{% if people_in_role.size == 0 %}
{% continue %}
{% endif %}

<div class="pos_header">
{% if role == 'phd' %}
<h3>Ph.D. Students</h3>
 {% elsif role == 'professor' %}
<h3>Faculty</h3>
 {% elsif role == 'masters' %}
<h3>M.Tech. Students</h3>
{% elsif role == 'mtechalumni' %}
<h3>M.Tech. Alumni Students</h3>
 {% elsif role == 'researchstaff' %}
<h3>Research Staff</h3>
 {% elsif role == 'visiting' %}>
<h3>Visiting Scholars</h3>
 {% elsif role == 'others' %}
<h3>Ph.D. Alumni students</h3>
{% endif %}
</div>

{% if role != 'alumni' %}

<div class="content list people">
  {% for profile in people_sorted %}
    {% if profile.position contains role %}
      <div class="list-item-people" style="padding: 1em;">
        <div class="list-post-title">
        <div class="" style="width:200px; margin:0 auto;">
          {% if profile.avatar %}
            <a href="{{ site.baseurl }}{{ profile.url }}"><img class="profile-thumbnail" src="{{site.baseurl}}/images/people/{{profile.avatar}}" style="border: 0px solid #e6e6e6; align:center; border-radius: 300px;"></a>
          {% else %}
            <a href="{{ site.baseurl }}{{ profile.url }}"><img class="profile-thumbnail" src="http://evansheline.com/wp-content/uploads/2011/02/facebook-Storm-Trooper.jpg"></a>
          {% endif %}
         <a class="people" href="{{ site.baseurl }}{{ profile.url }}">{{ profile.name }}</a>
        </div>
        <span style="width: 150px; color: #a6a6a6;">{{profile.affiliation}}</span>
        </div>
      </div>    
    {% endif %}
  {% endfor %}
</div>
<hr>

{% else %}
{% endif %}
{% endfor %}

<h3>Alumni</h3>

| Name                                                                              | Batch                                                                            | Current Affiliation                                       |
| :-------------------------------------------------------------------------------- | :------------------------------------------------------------------------------- | :-------------------------------------------------------- |
| [Sharan Narasimhan](https://www.linkedin.com/in/sharan21/)                        | Masters student (2020-2022)                                                      | Data Engineer at Indeed                                   |
| [Venkatesh E](https://www.linkedin.com/in/venkateshelangovan/)                    | Masters student (2020-2022)                                                      | Machine Learning Engineer at Qualcomm                     |
| [Arkadipta De](https://www.linkedin.com/in/arkadipta-de/)                         | Masters student (2020-2022)                                                      | Applied AI Researcher at Fujitsu Research India           |
| [Vandita Dutt ](https://www.linkedin.com/in/vandita-dutt-840646141/)              | Masters student (2020-2022)                                                      | -                                                         |
| [Sagar Jinde ](https://www.linkedin.com/in/sagarjinde/)                           | Masters student (2019-2021)                                                      | Machine Learning Engineer at Qualcomm                     |
| [Vikram Anand Singh ](https://www.linkedin.com/in/vikramanandsingh/)              | Masters student (2018-2020)                                                      | Software Developer at BNY Mellon Technology               |
| [Shounak Kundu](https://www.linkedin.com/in/shounak-kundu-53977817/)              | Masters student, 3-Year MTech, joint supervision with Dr. Srijith PK (2018-2021) | Machine Learning Engineer atInMobi                        |
| [Rishik Ramena ](https://www.linkedin.com/in/rishik-ramena-0a0b52b0/)             | Masters student, 3-Year MTech, joint supervision with Dr. Srijith PK (2018 )     | Software Engineer at Microsoft                            |
| [Priyambada Ambastha](https://www.linkedin.com/in/priyambada-ambastha-133962119/) | Masters student, 3-Year MTech, joint supervision with Dr. Srijith PK (2018-2021) | <b>Gold Medalist</b> at IITH, Applied Scientist at Amazon |
| [Rashmi HTI ](https://www.linkedin.com/in/rashmi-hti-3bb52039/)                   | Masters student (2016-2018)                                                      | Associate at Goldman Sachs                                |
| [Priyanka Choudhary](https://www.linkedin.com/in/priyanka-choudhary-9b0b46111/)   | Masters student (2016-2018)                                                      | Lecturer at rpsc technical education department           |
| [Shamik Kundu ](https://www.linkedin.com/in/shamikkundu/)                         | Masters student (2016-2018)                                                      | Data Scientist at Rakuten                                 |
| [Manjela Toppo ](https://www.linkedin.com/in/manjela-toppo-021342154/)            | Masters student(2016-2018)                                                       | -                                                         |
| [Shashank Singh](https://www.linkedin.com/in/shashank-singh-a527bb112/)           | Masters Student (2015-2017)                                                      | Software Developer at PayPal                              |
| [Pradyumna Deshpande ](https://www.linkedin.com/in/pradyumna-deshpande-72a51455/) | Masters Student (2015-2017)                                                      | Platform Engineer at PayPay Corporation Tokyo, Japan      |
| [Swapnil Ashok dewalakar](https://www.linkedin.com/in/swapdewalkar/)              | Masters student (2017-2019)                                                      | SDE at Fanatics,Inc.                                      |
