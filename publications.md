---
title: Publications
permalink: /publication/
---

<style>

  /* ...existing code... */

/* Responsive fix for publication cards on mobile */
@media (max-width: 768px) {
  .publication-tile-content {
    flex-direction: column;
    align-items: stretch;
  }
  .publication-image-container {
    display: none !important;
  }
  .publication-content {
    padding: 1rem 0.5rem;
  }
  .year-nav {
    padding: 0.5rem 0;
    margin-bottom: 1rem;
    border-radius: 0;
    box-shadow: none;
    border-bottom: 1px solid #eee;
    position: sticky;
    top: 0;
    background: white;
    z-index: 100;
  }
  .year-nav-container {
    gap: 0.2rem;
    padding: 0 0.2rem;
    overflow-x: auto;
    -webkit-overflow-scrolling: touch;
    scrollbar-width: none;
    -ms-overflow-style: none;
    max-width: 100vw;
    flex-wrap: nowrap;
    white-space: nowrap;
    touch-action: pan-x;
    display: block !important; /* Override flex for mobile */
    justify-content: unset !important;
  }
  .year-nav-container::-webkit-scrollbar {
    display: none;
  }
  .year-nav-item {
    display: inline-block !important; /* Make items inline for scroll */
    padding: 0.6rem 1.2rem;
    font-size: 1rem;
    border-radius: 16px;
    min-width: 60px;
    text-align: center;
    margin: 0 0.1rem;
    white-space: nowrap;
    flex: none;
  }
}

.publication-container {
  width: 100%;
  padding: 1rem 0.5rem;
  max-width: 100%;
  margin: 0;
}

.publication-tile {
  background: white;
  border-radius: 16px;
  box-shadow: 0 2px 4px rgba(72, 132, 223, 0.51);
  overflow: hidden;
  transition: all 0.3s ease;
  width: 100%;
  margin-bottom: 0rem;
  cursor: pointer;
}

.publication-tile:hover {
  transform: translateY(-5px);
  box-shadow: 0 4px 8px rgba(0,0,0,0.15);
}

.publication-tile.expanded {
  transform: scale(1.02);
  box-shadow: 0 8px 16px rgba(0,0,0,0.2);
}

.publication-tile-content {
  display: flex;
  flex-direction: row;
  align-items: stretch;
  max-width: 100%;
  margin: 0;
}

.publication-image-container {
  width: 400px;
  height: 400px;
  flex: 0 0 400px;
  overflow: hidden;
  display: flex;
  align-items: center;
  justify-content: center;
  align-self: center;
  /* background: #f8f9fa; */
  border-radius: 8px;
}

.publication-image {
  width: 100%;
  height: 100%;
  margin: 0;
  min-width: 0;
  min-height: 0;
  max-width: 100%;
  max-height: 100%;
  object-fit: contain; /* changed from cover to contain */
  display: block;
}

.publication-content {
  flex: 1;
  padding: 1.5rem 1rem;
  display: flex;
  flex-direction: column;
}

.publication-title {
  font-size: 1.2rem;
  font-weight: 600;
  margin-bottom: 0.5rem;
  color: #2c3e50;
}

.publication-title a {
  color: #2c3e50;
  text-decoration: none;
  transition: all 0.2s ease;
  position: relative;
}

.publication-title a:hover {
  color: #3498db;
  text-decoration: underline;
}

.publication-title a::after {
  content: '';
  position: absolute;
  width: 100%;
  height: 2px;
  bottom: -2px;
  left: 0;
  background-color: #3498db;
  transform: scaleX(0);
  transform-origin: bottom right;
  transition: transform 0.3s ease;
}

.publication-title a:hover::after {
  transform: scaleX(1);
  transform-origin: bottom left;
}

.publication-authors {
  font-size: 0.9rem;
  color: #666;
  margin-bottom: 0.5rem;
}

.publication-journal {
  font-size: 0.85rem;
  color: #0d6efd;
  margin-bottom: 1rem;
}

.publication-summary {
  font-size: 0.9rem;
  line-height: 1.5;
  color: #444;
  margin-bottom: 1rem;
  display: none;
  cursor: pointer;
  position: relative;
}

