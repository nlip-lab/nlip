---
title: People
permalink: /people/
layout: default
---

<style>
.sticky-tabs {
  position: sticky;
  top: 0;
  z-index: 100;
  background: white;
  padding: 1rem 0;
  margin-bottom: 2rem;
  border-bottom: 1px solid #eee;
  box-shadow: 0 2px 4px rgba(0,0,0,0.05);
}

.tab-container {
  max-width: 1200px;
  margin: 0 auto;
  padding: 0 1rem;
}

.tabs {
  max-width: 100%;
  margin: 0;
  display: flex;
  gap: 0.5rem;
  overflow-x: auto;
  padding: 0 0.5rem;
  scrollbar-width: none; /* Firefox */
  -ms-overflow-style: none; /* IE and Edge */
  justify-content: center;
}

.tabs::-webkit-scrollbar {
  display: none; /* Chrome, Safari, Opera */
}

.tab {
  padding: 0.5rem 1.5rem;
  background: #f8f9fa;
  border-radius: 20px;
  color: #2c3e50;
  text-decoration: none;
  white-space: nowrap;
  transition: all 0.2s ease;
  font-size: 0.9rem;
  border: 1px solid #e9ecef;
  cursor: pointer;
  font-weight: 500;
}

.tab:hover {
  background: #e9ecef;
  color: #2c3e50;
  border-color: #2c3e50;
}

.tab.active {
  background: #2c3e50;
  color: white;
  border-color: #2c3e50;
  font-weight: 500;
}

.tab-content {
  display: none;
  padding: 2rem 0;
}

.tab-content.active {
  display: block;
}

.section-header {
  font-size: 2rem;
  font-weight: bold;
  color: #111827;
  margin: 2rem 0 1.5rem 0;
}

.subsection-header {
  font-size: 1.5rem;
  font-weight: 600;
  color: #374151;
  margin: 2rem 0 1rem 0;
}
.people-grid {
  display: flex;
  flex-wrap: wrap;
  gap: 2rem;
  margin-bottom: 2rem;
  justify-content: center; /* Center align the cards */
}

.subsection-header {
  font-size: 1.5rem;
  font-weight: 600;
  color: #374151;
  margin: 2rem 0 1rem 0;
  text-align: center; /* Center align subsection headers */
}

.person-card {
  background: white;
  border-radius: 0.75rem;
  box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
  padding: 1rem 1rem;
  text-align: center;
  transition: all 0.2s ease;
  /* min-height: 240px;
  max-height: 440px;
  min-width: 280px;
  max-width: 360px; */
  height: 440px;
  width: 320px;
  display: flex;
  flex-direction: column;
  align-items: center;
  justify-content: flex-start;
}

.person-avatar {
  width: 200px;
  height: 240px;
  border-radius: 10%;
  margin: 0 auto 1rem auto;
  object-fit: cover;
  border: 1px solid #e5e7eb;
  display: block;
  transition: transform 0.2s ease;
}

.person-avatar:hover {
  transform: scale(1.1);
}

.person-name {
  font-size: 1.2rem;
  font-weight: 600;
  color: #111827;
  margin-bottom: 0.5rem;
  line-height: 1.3;
}

.person-title {
  color: #6b7280;
  font-size: 0.95rem;
  margin-bottom: 0.5rem;
  font-weight: 500;
}

.person-designation {
  color: #6b7280;
  font-size: 0.95rem;
  margin-bottom: 0.5rem;
  font-weight: 500;
}

.person-role {
  color: #3b82f6;
  font-size: 0.85rem;
  font-weight: 600;
  background: #eff6ff;
  padding: 0.3rem 0.8rem;
  border-radius: 20px;
  margin-bottom: 0.5rem;
  display: inline-block;
}

.person-year {
  color: #9ca3af;
  font-size: 0.8rem;
  margin-bottom: 0.5rem;
  font-style: italic;
}

.person-affiliation {
  color: #9ca3af;
  font-size: 0.8rem;
  line-height: 1.4;
  margin-top: auto;
}

.alumni-table {
  width: 100%;
  border-collapse: collapse;
  margin-top: 1rem;
}

.alumni-table th,
.alumni-table td {
  padding: 0.75rem;
  text-align: left;
  border-bottom: 1px solid #e5e7eb;
}

.alumni-table th {
  background: #f9fafb;
  font-weight: 600;
}

.go-to-top {
  position: fixed;
  bottom: 2rem;
  right: 2rem;
  background: #2c3e50;
  color: white;
  width: 50px;
  height: 50px;
  border-radius: 50%;
  display: flex;
  align-items: center;
  justify-content: center;
  cursor: pointer;
  opacity: 0;
  visibility: hidden;
  transition: all 0.3s ease;
  box-shadow: 0 2px 8px rgba(0,0,0,0.2);
  z-index: 1000;
  border: none;
}

