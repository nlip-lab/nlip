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
  /* center align header */
  text-align: center;
  position: relative;
  padding-bottom: 0.5rem;
}

/* add colored underline beneath subsection headers */
.subsection-header::after {
  content: "";
  width: 60px;
  height: 3px;
  background: #3b82f6;
  display: block;
  margin: 0.5rem auto 0;
  border-radius: 2px;
}

.people-grid {
  display: flex;
  flex-wrap: wrap;
  gap: 2rem;
  margin-bottom: 2rem;
  justify-content: center; /* Center align the cards */
}

.person-card {
  border-radius: 1rem;
  box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
  padding: 1rem 1rem;
  text-align: center;
  /* smooth animations */
  transition: transform 0.3s ease, box-shadow 0.3s ease, border-color 0.3s ease, background-color 0.3s ease;
  /* subtle border for hover accent */
  border: 1px solid rgba(59,130,246,0);
  width: 320px;
  /* auto height to fit content */
  height: auto;
  display: flex;
  flex-direction: column;
  align-items: center;
  justify-content: flex-start;
  position: relative;
  overflow: hidden;
}

/* shimmer highlight on card */
.person-card::before {
  content: "";
  position: absolute;
  top: -50%;
  left: -50%;
  width: 200%;
  height: 200%;
  background: rgba(255, 255, 255, 0.2);
  transform: rotate(45deg) translate(-100%, -100%);
  transition: transform 0.6s ease;
  pointer-events: none;
}

.person-card:hover::before {
  transform: rotate(45deg) translate(0, 0);
}

/* elevate and scale card on hover */
.person-card:hover {
  transform: translateY(-10px) scale(1.03);
  box-shadow: 0 12px 24px rgba(0, 0, 0, 0.15);
  background-color: #f8f9fa;
  border-color: rgba(59,130,246,0.5);
}

.person-avatar {
  width: 200px;
  height: 240px;
  border-radius: 10%;
  margin: 0 auto 1rem auto;
  object-fit: cover;
  border: 1px solid #e5e7eb;
  /* subtle avatar shadow */
  box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
  display: block;
  transition: transform 0.2s ease, filter 0.5s ease, box-shadow 0.3s ease;
}

.person-card:hover .person-avatar {
  transform: scale(1.1);
  filter: brightness(1.1);
  box-shadow: 0 8px 16px rgba(0, 0, 0, 0.15);
}

.person-name {
  font-size: 1.2rem;
  font-weight: 600;
  color: #111827;
  margin-bottom: 0.5rem;
  line-height: 1.3;
  transition: color 0.3s ease;
}

.person-card:hover .person-name {
  color: #3b82f6;
}

.person-title {
  color: #6b7280;
  font-size: 0.95rem;
  margin-bottom: 0.5rem;
  font-weight: 500;
  transition: color 0.3s ease;
}

.person-card:hover .person-title {
  color: #3b82f6;
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
  transition: background-color 0.3s ease, color 0.3s ease;
}