.publication-summary.preview {
  display: block;
  max-height: 3em;
  overflow: hidden;
  text-overflow: ellipsis;
  display: -webkit-box;
  -webkit-line-clamp: 2;
  -webkit-box-orient: vertical;
}

.publication-tile.expanded .publication-summary {
  display: block;
  max-height: none;
  -webkit-line-clamp: none;
}

.publication-abstract {
  font-size: 0.9rem;
  line-height: 1.6;
  color: #444;
  margin-bottom: 1rem;
  display: none;
  cursor: pointer;
  position: relative;
}

.publication-abstract.preview {
  display: block;
  max-height: 4.8em;
  overflow: hidden;
  text-overflow: ellipsis;
  display: -webkit-box;
  -webkit-line-clamp: 3;
  -webkit-box-orient: vertical;
}

.publication-tile.expanded .publication-abstract {
  display: block;
  max-height: none;
  -webkit-line-clamp: none;
}

.publication-link {
  display: inline-flex;
  align-items: center;
  gap: 0.5rem;
  padding: 0.5rem 1rem;
  background-color: #2c3e50;
  color: white;
  text-decoration: none;
  border-radius: 4px;
  font-size: 0.85rem;
  transition: all 0.2s ease;
}

/* Center align Read More button content vertically */
.btn, .btn.btn-sm.btn-outline-primary {
  display: inline-flex;
  align-items: center;
  justify-content: center;
  height: 100%;
}

.journal-url {
  /* color:hsl(204, 86%, 53%) !important; */
}

.publication-link:hover {
  background-color: #34495e;
  transform: translateY(-2px);
  box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
}

.publication-link .icon {
  width: 16px;
  height: 16px;
  stroke: currentColor;
  stroke-width: 2;
  fill: none;
  stroke-linecap: round;
  stroke-linejoin: round;
}

.publication-links {
  display: flex;
  flex-wrap: wrap;
  gap: 0.8rem;
  margin-top: 1rem;
}
/*
.publication-links {
  display: flex;
  gap: 0.8rem;
  flex-wrap: wrap;
  margin-top: auto;
} */

.publication-link {
  display: inline-flex;
  align-items: center;
  gap: 0.5rem;
  padding: 0.5rem 1rem;
  background-color: #2c3e50;
  color: white;
  text-decoration: none;
  border-radius: 4px;
  font-size: 0.85rem;
  transition: all 0.2s ease;
}

.publication-link:hover {
  background-color: #34495e;
  transform: translateY(-2px);
  box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
}

.publication-link .icon {
  width: 16px;
  height: 16px;
  stroke: currentColor;
  stroke-width: 2;
  fill: none;
  stroke-linecap: round;
  stroke-linejoin: round;
}

.publication-links {
  display: flex;
  flex-wrap: wrap;
  gap: 0.8rem;
  margin-top: 1rem;
}

.year-section {
  margin: 1.5rem 0 1.5rem;
}

.year-header {
  background: #2c3e50;
  color: white;
  padding: 1rem 1rem;
  border-radius: 8px;
  margin-bottom: 1.5rem;
  font-size: 1.5rem;
  font-weight: 600;
  width: 100%;
  text-align: center;
}

.year-content {
  display: flex;
  flex-direction: column;
  gap: 2rem;
  padding: 1rem 0.5rem;
  max-width: 100%;
  margin: 0;
}

.expand-icon {
  position: absolute;
  right: 1rem;
  top: 1rem;
  width: 24px;
  height: 24px;
  transition: transform 0.3s ease;
}

.publication-tile.expanded .expand-icon {
  transform: rotate(180deg);
}

/* Custom scrollbar styling */
.publication-container::-webkit-scrollbar {
  height: 8px;
}

.publication-container::-webkit-scrollbar-track {
  background: #f1f1f1;
  border-radius: 4px;
}

.publication-container::-webkit-scrollbar-thumb {
  background: #888;
  border-radius: 4px;
}

.publication-container::-webkit-scrollbar-thumb:hover {
  background: #555;
}

