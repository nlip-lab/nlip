---
layout: default
permalink: /
title: Natural Language and Information Processing Lab - NLIP
---
<div class="container mt-5">
  <div style="text-align: center;">
    <h2 style="color: rgb(65, 65, 65);">{{site.title}}</h2>
  </div>
    
    <span style="display: block; margin-bottom: 3em"></span>

    <!-- CAROUSEL -->
    <div class="container-fluid" style="width: 100%;">
      <div id="myCarousel" class="carousel slide" data-bs-ride="carousel">

        <ol class="carousel-indicators">
          <li data-bs-target="#myCarousel" data-bs-slide-to="0" class="active"></li>
          <li data-bs-target="#myCarousel" data-bs-slide-to="1"></li>
          <li data-bs-target="#myCarousel" data-bs-slide-to="2"></li>
          <li data-bs-target="#myCarousel" data-bs-slide-to="3"></li>
          <li data-bs-target="#myCarousel" data-bs-slide-to="4"></li>
          <li data-bs-target="#myCarousel" data-bs-slide-to="5"></li>
          <li data-bs-target="#myCarousel" data-bs-slide-to="6"></li>
          <li data-bs-target="#myCarousel" data-bs-slide-to="7"></li>
          <li data-bs-target="#myCarousel" data-bs-slide-to="8"></li>
        </ol>
    
        <div class="carousel-inner">
          <div class="carousel-item active">
            <img src="{{site.baseurl}}/images/carousel/10.jpg"  style="width:100%;">
          </div>
          <!-- Carousel 0 -->
          <div class="carousel-item">
            <img src="{{site.baseurl}}/images/carousel/7.JPG"  style="width:100%;">
          </div>
          
          <!-- Carousel 1 -->
          <div class="carousel-item">
            <img src="{{site.baseurl}}/images/carousel/9.JPG"  style="width:100%;">
          </div>

          <!-- Carousel 2 -->
          <div class="carousel-item">
            <img src="{{site.baseurl}}/images/carousel/8.JPG"  style="width:100%;">
          </div>
          
          <!-- Carousel 3 -->
          <div class="carousel-item">
            <img src="{{site.baseurl}}/images/carousel/6.JPG"  style="width:100%;">
          </div>
          <!-- Carousel 4 -->
          <div class="carousel-item">
            <img src="{{site.baseurl}}/images/carousel/5.jpg"  style="width:100%;">
          </div>

          <!-- Carousel 5 -->
          <div class="carousel-item">
            <img src="{{site.baseurl}}/images/carousel/3.png" style="width:100%;">
          </div>
          <!-- Carousel 7 -->
          <div class="carousel-item">
            <img src="{{site.baseurl}}/images/carousel/2.png" style="width:100%;">
          </div>

          <div class="carousel-item">
            <img src="{{site.baseurl}}/images/carousel/1.jpg" style="width:100%;">
          </div>

          

          <!-- <div class="carousel-item"> -->
            <!-- <img src="{{site.baseurl}}/images/carousel/4.JPG" style="width:100%;"> -->
          <!-- </div> -->
          
        </div>
    
        <button class="carousel-control-prev" data-bs-target="#myCarousel" data-bs-slide="prev">
          <span class="glyphicon glyphicon-chevron-left"></span>
          <span class="visually-hidden">Previous</span>
        </button>
        <button class="carousel-control-next" data-bs-target="#myCarousel" data-bs-slide="next">
          <span class="glyphicon glyphicon-chevron-right"></span>
          <span class="visually-hidden">Next</span>
        </button>
      </div>
    </div>

    <div class="mt-2 rounded">
      <!-- SOCIAL MEDIAS -->
      <!-- <p><strong>Connect with us:</strong></p> -->
      <div class="row text-center" style="margin: 10px; padding: 10px; text-align: center;">
        <!-- Connect with us: -->
          <div>
            <i class="fa fa-envelope-o" style="color: #268bd2"></i> <a href="mailto:nlip@cse.iith.ac.in">Email</a>
            <span style="margin-right: 10px;"></span>
            <i class="fa fa-github" style="color: #268bd2"></i> <a href="https://github.com/nlip-lab/">NLIP Lab</a>&nbsp;&nbsp;&nbsp;
          </div>
        <!-- <a href="https://twitter.com/KordingLab"><i class="fa fa-twitter"></i> LiKELab</a>&nbsp;&nbsp;&nbsp; -->
      </div>
    <!-- ---------- -->

    <!-- NEWS SECTION -->
    <div class="w3-container" style="   background: #f0f8ff; padding: 25px; border-radius:10px; border: 1px solid #5d8aa8">
      <div style="text-align:left">
        <h3> Recent News </h3>
        <span style="display: block; margin-bottom: 1em"></span>

        <div class="news">

              {%assign count = 0%}
              {% for new in site.data.news %}

                {%if new.month==1%}{%assign month="January"%}{%endif%}
                {%if new.month==2%}{%assign month="February"%}{%endif%}
                {%if new.month==3%}{%assign month="March"%}{%endif%}
                {%if new.month==4%}{%assign month="April"%}{%endif%}
                {%if new.month==5%}{%assign month="May"%}{%endif%}
                {%if new.month==6%}{%assign month="June"%}{%endif%}
                {%if new.month==7%}{%assign month="July"%}{%endif%}
                {%if new.month==8%}{%assign month="August"%}{%endif%}
                {%if new.month==9%}{%assign month="September"%}{%endif%}
                {%if new.month==10%}{%assign month="October"%}{%endif%}
                {%if new.month==11%}{%assign month="November"%}{%endif%}
                {%if new.month==12%}{%assign month="December"%}{%endif%}

                {%if new.details%}

                {%assign count = count | plus: 1%}
                  {%if count > site.number_of_news_in_homepage%}
                    {%break%}
                  {%endif%}

                  <!-- <div class="row" style="overflow: hidden;">
                    <column style="float:left; width:160px; text-align:left; padding-right:2px">
                      <b>{{month}} {{new.day}}, {{new.year}}</b>
                    </column>
                    <column class="d-none d-sm-block" style="float:left; width:10px; text-align:right; padding-right:15px">
                      <b>:</b>
                    </column>
                    <column style="float:left; width: 600px; text-align:justify;"><p>{{ new.details }}</p></column>
                  </div>   -->
                  <div class="row" style="overflow: hidden;">
                    <div class="mb-2">
                      <div style="display: inline; max-width: 300px;"><b>{{month}} {{new.day}}, {{new.year}}</b></div>
                      <span>:</span>
                      <span>{{ new.details }}</span>
                    </div>
                  </div>  
                  {%endif%}
              {% endfor %}
            <!-- </ul> -->
            <!-- if count is more than 3 then  -->
            <div class="">
              {%if count > site.number_of_news_in_homepage%}
              <a href="{{site.baseurl}}/news"><u>More News</u></a>
              {%endif%}
            </div>
        </div>
        
      </div >
      
    </div>
    <!-- ---------- -->

    <span style="display: block; margin-bottom: 1em"></span>

    <!-- Media Coverage SECTION -->
    <div class="w3-container" style="   background: #ffeadf; padding: 25px; border-radius:10px; border: 1px solid #f7af89">
      <div style="text-align:left">
        <h3> Media Coverage </h3>
        <span style="display: block; margin-bottom: 1em"></span>

        <div class="news">

              {%assign count = 0%}
              {% for new in site.data.media %}

                {%if new.month==1%}{%assign month="January"%}{%endif%}
                {%if new.month==2%}{%assign month="February"%}{%endif%}
                {%if new.month==3%}{%assign month="March"%}{%endif%}
                {%if new.month==4%}{%assign month="April"%}{%endif%}
                {%if new.month==5%}{%assign month="May"%}{%endif%}
                {%if new.month==6%}{%assign month="June"%}{%endif%}
                {%if new.month==7%}{%assign month="July"%}{%endif%}
                {%if new.month==8%}{%assign month="August"%}{%endif%}
                {%if new.month==9%}{%assign month="September"%}{%endif%}
                {%if new.month==10%}{%assign month="October"%}{%endif%}
                {%if new.month==11%}{%assign month="November"%}{%endif%}
                {%if new.month==12%}{%assign month="December"%}{%endif%}

                {%if new.details%}

                {%assign count = count | plus: 1%}
                  {%if count > site.number_of_media_in_homepage%}
                    {%break%}
                  {%endif%}

                  <!-- <div class="row" style="overflow: hidden;">
                    <column style="float:left; width:160px; text-align:left; padding-right:2px">
                      <b>{{month}} {{new.day}}, {{new.year}}</b>
                    </column>
                    <column class="d-none d-sm-block" style="float:left; width:10px; text-align:right; padding-right:15px">
                      <b>:</b>
                    </column>
                    <column style="float:left; width: 600px; text-align:justify;"><p>{{ new.details }}</p></column>
                  </div>   -->
                  <div class="row" style="overflow: hidden;">
                    <div class="mb-2">
                      <div style="display: inline; max-width: 300px;"><b>{{month}} {{new.day}}, {{new.year}}</b></div>
                      <span>:</span>
                      <span>{{ new.details }}</span>
                    </div>
                  </div>  
                  {%endif%}
              {% endfor %}
            <!-- </ul> -->
        </div>
        
      </div >
      
    </div>
    <!-- ---------- -->

    <!-- LAB CULTURE -->
    <div class="p-2" >
      <!-- <h2>About Our Lab:</h2> -->
      <p class="mt-3" style="text-align: justify;">We are a young and dynamic research group as part of the <a href="https://cse.iith.ac.in/">Department of Computer Science and Engineering</a> 
      at <a href="https://iith.ac.in/">Indian Institute of Technology Hyderabad</a>. We are committed to pushing the frontiers of 
      Natural Language Processing (NLP), Information Retrieval (IR), and related domains through cutting-edge research and development. 
      We collaborate closely with academic institutions, industry partners, and other research groups to drive innovation in these fields.
      Our focus is on developing efficient and effective algorithms, models, and systems that can scale to real-world applications.
      We also strive to make our research accessible and impactful by publishing our findings in top-tier conferences and journals, 
      and by open-sourcing our software and datasets. </p>

      <p style="text-align: justify;"> 
      We are located near the beautiful city of Hyderabad, which was established in 1591 by Muhammad Quli Qutb Shah, a ruler of the Qutb Shahi 
      dynasty. The city's rich cultural and architectural heritage is renowned, having been predominantly governed by the Nizams throughout 
      its history. The city's unique blend of modern infrastructure and traditional charm make it a must-visit destination for anyone looking to 
      experience the diverse and dynamic culture of India.</p>

      </div>
    <!-- ---------- -->

    <!-- <span style="display: block; margin-bottom: 3em"></span> -->

    <!-- ---------- -->


    <!-- <a class="twitter-timeline" href="https://twitter.com/KordingLab" data-widget-id="695051708246941697">Tweets by @KordingLab</a>
    <script>!function(d,s,id){var js,fjs=d.getElementsByTagName(s)[0],p=/^http:/.test(d.location)?'http':'https';if(!d.getElementById(id)){js=d.createElement(s);js.id=id;js.src=p+"://platform.twitter.com/widgets.js";fjs.parentNode.insertBefore(js,fjs);}}(document,"script","twitter-wjs");</script> -->

    <!-- CONTRIBUTORS -->
    <div class="p-1">
      <!-- <h2>Collaborators:</h2> -->
      <p class="mt-2" style="text-align: justify;">We are grateful for fundings from <a href="https://www.microsoft.com/"> Microsoft</a>, <a href="https://tihan.iith.ac.in/"> TiHan</a>,<a href="https://www.nvidia.com/en-in/"> Nvidia</a>,<a href="https://www.accenture.com/in-en"> Accenture</a>,<a href="https://www.honeywell.com/us/en"> Honeywell</a>, etc.</p>
      
      <!-- ORGANIZATIONS -->
      <div class="grid-container">
        <div class="grid-item"><img src="/nlip/images/logo/iith.png" width="80%"></div>
        <div class="grid-item"><img src="/nlip/images/logo/microsoft.webp" width="80%"></div>
        <div class="grid-item"><img src="/nlip/images/logo/accenture.webp" width="80%"></div>
        <div class="grid-item"><img src="/nlip/images/logo/honeywell.webp" width="80%"></div>  
        <div class="grid-item"><img src="/nlip/images/logo/parabole.webp" width="80%"></div>  
        <div class="grid-item"><img src="/nlip/images/logo/nvidia.webp" width="80%"></div>
        <div class="grid-item"><img src="/nlip/images/logo/nagayo.webp" width="80%"></div>
        <div class="grid-item"><img src="/nlip/images/logo/tihan.webp" width="80%"></div> 
      </div>
    </div>

    </div> 

    
</div>