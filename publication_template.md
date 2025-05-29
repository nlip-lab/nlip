---
layout: page
title: "{{ page.title }}"
permalink: /publications/{{ page.key }}/
---

<style>
.publication-container {
  max-width: 1200px;
  margin: 0 auto;
  padding: 2rem;
  font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Open Sans', 'Helvetica Neue', sans-serif;
}

.publication-header {
  text-align: center;
  margin-bottom: 3rem;
}

.publication-title {
  font-size: 2.5rem;
  font-weight: 700;
  color: #2c3e50;
  margin-bottom: 1rem;
  line-height: 1.2;
}

.publication-authors {
  font-size: 1.2rem;
  color: #666;
  margin-bottom: 1rem;
}

.publication-affiliation {
  font-size: 1rem;
  color: #888;
  margin-bottom: 2rem;
}

.publication-links {
  display: flex;
  gap: 1rem;
  justify-content: center;
  margin-bottom: 2rem;
}

.publication-link {
  padding: 0.8rem 1.5rem;
  background: #2c3e50;
  color: white;
  text-decoration: none;
  border-radius: 6px;
  font-weight: 500;
  transition: all 0.2s ease;
  display: flex;
  align-items: center;
  gap: 0.5rem;
}

.publication-link:hover {
  background: #34495e;
  transform: translateY(-2px);
  box-shadow: 0 2px 8px rgba(0,0,0,0.1);
}

.publication-link svg {
  width: 16px;
  height: 16px;
  fill: currentColor;
}

.publication-content {
  display: flex;
  flex-direction: row;
  gap: 2rem;
  margin-bottom: 3rem;
}

.publication-image-container {
  width: 100%;
  text-align: center;
  margin: 1.5rem 0;
}

.publication-image {
  max-width: 100%;
  max-height: 500px;
  display: block;
  margin-left: auto;
  margin-right: auto;
  border-radius: 8px;
  box-shadow: 0 4px 12px rgba(0,0,0,0.1);
}

.publication-text {
  flex: 1 1 0;
  font-size: 1.1rem;
  line-height: 1.6;
  color: #444;
}

.publication-abstract {
  background: #f8f9fa;
  padding: 2rem;
  border-radius: 8px;
  margin-bottom: 2rem;
}

.publication-abstract h2 {
  color: #2c3e50;
  margin-bottom: 1rem;
  font-size: 1.5rem;
}

.publication-abstract p {
  margin: 0;
  line-height: 1.6;
}

.publication-details {
  background: white;
  padding: 2rem;
  border-radius: 8px;
  box-shadow: 0 2px 8px rgba(0,0,0,0.05);
}

.publication-details h2 {
  color: #2c3e50;
  margin-bottom: 1rem;
  font-size: 1.5rem;
}

.publication-details p {
  margin: 0.5rem 0;
  color: #666;
}

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
  white-space: pre-wrap;
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

@media (max-width: 768px) {
  .publication-content {
    flex-direction: column;
  }
  
  .publication-title {
    font-size: 2rem;
  }
  
  .publication-links {
    flex-direction: column;
    align-items: center;
  }
  
  .publication-link {
    width: 100%;
    justify-content: center;
  }
}
</style>