.year-nav {
  position: sticky;
  top: 0;
  background: white;
  padding: 1rem 0;
  margin-bottom: 2rem;
  border-bottom: 1px solid #eee;
  z-index: 100;
  box-shadow: 0 2px 4px rgba(0, 0, 0, 0.05);
}

.year-nav-container {
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

.year-nav-container::-webkit-scrollbar {
  display: none; /* Chrome, Safari, Opera */
}

.year-nav-item {
  padding: 0.5rem 1.5rem;
  background: #f8f9fa;
  border-radius: 20px;
  color: #2c3e50;
  text-decoration: none;
  white-space: nowrap;
  transition: all 0.2s ease;
  font-size: 0.9rem;
  border: 1px solid #e9ecef;
}

.year-nav-item:hover {
  background: #e9ecef;
  color: #2c3e50;
  border-color: #2c3e50;
}

.year-nav-item.active {
  background: #2c3e50;
  color: white;
  border-color: #2c3e50;
  font-weight: 500;
}

/* Go to Top Button */
.go-to-top {
  position: fixed;
  bottom: 2rem;
  right: 2rem;
  background: #2c3e50;
  color: white;
  width: 40px;
  height: 40px;
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

.go-to-top svg {
  width: 20px;
  height: 20px;
  fill: currentColor;
}

/* Add these styles before the closing style tag */
.bibtex-modal {
  display: none;
  position: fixed;
  top: 0;
  left: 0;
  width: 100%;
  height: 100%;
  background: rgba(0, 0, 0, 0.5);
  z-index: 1000;
  justify-content: center;
  align-items: center;
}

.bibtex-modal.active {
  display: flex;
}

.bibtex-content {
  background: white;
  padding: 2rem;
  border-radius: 8px;
  max-width: 80%;
  max-height: 80vh;
  overflow-y: auto;
  position: relative;
  box-shadow: 0 4px 12px rgba(0, 0, 0, 0.2);
}

.bibtex-content pre {
  margin: 0;
  white-space: pre;
  font-family: monospace;
  font-size: 0.9rem;
  line-height: 1.5;
  color: #2c3e50;
  background: #f8f9fa;
  padding: 1rem;
  border-radius: 4px;
  border: 1px solid #e9ecef;
}

.bibtex-header {
  display: flex;
  justify-content: space-between;
  align-items: center;
  margin-bottom: 1rem;
  padding-bottom: 0.5rem;
  border-bottom: 1px solid #e9ecef;
}

.bibtex-title {
  font-size: 1.1rem;
  font-weight: 600;
  color: #2c3e50;
}

.bibtex-actions {
  display: flex;
  gap: 0.5rem;
}

.copy-bibtex {
  padding: 0.4rem 0.8rem;
  background: #2c3e50;
  color: white;
  border: none;
  border-radius: 4px;
  cursor: pointer;
  font-size: 0.85rem;
  display: flex;
  align-items: center;
  gap: 0.5rem;
  transition: all 0.2s ease;
}

.copy-bibtex:hover {
  background: #34495e;
  transform: translateY(-1px);
}

.copy-bibtex svg {
  width: 16px;
  height: 16px;
  fill: currentColor;
}

.close-bibtex {
  width: 24px;
  height: 24px;
  cursor: pointer;
  color: #666;
  transition: color 0.2s;
  display: flex;
  align-items: center;
  justify-content: center;
}

.close-bibtex:hover {
  color: #2c3e50;
}
</style>

<script>

document.addEventListener('DOMContentLoaded', function() {
  document.querySelectorAll('.show-bibtex').forEach(function(link) {
    link.addEventListener('click', function(e) {
      e.preventDefault();
      const url = link.getAttribute('href');
      fetch(url)
        .then(response => response.text())
        .then(data => {
          showBibtexModal(data);
        });
    });
  });

  function showBibtexModal(bibtex) {
    let modal = document.getElementById('bibtex-modal');
    if (!modal) {
      modal = document.createElement('div');
      modal.id = 'bibtex-modal';
      modal.style.position = 'fixed';
      modal.style.top = '0';
      modal.style.left = '0';
      modal.style.width = '100vw';
      modal.style.height = '100vh';
      modal.style.background = 'rgba(0,0,0,0.5)';
      modal.style.display = 'flex';
      modal.style.alignItems = 'center';
      modal.style.justifyContent = 'center';
      modal.style.zIndex = '9999';
      modal.innerHTML = `
        <div style="background:#fff;padding:2rem;max-width:90vw;max-height:80vh;overflow:auto;position:relative;border-radius:8px;">
          <button id="close-bibtex-modal" style="position:absolute;top:10px;right:10px;">Close</button>
          <pre style="white-space:pre-wrap;">${bibtex}</pre>

        </div>
      `;
      document.body.appendChild(modal);
      document.getElementById('close-bibtex-modal').onclick = function() {
        modal.remove();
      };
    }

}
});

document.addEventListener('DOMContentLoaded', function() {
const tiles = document.querySelectorAll('.publication-tile');
tiles.forEach(tile => {
const summary = tile.querySelector('.publication-summary');
const abstract = tile.querySelector('.publication-abstract');

    if (summary) {
      summary.classList.add('preview');
      summary.addEventListener('click', function(e) {
        e.stopPropagation();
        tile.classList.toggle('expanded');
      });
    }

    if (abstract) {
      abstract.classList.add('preview');
      abstract.addEventListener('click', function(e) {
        e.stopPropagation();
        tile.classList.toggle('expanded');
      });
    }

});

// Year navigation functionality
const yearNavItems = document.querySelectorAll('.year-nav-item');
const yearSections = document.querySelectorAll('.year-section');

// Update active state based on scroll position
function updateActiveYear() {
const scrollPosition = window.scrollY + 100; // Offset for better trigger point

    yearSections.forEach(section => {
      const year = section.querySelector('.year-header').textContent;
      const sectionTop = section.offsetTop - 100;
      const sectionBottom = sectionTop + section.offsetHeight;

      if (scrollPosition >= sectionTop && scrollPosition < sectionBottom) {
        yearNavItems.forEach(item => {
          item.classList.remove('active');
          if (item.textContent === year) {
            item.classList.add('active');
          }
        });
      }
    });

}

// Smooth scroll to year section
yearNavItems.forEach(item => {
item.addEventListener('click', function(e) {
e.preventDefault();
const targetId = this.getAttribute('href');
const targetSection = document.querySelector(targetId);
if (targetSection) {
targetSection.scrollIntoView({ behavior: 'smooth', block: 'start' });
}
});
});

// Update active state on scroll
window.addEventListener('scroll', updateActiveYear);
// Initial active state
updateActiveYear();

// Go to Top functionality
const goToTopButton = document.createElement('div');
goToTopButton.className = 'go-to-top';
goToTopButton.innerHTML = `    <svg viewBox="0 0 24 24">
      <path d="M7.41 15.41L12 10.83l4.59 4.58L18 14l-6-6-6 6zM5 18v2h14v-2H5z"/>
    </svg>
 `;
document.body.appendChild(goToTopButton);

// Show/hide button based on scroll position
window.addEventListener('scroll', function() {
if (window.scrollY > 300) {
goToTopButton.classList.add('visible');
} else {
goToTopButton.classList.remove('visible');
}
});

// Smooth scroll to top when clicked
goToTopButton.addEventListener('click', function() {
window.scrollTo({
top: 0,
behavior: 'smooth'
});
});

// Create BibTeX modal
const modal = document.createElement('div');
modal.className = 'bibtex-modal';
modal.innerHTML = `    <div class="bibtex-content">
      <div class="bibtex-header">
        <div class="bibtex-title">BibTeX</div>
        <div class="bibtex-actions">
          <button class="copy-bibtex">
            <svg viewBox="0 0 24 24">
              <path d="M16 1H4c-1.1 0-2 .9-2 2v14h2V3h12V1zm3 4H8c-1.1 0-2 .9-2 2v14c0 1.1.9 2 2 2h11c1.1 0 2-.9 2-2V7c0-1.1-.9-2-2-2zm0 16H8V7h11v14z"/>
            </svg>
            Copy
          </button>
          <div class="close-bibtex">
            <svg viewBox="0 0 24 24">
              <path d="M19 6.41L17.59 5 12 10.59 6.41 5 5 6.41 10.59 12 5 17.59 6.41 19 12 13.41 17.59 19 19 17.59 13.41 12z"/>
            </svg>
          </div>
        </div>
      </div>
      <pre></pre>
    </div>
 `;
document.body.appendChild(modal);

// Handle BibTeX links
const links = document.querySelectorAll('.publication-link');
links.forEach(link => {
const text = link.textContent.toLowerCase();

    if (text.includes('bibtex')) {
      link.addEventListener('click', async function(e) {
        e.preventDefault();
        e.stopPropagation();

        const bibtexUrl = this.getAttribute('href');
        try {
          const response = await fetch(bibtexUrl);
          const bibtexContent = await response.text();
          const preElement = modal.querySelector('pre');
          preElement.textContent = bibtexContent;
          modal.classList.add('active');
        } catch (error) {
          console.error('Error loading BibTeX:', error);
        }
      });
    }

});

// Copy BibTeX content
const copyButton = modal.querySelector('.copy-bibtex');
copyButton.addEventListener('click', () => {
const bibtexContent = modal.querySelector('pre').textContent;
navigator.clipboard.writeText(bibtexContent).then(() => {
const originalText = copyButton.innerHTML;
copyButton.innerHTML = `        <svg viewBox="0 0 24 24">
          <path d="M9 16.17L4.83 12l-1.42 1.41L9 19 21 7l-1.41-1.41L9 16.17z"/>
        </svg>
        Copied!
     `;
setTimeout(() => {
copyButton.innerHTML = originalText;
}, 2000);
});
});

// Close modal when clicking close button or outside
modal.querySelector('.close-bibtex').addEventListener('click', () => {
modal.classList.remove('active');
});

modal.addEventListener('click', (e) => {
if (e.target === modal) {
modal.classList.remove('active');
}
});

// Close modal with Escape key
document.addEventListener('keydown', (e) => {
if (e.key === 'Escape' && modal.classList.contains('active')) {
modal.classList.remove('active');
}
});
});
</script>

<div class="year-nav">
  <div class="year-nav-container">
    {% for y in site.publications_years %}
    <a href="#year-{{ y }}" class="year-nav-item">{{ y }}</a>
    {% endfor %}
  </div>
</div>

<!-- <p><i>Jump to the full list of publications <a href="#full-list">here</a></i></p> -->

<h2>Publications by Year</h2>
{% for y in site.publications_years %}
<div class="year-section" id="year-{{ y }}">
    <div class="year-header">{{ y }}</div>
    <div class="year-content">
    {% for publi in site.data.publications %}
    {% if publi.year==y %}
        {%if publi.month==1%}{%assign month="January"%}{%endif%}
        {%if publi.month==2%}{%assign month="February"%}{%endif%}
        {%if publi.month==3%}{%assign month="March"%}{%endif%}
        {%if publi.month==4%}{%assign month="April"%}{%endif%}
        {%if publi.month==5%}{%assign month="May"%}{%endif%}
        {%if publi.month==6%}{%assign month="June"%}{%endif%}
        {%if publi.month==7%}{%assign month="July"%}{%endif%}
        {%if publi.month==8%}{%assign month="August"%}{%endif%}
        {%if publi.month==9%}{%assign month="September"%}{%endif%}
        {%if publi.month==10%}{%assign month="October"%}{%endif%}
        {%if publi.month==11%}{%assign month="November"%}{%endif%}
        {%if publi.month==12%}{%assign month="December"%}{%endif%}

        {% if publi.key %}
        <div class="publication-tile">
            <div class="publication-tile-content">
                {% if publi.img %}
                <div class="publication-image-container">
                    <img src="/nlip/publications/images/{{ publi.img }}" class="publication-image" alt="{{ publi.title }}">
                </div>
                {% endif %}
                <div class="publication-content">

                    <h3 class="publication-title">
                    {{ publi.title }}
                        <!-- <a href="/publications/{{ publi.key }}/">{{ publi.title }}</a> -->
                    </h3>

                    <p class="publication-authors">{{ publi.authors }}</p>
                    <p class="publication-journal">{{ publi.journal }} ({{ month }} {{ publi.year }})</p>
                    {% if publi.abstract %}
                    <p class="publication-abstract">{{ publi.abstract }}</p>
                    {% elsif publi.summary %}
                    <p class="publication-summary">{{ publi.summary }}</p>
                    {% endif %}
                    <div class="publication-links">

                        {% if publi.pdf %}
                        <a href="{{ publi.pdf }}" class="publication-link" target="_blank">
                            <svg class="icon" viewBox="0 0 24 24"><path d="M14 2H6a2 2 0 0 0-2 2v16a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V8z"></path><polyline points="14 2 14 8 20 8"></polyline><line x1="16" y1="13" x2="8" y2="13"></line><line x1="16" y1="17" x2="8" y2="17"></line><polyline points="10 9 9 9 8 9"></polyline></svg>
                            PDF
                        </a>
                        {% endif %}
                        {% if publi.code %}
                        <a href="{{ publi.code }}" class="publication-link" target="_blank">
                            <svg class="icon" viewBox="0 0 24 24"><polyline points="16 18 22 12 16 6"></polyline><polyline points="8 6 2 12 8 18"></polyline></svg>
                            Code
                        </a>
                        {% endif %}
                        {% if publi.url %}
                        <a href="{{ publi.url }}" class="publication-link" target="_blank">
                            <svg class="icon" viewBox="0 0 24 24"><path d="M18 13v6a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2V8a2 2 0 0 1 2-2h6"></path><polyline points="15 3 21 3 21 9"></polyline><line x1="10" y1="14" x2="21" y2="3"></line></svg>
                            URL
                        </a>
                        {% endif %}
                        {% if publi.video %}
                        <a href="{{ publi.video }}" class="publication-link" target="_blank">
                            <svg class="icon" viewBox="0 0 24 24"><polygon points="23 7 16 12 23 17 23 7"></polygon><rect x="1" y="5" width="15" height="14" rx="2" ry="2"></rect></svg>
                            Video
                        </a>
                        {% endif %}
                        <!-- {% if publi.bibtex %}
                        <a href="{{ site.baseurl }}/publications/references/{{ publi.bibtex }}.txt" class="publication-link show-bibtex">
                            <svg class="icon" viewBox="0 0 24 24"><path d="M14 2H6a2 2 0 0 0-2 2v16a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V8z"></path><polyline points="14 2 14 8 20 8"></polyline><line x1="16" y1="13" x2="8" y2="13"></line><line x1="16" y1="17" x2="8" y2="17"></line><polyline points="10 9 9 9 8 9"></polyline></svg>
                            BibTeX
                        </a>
                        {% endif %} -->
                        {% if publi.bibtex %}
                        <a href="{{ site.baseurl }}/publications/references/{{ publi.bibtex }}.bib" class="publication-link">
                            <svg class="icon" viewBox="0 0 24 24"><path d="M14 2H6a2 2 0 0 0-2 2v16a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V8z"></path><polyline points="14 2 14 8 20 8"></polyline><line x1="16" y1="13" x2="8" y2="13"></line><line x1="16" y1="17" x2="8" y2="17"></line><polyline points="10 9 9 9 8 9"></polyline></svg>
                            BibTeX
                        </a>
                        {% endif %}
                        <a href="{{ site.baseurl }}/publications/{{ publi.key }}/" class="btn btn-sm btn-outline-primary" target="_blank" style="font-size: 0.95rem; padding: 0.45rem 1.1rem; min-width: unset; min-height: unset; height: auto; line-height: 1.2; border-radius: 6px; white-space: nowrap; display: inline-flex; align-items: center; justify-content: center;">
                          Read More
                        </a>

                    </div>
                </div>
            </div>
        </div>
        {% endif %}
    {% endif %}
    {% endfor %}
    </div>

</div>
{% endfor %}