.go-to-top.visible {
  opacity: 1;
  visibility: visible;
}

.go-to-top:hover {
  background: #34495e;
  transform: translateY(-3px);
  box-shadow: 0 4px 12px rgba(0,0,0,0.3);
}

@media (max-width: 768px) {
  .sticky-tabs {
    padding: 0.5rem 0;
    margin-bottom: 1rem;
  }
  
  .tabs {
    justify-content: flex-start;
    padding: 0 1rem;
  }
  
  .tab {
    padding: 0.6rem 1.2rem;
    font-size: 0.9rem;
    min-width: 80px;
  }
  
  .people-grid {
    display: flex;
    flex-wrap: wrap;
    gap: 2rem;
    margin-bottom: 2rem;
    justify-content: center; /* Center align the cards */
  }
  
  .person-card {
    height: 400px;
    padding: 1.5rem;
  }
  
  .person-avatar {
    width: 200px;
    height: 240px;
  }
}
</style>

<div class="page-header" style="background: white; padding: 1rem 0; text-align: center;">
  <div style="max-width: 1200px; margin: 0 auto; padding: 0 1rem;">
    <h6 style="font-size: 2rem; font-weight: bold; color: #111827; margin-bottom: 1rem;">Our Team</h6>
    <p style="font-size: 1rem; color: #6b7280; max-width: 600px; margin: 0 auto;">
      Meet the talented individuals who drive innovation and research at NLIP Lab
    </p>
  </div>
</div>

<div class="sticky-tabs">
  <div class="tab-container">
    <div class="tabs">
      <div class="tab active" data-tab="faculty">Faculty</div>
      <div class="tab" data-tab="phd">PhD</div>
      <div class="tab" data-tab="mtech">MTech</div>
      <!-- <div class="tab" data-tab="interns">Interns</div> -->
    </div>
  </div>
</div>

<div style="max-width: 1200px; margin: 0 auto; padding: 0 1rem;">

<!-- Faculty Tab -->
<div id="faculty-content" class="tab-content active">
  <div class="people-grid">
    {% assign faculty = site.people | where: 'position', 'faculty' %}
    {% for person in faculty %}
      <div class="person-card">
        {% if person.avatar %}
          <img class="person-avatar" src="{{site.baseurl}}/images/people/{{person.avatar}}" alt="{{person.name}}">
        {% else %}
          <img class="person-avatar" src="http://evansheline.com/wp-content/uploads/2011/02/facebook-Storm-Trooper.jpg" alt="{{person.name}}">
        {% endif %}
        <div class="person-name">
          <a href="{{ site.baseurl }}{{ person.url }}" style="text-decoration: none; color: inherit;">{{person.name}}</a>
        </div>
        <div class="person-designation">{{person.designation}}</div>
        {% if person.specialization %}
          <div class="person-role">{{person.specialization}}</div>
        {% endif %}
        <div class="person-affiliation">{{person.affiliation}}</div>
      </div>
    {% endfor %}
  </div>
</div>

<!-- PhD Tab -->
<div id="phd-content" class="tab-content">
  <div class="people-grid">
    {% assign phd_current = site.people | where: 'position', 'phd' | where: 'passout', '0' | sort: 'joining_year' %}
    {% for person in phd_current %}
      <div class="person-card">
        {% if person.avatar %}
          <img class="person-avatar" src="{{site.baseurl}}/images/people/{{person.avatar}}" alt="{{person.name}}">
        {% endif %}
        <div class="person-name">
          <a href="{{ site.baseurl }}{{ person.url }}" style="text-decoration: none; color: inherit;">{{person.name}}</a>
        </div>
        <div class="person-title">PhD Student</div>
        {% if person.role %}
          <div class="person-role">PhD {{person.role}}</div>
        {% endif %}
        <!-- {% if person.joining_year %}
          <div class="person-year">Joined: {{person.joining_year}}</div>
        {% endif %} -->
        <div class="person-affiliation">{{person.affiliation}}</div>
      </div>
    {% endfor %}
  </div>

  <div class="subsection-header">Alumni</div>
  <div class="people-grid">
    {% assign phd_alumni = site.people | where: 'position', 'phd' | where: 'passout', '1' | sort: 'joining_year' %}
    {% for person in phd_alumni %}
      <div class="person-card">
        {% if person.avatar %}
          <img class="person-avatar" src="{{site.baseurl}}/images/people/{{person.avatar}}" alt="{{person.name}}">
        {% endif %}
        <div class="person-name">
          <a href="{{ site.baseurl }}{{ person.url }}" style="text-decoration: none; color: inherit;">{{person.name}}</a>
        </div>
        <div class="person-title">PhD Student</div>
        {% if person.role %}
          <div class="person-role">PhD {{person.role}}</div>
        {% endif %}
        <!-- {% if person.joining_year %}
          <div class="person-year">Joined: {{person.joining_year}}</div>
        {% endif %} -->
        <div class="person-affiliation">{{person.affiliation}}</div>
      </div>
    {% endfor %}
  </div>
