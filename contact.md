---
title: Contact US
permalink: /contact/
---

<h3 id="#contact">Contact Us</h3>
<span style="display: block; margin-bottom: 3em"></span>

<!-- CONTACT -->
<div style="margin-top:50px; align:center; padding-left:50px">
    <div style="display: flex; justify-content: center; flex-wrap: wrap; text-align: center;">
        <div style="width:250px; margin: 10px;">
            <h4>📍 Address</h4>
            <p>{{site.address}}</p>
        </div>
        <div style="width:250px; margin: 10px;">
            <h4>✉️ Email</h4>
            <a href="mailto:{{ site.email }}">nlip[at]cse[dot]iith[dot]ac[dot]in</a>
        </div>
        <div style="width:100px; margin: 10px;">
            <h4>📞 Phone</h4>
            <p>{{site.phone}}</p>
        </div>
        <div style="width:250px; margin: 10px;">
            <h4>🕒 Office Hours</h4>
            <p>{{site.office_hours}}</p>
        </div>
    </div>
</div>

<!-- LAB LOCATION -->

<div style="width:100%; height:700px; padding-bottom:100px">
  <iframe 
    src="https://www.google.com/maps/embed?pb=!1m14!1m12!1m3!1d1866.6682220334442!2d78.12359467897458!3d17.595584129661564!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!5e0!3m2!1sen!2sin!4v1680867993295!5m2!1sen!2sin" 
    style="width:100%; height:100%"
    title="Google Maps Location of {{site.name}}" 
    frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" 
    allowfullscreen>
    </iframe>
</div>
