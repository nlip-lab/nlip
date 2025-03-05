---
title: Gallery
permalink: /gallery/
---

<style>
* {
box-sizing: border-box;
    }
.row {
  width:100%;
  margin: 1px;
  align: center;
}
.column {
  float: left;
  display: none;
}
/* Clear floats after rows */ 
.row:after {
  content: "";
  display: table;
  clear: both;
}
/* Style the buttons */
.btn {
  border: none;
  outline: none;
  padding: 12px 16px;
  background-color: white;
  cursor: pointer;
}
.btn:hover {
  background-color: #ddd;
}
.btn.active {
  background-color: #666;
  color: white;
}
</style>

<h3 style="margin-left:0px"> {{site.name}} Gallery </h3>

<div class="row">
  {%for img in site.data.gallery%}
    <div class="col {{img.tag}}" style="padding:2px">
      <a href="/images/gallery/{{img.img}}" target="_blank">
        <img src="/images/gallery/{{img.img}}" style="height:150px; width:200px;">
      </a>
      <p style="width:200px; text-align:center; font-size:15px">{{img.caption}}</p>
      <span style="display: block; margin-bottom: 1em"></span>
    </div>
  {%endfor%}
</div>

<div id="myBtnContainer" style="text-align:center; margin-left:-200px; padding:10px">
  <button class="btn active" onclick="filterSelection('1')">1</button>
  {% assign tags = '' %}
  
  <!-- loop through all images and add their tags to the tags variable separated by a comma-->
  {% for img in site.data.gallery %}
    {% assign tags = tags | append: img.tag | append: ' ' %}
  {% endfor %}

  <!-- remove duplicates -->
  {% assign tags = tags | split: ' ' %}

  <!-- remove the duplicates -->
  {% assign tags = tags | uniq %}  

  <!-- remove the tag "1" -->
  {% assign tags = tags | where_exp: "item", "item != '1'" %}

  <!-- loop through the tags variable and create a button for each tag -->
  {% for tag in tags %}
      <button class="btn" onclick="filterSelection('{{ tag }}')">{{ tag }}</button>
  {% endfor %}  
</div>

<span style="display: block; margin-bottom: 2em"></span>


<script>
filterSelection("1")
function filterSelection(c) {
  var x, i;
  x = document.getElementsByClassName("column");
  if (c == "all") c = "";
  for (i = 0; i < x.length; i++) {
    w3RemoveClass(x[i], "show");
    if (x[i].className.indexOf(c) > -1) w3AddClass(x[i], "show");
  }
}
function w3AddClass(element, name) {
  var i, arr1, arr2;
  arr1 = element.className.split(" ");
  arr2 = name.split(" ");
  for (i = 0; i < arr2.length; i++) {
    if (arr1.indexOf(arr2[i]) == -1) {element.className += " " + arr2[i];}
  }
}
function w3RemoveClass(element, name) {
  var i, arr1, arr2;
  arr1 = element.className.split(" ");
  arr2 = name.split(" ");
  for (i = 0; i < arr2.length; i++) {
    while (arr1.indexOf(arr2[i]) > -1) {
      arr1.splice(arr1.indexOf(arr2[i]), 1);     
    }
  }
  element.className = arr1.join(" ");
}

// Add active class to the current button (highlight it)
var btnContainer = document.getElementById("myBtnContainer");
var btns = btnContainer.getElementsByClassName("btn");
for (var i = 0; i < btns.length; i++) {
  btns[i].addEventListener("click", function(){
    var current = document.getElementsByClassName("active");
    current[0].className = current[0].className.replace(" active", "");
    this.className += " active";
  });
}
</script>