</div>

<!-- MTech Tab -->
<div id="mtech-content" class="tab-content">
  <div class="people-grid">
    {% assign mtech_current = site.people | where: "position", "masters" | where: "passout", "0" | sort: 'joining_year' %}
    {% for person in mtech_current %}
      <div class="person-card">
        {% if person.avatar %}
          <img class="person-avatar" src="{{site.baseurl}}/images/people/{{person.avatar}}" alt="{{person.name}}">
        {% else %}
          <img class="person-avatar" src="http://evansheline.com/wp-content/uploads/2011/02/facebook-Storm-Trooper.jpg" alt="{{person.name}}">
        {% endif %}
        <div class="person-name">
          <a href="{{ site.baseurl }}{{ person.url }}" style="text-decoration: none; color: inherit;">{{person.name}}</a>
        </div>
        <div class="person-title">MTech Student</div>
        {% if person.role %}
          <div class="person-role">M.Tech {{person.role}}</div>
        {% endif %}
        <div class="person-affiliation">{{person.affiliation}}</div>
      </div>
    {% endfor %}
  </div>

  <div class="subsection-header">Alumni</div>
  <div class="people-grid">
    {% assign mtech_alumni = site.people | where: "position", "masters" | where: "passout", "1" | sort: 'joining_year' %}
    {% for person in mtech_alumni %}
      <div class="person-card">
        {% if person.avatar %}
          <img class="person-avatar" src="{{site.baseurl}}/images/people/{{person.avatar}}" alt="{{person.name}}">
        {% else %}
          <img class="person-avatar" src="http://evansheline.com/wp-content/uploads/2011/02/facebook-Storm-Trooper.jpg" alt="{{person.name}}">
        {% endif %}
        <div class="person-name">
          <a href="{{ site.baseurl }}{{ person.url }}" style="text-decoration: none; color: inherit;">{{person.name}}</a>
        </div>
        <div class="person-title">MTech Student</div>
        {% if person.role %}
          <div class="person-role">M.Tech {{person.role}}</div>
        {% endif %}
        <div class="person-affiliation">{{person.affiliation}}</div>
      </div>
    {% endfor %}
  </div>

  <table class="alumni-table">
    <thead>
      <tr>
        <th>Name</th>
        <th>Batch</th>
        <th>Current Affiliation</th>
      </tr>
    </thead>
    <tbody>
      <tr><td><a href="https://www.linkedin.com/in/sharan21/">Sharan Narasimhan</a></td><td>Masters student (2020-2022)</td><td>Data Engineer at Indeed</td></tr>
      <tr><td><a href="https://www.linkedin.com/in/venkateshelangovan/">Venkatesh E</a></td><td>Masters student (2020-2022)</td><td>Machine Learning Engineer at Qualcomm</td></tr>
      <tr><td><a href="https://www.linkedin.com/in/arkadipta-de/">Arkadipta De</a></td><td>Masters student (2020-2022)</td><td>Applied AI Researcher at Fujitsu Research India</td></tr>
      <tr><td><a href="https://www.linkedin.com/in/vandita-dutt-840646141/">Vandita Dutt</a></td><td>Masters student (2020-2022)</td><td>-</td></tr>
      <tr><td><a href="https://www.linkedin.com/in/sagarjinde/">Sagar Jinde</a></td><td>Masters student (2019-2021)</td><td>Machine Learning Engineer at Qualcomm</td></tr>
      <tr><td><a href="https://www.linkedin.com/in/vikramanandsingh/">Vikram Anand Singh</a></td><td>Masters student (2018-2020)</td><td>Software Developer at BNY Mellon Technology</td></tr>
      <tr><td><a href="https://www.linkedin.com/in/shounak-kundu-53977817/">Shounak Kundu</a></td><td>Masters student, 3-Year MTech, joint supervision with Dr. Srijith PK (2018-2021)</td><td>Machine Learning Engineer at InMobi</td></tr>
      <tr><td><a href="https://www.linkedin.com/in/rishik-ramena-0a0b52b0/">Rishik Ramena</a></td><td>Masters student, 3-Year MTech, joint supervision with Dr. Srijith PK (2018)</td><td>Software Engineer at Microsoft</td></tr>
      <tr><td><a href="https://www.linkedin.com/in/priyambada-ambastha-133962119/">Priyambada Ambastha</a></td><td>Masters student, 3-Year MTech, joint supervision with Dr. Srijith PK (2018-2021)</td><td><b>Gold Medalist</b> at IITH, Applied Scientist at Amazon</td></tr>
      <tr><td><a href="https://www.linkedin.com/in/rashmi-hti-3bb52039/">Rashmi HTI</a></td><td>Masters student (2016-2018)</td><td>Associate at Goldman Sachs</td></tr>
      <tr><td><a href="https://www.linkedin.com/in/priyanka-choudhary-9b0b46111/">Priyanka Choudhary</a></td><td>Masters student (2016-2018)</td><td>Lecturer at rpsc technical education department</td></tr>
      <tr><td><a href="https://www.linkedin.com/in/shamikkundu/">Shamik Kundu</a></td><td>Masters student (2016-2018)</td><td>Data Scientist at Rakuten</td></tr>
      <tr><td><a href="https://www.linkedin.com/in/manjela-toppo-021342154/">Manjela Toppo</a></td><td>Masters student(2016-2018)</td><td>-</td></tr>
      <tr><td><a href="https://www.linkedin.com/in/shashank-singh-a527bb112/">Shashank Singh</a></td><td>Masters Student (2015-2017)</td><td>Software Developer at PayPal</td></tr>
      <tr><td><a href="https://www.linkedin.com/in/pradyumna-deshpande-72a51455/">Pradyumna Deshpande</a></td><td>Masters Student (2015-2017)</td><td>Platform Engineer at PayPay Corporation Tokyo, Japan</td></tr>
      <tr><td><a href="https://www.linkedin.com/in/swapdewalkar/">Swapnil Ashok Dewalakar</a></td><td>Masters student (2017-2019)</td><td>SDE at Fanatics,Inc.</td></tr>
    </tbody>
  </table>