<div class="publication-container">
  <div class="publication-header">
    <h1 class="publication-title">{{ page.title }}</h1>
    <div class="publication-authors">{{ page.authors }}</div>
    <div class="publication-affiliation">{{ page.affiliation }}</div>
    <div class="publication-links">
      {% if page.url %}
      <a href="{{ page.url }}" class="publication-link" target="_blank">
        <svg viewBox="0 0 24 24">
          <path d="M12 2C6.48 2 2 6.48 2 12s4.48 10 10 10 10-4.48 10-10S17.52 2 12 2zm-1 17.93c-3.95-.49-7-3.85-7-7.93 0-.62.08-1.21.21-1.79L9 15v1c0 1.1.9 2 2 2v1.93zm6.9-2.54c-.26-.81-1-1.39-1.9-1.39h-1v-3c0-.55-.45-1-1-1H8v-2h2c.55 0 1-.45 1-1V7h2c1.1 0 2-.9 2-2v-.41c2.93 1.19 5 4.06 5 7.41 0 2.08-.8 3.97-2.1 5.39z"/>
        </svg>
        URL
      </a>
      {% endif %}
      {% if page.pdf %}
      <a href="{{ page.pdf }}" class="publication-link" target="_blank">
        <svg viewBox="0 0 24 24">
          <path d="M14 2H6c-1.1 0-1.99.9-1.99 2L4 20c0 1.1.89 2 1.99 2H18c1.1 0 2-.9 2-2V8l-6-6zm2 16H8v-2h8v2zm0-4H8v-2h8v2zm-3-5V3.5L18.5 9H13z"/>
        </svg>
        PDF
      </a>
      {% endif %}
      {% if page.code %}
      <a href="{{ page.code }}" class="publication-link" target="_blank">
        <svg viewBox="0 0 24 24">
          <path d="M9.4 16.6L4.8 12l4.6-4.6L8 6l-6 6 6 6 1.4-1.4zm5.2 0l4.6-4.6-4.6-4.6L16 6l6 6-6 6-1.4-1.4z"/>
        </svg>
        Code
      </a>
      {% endif %}
      {% if page.video %}
      <a href="{{ page.video }}" class="publication-link" target="_blank">
        <svg viewBox="0 0 24 24">
          <path d="M10 16.5l6-4.5-6-4.5v9zM12 2C6.48 2 2 6.48 2 12s4.48 10 10 10 10-4.48 10-10S17.52 2 12 2zm0 18c-4.41 0-8-3.59-8-8s3.59-8 8-8 8 3.59 8 8-3.59 8-8 8z"/>
        </svg>
        Video
      </a>
      {% endif %}
      {% if page.bibtex %}
      <a href="/nlip/publications/references/{{ page.bibtex }}.bib" class="publication-link" target="_blank">
        <svg viewBox="0 0 24 24">
          <path d="M14 2H6c-1.1 0-1.99.9-1.99 2L4 20c0 1.1.89 2 1.99 2H18c1.1 0 2-.9 2-2V8l-6-6zm2 16H8v-2h8v2zm0-4H8v-2h8v2zm-3-5V3.5L18.5 9H13z"/>
        </svg>
        BibTeX
      </a>
      {% endif %}
    </div>
  </div>

  <div class="publication-details">
    <h2>Publication Details</h2>
    <p><strong>Journal:</strong> {{ page.journal }}</p>
    <p><strong>Year:</strong> {{ page.year }}</p>
    {% if page.month %}
    <p><strong>Month:</strong> {{ page.month }}</p>
    {% endif %}
  </div>

  <div class="publication-content">
    <div class="publication-text">
      {{ content }}
    </div>
  </div>

  <div class="publication-abstract">
    <h2>Abstract</h2>
    <p>{{ page.abstract }}</p>
  </div>

  {% if page.img %}
  <div class="publication-image-container">
    <img src="{{ site.baseurl }}/publications/images/{{ page.img }}" class="publication-image" alt="{{ page.title }}">
  </div>
  {% endif %}

</div>

<script>
document.addEventListener('DOMContentLoaded', function() {
  // Create BibTeX modal
  const modal = document.createElement('div');
  modal.className = 'bibtex-modal';
  modal.innerHTML = `
    <div class="bibtex-content">
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
  const bibtexLink = document.querySelector('a[href*="bibtex"]');
  if (bibtexLink) {
    bibtexLink.addEventListener('click', async function(e) {
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

  // Copy BibTeX content
  const copyButton = modal.querySelector('.copy-bibtex');
  copyButton.addEventListener('click', () => {
    const bibtexContent = modal.querySelector('pre').textContent;
    navigator.clipboard.writeText(bibtexContent).then(() => {
      const originalText = copyButton.innerHTML;
      copyButton.innerHTML = `
        <svg viewBox="0 0 24 24">
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