.person-card:hover .person-role {
  background-color: #dbeafe;
  color: #1e40af;
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

.alumni-tile {
  display: flex;
  align-items: center;
  border-radius: 1rem;
  box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
  padding: 1.5rem;
  margin-bottom: 1.5rem;
  transition: transform 0.3s ease, box-shadow 0.3s ease, border-color 0.3s ease, background-color 0.3s ease;
  border: 1px solid rgba(59,130,246,0);
  background: white;
  position: relative;
  overflow: hidden;
}

.alumni-tile:hover {
  transform: translateY(-5px);
  box-shadow: 0 12px 24px rgba(0, 0, 0, 0.15);
  background-color: #f8f9fa;
  border-color: rgba(59,130,246,0.5);
}

.alumni-tile::before {
  content: "";
  position: absolute;
  top: -50%;
  left: -50%;
  width: 200%;
  height: 200%;
  background: rgba(255, 255, 255, 0.1);
  transform: rotate(45deg) translate(-100%, -100%);
  transition: transform 0.6s ease;
  pointer-events: none;
}

.alumni-tile:hover::before {
  transform: rotate(45deg) translate(0, 0);
}

.alumni-avatar {
  width: 80px;
  height: 80px;
  border-radius: 50%;
  margin-right: 1.5rem;
  border: 3px solid #e5e7eb;
  box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
  transition: transform 0.2s ease, filter 0.3s ease, box-shadow 0.3s ease;
  flex-shrink: 0;
  background: linear-gradient(135deg, #3b82f6, #1d4ed8);
  display: flex;
  align-items: center;
  justify-content: center;
  color: white;
  font-weight: bold;
  font-size: 1.2rem;
}

.alumni-avatar img {
  width: 100%;
  height: 100%;
  object-fit: cover;
  border-radius: 50%;
}

.alumni-content {
  flex: 1;
  display: flex;
  flex-direction: column;
  gap: 0.5rem;
}

.alumni-name {
  font-size: 1.2rem;
  font-weight: 600;
  color: #111827;
  text-decoration: none;
  transition: color 0.3s ease;
}

.alumni-name:hover {
  color: #3b82f6;
  text-decoration: none;
}

.alumni-batch {
  color: #6b7280;
  font-size: 0.95rem;
  font-weight: 500;
  background: #f3f4f6;
  padding: 0.25rem 0.75rem;
  border-radius: 15px;
  display: inline-block;
  width: fit-content;
  transition: background-color 0.3s ease, color 0.3s ease;
}

.alumni-tile:hover .alumni-batch {
  background-color: #dbeafe;
  color: #1e40af;
}

.alumni-affiliation {
  color: #374151;
  font-size: 0.9rem;
  line-height: 1.4;
  font-weight: 500;
}

.alumni-grid {
  display: grid;
  grid-template-columns: repeat(auto-fit, minmax(500px, 1fr));
  gap: 1.5rem;
  margin-top: 1rem;
}

.go-to-top {
  position: fixed;
  bottom: 2rem;
  right: 2rem;
  background: #3b82f6;
  color: white;
  width: 56px;
  height: 56px;
  border-radius: 50%;
  display: flex;
  align-items: center;
  justify-content: center;
  cursor: pointer;
  opacity: 0;
  visibility: hidden;
  transition: all 0.3s ease;
  box-shadow: 0 4px 20px rgba(59, 130, 246, 0.4);
  z-index: 1000;
  border: none;
  font-size: 1.2rem;
  font-weight: bold;
}

.go-to-top.visible {
  opacity: 1;
  visibility: visible;
}

.go-to-top:hover {
  background: #2563eb;
  transform: translateY(-4px) scale(1.1);
  box-shadow: 0 8px 30px rgba(59, 130, 246, 0.6);
}

.go-to-top:active {
  transform: translateY(-2px) scale(1.05);
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
    min-width: min-content;
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
  
  .alumni-tile {
    flex-direction: column;
    text-align: center;
    padding: 1.5rem 1rem;
  }
  
  .alumni-avatar {
    margin-right: 0;
    margin-bottom: 1rem;
  }
  
  .alumni-content {
    align-items: center;
  }
  
  .alumni-batch {
    align-self: center;
  }
  
  .alumni-grid {
    grid-template-columns: 1fr;
    gap: 1rem;
  }
}
</style>

<div class="page-header" style="background: white; padding: 1rem 0; text-align: center;">
  <div style="max-width: 1200px; margin: 0 auto; padding: 0 1rem;">
    <h6 style="font-size: 2rem; font-weight: bold; color: #111827; margin-bottom: 1rem;">Our Team</h6>
    <p style="font-size: 1rem; color: #6b7280; max-width: 1000px; margin: 0 auto;">
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
          <img class="person-avatar" src="http://evanssheline.com/wp-content/uploads/2011/02/facebook-Storm-Trooper.jpg" alt="{{person.name}}">
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

  <div class="alumni-grid">
    <div class="alumni-tile">
      <div class="alumni-avatar">SN</div>
      <div class="alumni-content">
        <a href="https://www.linkedin.com/in/sharan21/" class="alumni-name">Sharan Narasimhan</a>
        <div class="alumni-batch">Masters student (2020-2022)</div>
        <div class="alumni-affiliation">Data Engineer at Indeed</div>
      </div>
    </div>

    <div class="alumni-tile">
      <div class="alumni-avatar">VE</div>
      <div class="alumni-content">
        <a href="https://www.linkedin.com/in/venkateshelangovan/" class="alumni-name">Venkatesh E</a>
        <div class="alumni-batch">Masters student (2020-2022)</div>
        <div class="alumni-affiliation">Machine Learning Engineer at Qualcomm</div>
      </div>
    </div>
    
    <div class="alumni-tile">
      <div class="alumni-avatar">AD</div>
      <div class="alumni-content">
        <a href="https://www.linkedin.com/in/arkadipta-de/" class="alumni-name">Arkadipta De</a>
        <div class="alumni-batch">Masters student (2020-2022)</div>
        <div class="alumni-affiliation">Applied AI Researcher at Fujitsu Research India</div>
      </div>
    </div>
    
    <div class="alumni-tile">
      <div class="alumni-avatar">VD</div>
      <div class="alumni-content">
        <a href="https://www.linkedin.com/in/vandita-dutt-840646141/" class="alumni-name">Vandita Dutt</a>
        <div class="alumni-batch">Masters student (2020-2022)</div>
        <div class="alumni-affiliation">-</div>
      </div>
    </div>
    
    <div class="alumni-tile">
      <div class="alumni-avatar">SJ</div>
      <div class="alumni-content">
        <a href="https://www.linkedin.com/in/sagarjinde/" class="alumni-name">Sagar Jinde</a>
        <div class="alumni-batch">Masters student (2019-2021)</div>
        <div class="alumni-affiliation">Machine Learning Engineer at Qualcomm</div>
      </div>
    </div>
    
    <div class="alumni-tile">
      <div class="alumni-avatar">VS</div>
      <div class="alumni-content">
        <a href="https://www.linkedin.com/in/vikramanandsingh/" class="alumni-name">Vikram Anand Singh</a>
        <div class="alumni-batch">Masters student (2018-2020)</div>
        <div class="alumni-affiliation">Software Developer at BNY Mellon Technology</div>
      </div>
    </div>
    
    <div class="alumni-tile">
      <div class="alumni-avatar">SK</div>
      <div class="alumni-content">
        <a href="https://www.linkedin.com/in/shounak-kundu-53977817/" class="alumni-name">Shounak Kundu</a>
        <div class="alumni-batch">Masters student, 3-Year MTech, joint supervision with Dr. Srijith PK (2018-2021)</div>
        <div class="alumni-affiliation">Machine Learning Engineer at InMobi</div>
      </div>
    </div>
    
    <div class="alumni-tile">
      <div class="alumni-avatar">RR</div>
      <div class="alumni-content">
        <a href="https://www.linkedin.com/in/rishik-ramena-0a0b52b0/" class="alumni-name">Rishik Ramena</a>
        <div class="alumni-batch">Masters student, 3-Year MTech, joint supervision with Dr. Srijith PK (2018)</div>
        <div class="alumni-affiliation">Software Engineer at Microsoft</div>
      </div>
    </div>
    
    <div class="alumni-tile">
      <div class="alumni-avatar">PA</div>
      <div class="alumni-content">
        <a href="https://www.linkedin.com/in/priyambada-ambastha-133962119/" class="alumni-name">Priyambada Ambastha</a>
        <div class="alumni-batch">Masters student, 3-Year MTech, joint supervision with Dr. Srijith PK (2018-2021)</div>
        <div class="alumni-affiliation"><b>Gold Medalist</b> at IITH, Applied Scientist at Amazon</div>
      </div>
    </div>
    
    <div class="alumni-tile">
      <div class="alumni-avatar">RH</div>
      <div class="alumni-content">
        <a href="https://www.linkedin.com/in/rashmi-hti-3bb52039/" class="alumni-name">Rashmi HTI</a>
        <div class="alumni-batch">Masters student (2016-2018)</div>
        <div class="alumni-affiliation">Associate at Goldman Sachs</div>
      </div>
    </div>
    
    <div class="alumni-tile">
      <div class="alumni-avatar">PC</div>
      <div class="alumni-content">
        <a href="https://www.linkedin.com/in/priyanka-choudhary-9b0b46111/" class="alumni-name">Priyanka Choudhary</a>
        <div class="alumni-batch">Masters student (2016-2018)</div>
        <div class="alumni-affiliation">Lecturer at rpsc technical education department</div>
      </div>
    </div>
    
    <div class="alumni-tile">
      <div class="alumni-avatar">SK</div>
      <div class="alumni-content">
        <a href="https://www.linkedin.com/in/shamikkundu/" class="alumni-name">Shamik Kundu</a>
        <div class="alumni-batch">Masters student (2016-2018)</div>
        <div class="alumni-affiliation">Data Scientist at Rakuten</div>
      </div>
    </div>
    
    <div class="alumni-tile">
      <div class="alumni-avatar">MT</div>
      <div class="alumni-content">
        <a href="https://www.linkedin.com/in/manjela-toppo-021342154/" class="alumni-name">Manjela Toppo</a>
        <div class="alumni-batch">Masters student (2016-2018)</div>
        <div class="alumni-affiliation">-</div>
      </div>
    </div>
    
    <div class="alumni-tile">
      <div class="alumni-avatar">SS</div>
      <div class="alumni-content">
        <a href="https://www.linkedin.com/in/shashank-singh-a527bb112/" class="alumni-name">Shashank Singh</a>
        <div class="alumni-batch">Masters Student (2015-2017)</div>
        <div class="alumni-affiliation">Software Developer at PayPal</div>
      </div>
    </div>
    
    <div class="alumni-tile">
      <div class="alumni-avatar">PD</div>
      <div class="alumni-content">
        <a href="https://www.linkedin.com/in/pradyumna-deshpande-72a51455/" class="alumni-name">Pradyumna Deshpande</a>
        <div class="alumni-batch">Masters Student (2015-2017)</div>
        <div class="alumni-affiliation">Platform Engineer at PayPay Corporation Tokyo, Japan</div>
      </div>
    </div>
    
    <div class="alumni-tile">
      <div class="alumni-avatar">SD</div>
      <div class="alumni-content">
        <a href="https://www.linkedin.com/in/swapdewalkar/" class="alumni-name">Swapnil Ashok Dewalakar</a>
        <div class="alumni-batch">Masters student (2017-2019)</div>
        <div class="alumni-affiliation">SDE at Fanatics,Inc.</div>
      </div>
    </div>
  </div>
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