</div>

<!-- Interns Tab -->
<div id="interns-content" class="tab-content">
  <!-- <div class="subsection-header">Current</div> -->
  <div class="people-grid">
    {% assign interns_current = site.people | where: 'position', 'visiting' %}
    {% for person in interns_current %}
      <div class="person-card">
        {% if person.avatar %}
          <img class="person-avatar" src="{{site.baseurl}}/images/people/{{person.avatar}}" alt="{{person.name}}">
        {% else %}
          <img class="person-avatar" src="http://evansheline.com/wp-content/uploads/2011/02/facebook-Storm-Trooper.jpg" alt="{{person.name}}">
        {% endif %}
        <div class="person-name">
          <a href="{{ site.baseurl }}{{ person.url }}" style="text-decoration: none; color: inherit;">{{person.name}}</a>
        </div>
        <div class="person-title">Research Intern</div>
        {% if person.role %}
          <div class="person-role">{{person.role}}</div>
        {% else %}
          <div class="person-role">Summer Intern</div>
        {% endif %}
        {% if person.joining_year %}
          <div class="person-year">Joined: {{person.joining_year}}</div>
        {% endif %}
        <div class="person-affiliation">{{person.affiliation}}</div>
      </div>
    {% endfor %}
  </div>
</div>

</div>

<button class="go-to-top" onclick="scrollToTop()">↑</button>

<script>
// Tab switching functionality
document.addEventListener('DOMContentLoaded', function() {
  const tabs = document.querySelectorAll('.tab');
  const tabContents = document.querySelectorAll('.tab-content');
  
  tabs.forEach(tab => {
    tab.addEventListener('click', function() {
      const targetTab = this.getAttribute('data-tab');

      // Remove active class from all tabs and contents
      tabs.forEach(t => t.classList.remove('active'));
      tabContents.forEach(tc => tc.classList.remove('active'));

      // Add active class to clicked tab and corresponding content
      this.classList.add('active');
      document.getElementById(targetTab + '-content').classList.add('active');
    });
  });
  
  // Go to top button functionality
  const goToTopBtn = document.querySelector('.go-to-top');
  
  window.addEventListener('scroll', function() {
    if (window.scrollY > 300) {
      goToTopBtn.classList.add('visible');
    } else {
      goToTopBtn.classList.remove('visible');
    }
  });
});

function scrollToTop() {
  window.scrollTo({
    top: 0,
    behavior: 'smooth'
  });
}
</script>
