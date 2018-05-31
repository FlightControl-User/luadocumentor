--------------------------------------------------------------------------------
--  Copyright (c) 2012 Sierra Wireless.
--  All rights reserved. This program and the accompanying materials
--  are made available under the terms of the Eclipse Public License v1.0
--  which accompanies this distribution, and is available at
--  http://www.eclipse.org/legal/epl-v10.html
-- 
--  Contributors:
--       Kevin KIN-FOO <kkinfoo@sierrawireless.com>
--           - initial API and implementation and initial documentation
--------------------------------------------------------------------------------
return
[[<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
#if _page.headers and #_page.headers > 0 then
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.13/css/all.css" integrity="sha384-DNOHZ68U8hZfKXOrtjWvjxusGo9WQnrNx2sqG0tfsghAvtVlRW3tvkXWZh58N9jp" crossorigin="anonymous">
  <link rel="stylesheet" href="https://www.w3schools.com/lib/w3-theme-indigo.css">
  <link rel="stylesheet" href="../Highlight/styles/github.css">
  <script src="../Highlight/highlight.pack.js"></script>
  <script>hljs.initHighlightingOnLoad();</script>
#  for _, header in ipairs(_page.headers) do
    $(header)
#  end
   <meta http-equiv="Content-Type" content="text/html;charset=utf-8">
   
#end
<style>
.picturebox {
  height:160px
}
@media only screen and (max-width: 600px) {
  body {
    font-size: 8px;
  }
  .picturebox {
    height:80px
    }
  h1{font-size:18px} h2{font-size:16px} h3{font-size:14px} h4{font-size:12px} h5{font-size:11px} h6{font-size:10px}
}
@media only screen and (max-width: 740px) {
  body {
    font-size: 10px;
  }
  .picturebox {
    height:80px
  }
  h1{font-size:20px} h2{font-size:18px} h3{font-size:16px} h4{font-size:14px} h5{font-size:13px} h6{font-size:12px}
}
</style>
</head>
<body onload="myLoadFunction()">
<div class="w3-container sticky w3-border-white w3-bottombar" style="height:8vw;background-image:url('../Images/Artillery.JPG');background-size: 100%;" id="myHeader">
  <h1>
  <i class="w3-opennav fa fa-bars w3-text-white " onclick="w3_open()"></i>
  </h1>
</div>
<div id="main">
# --
# -- Generating lateral menu
# --
  <nav class="w3-sidenav w3-theme-l5 w3-animate-left" style="display:none">
  <a href="javascript:void(0)" 
  onclick="w3_close()"
  class="w3-closenav w3-large">Close &times;</a>
#  local index = 'index'
#  if _page.modules then
   <div class="w3-row">
#    -- Generating links for all modules
#    for _, module in sortedpairs( _page.modules ) do
#      --  Except for current one
#      if module.name ~= index then
     <div class="w3-col s12 m6 l4">
       <div class="w3-card-4 w3-white w3-margin">
         <div class="w3-display-container w3-text-white w3-text-shadow">
           <img src= "../Images/$(module.image)" alt="Image" style="height-min:120px;">
           <div class="w3-display-bottommiddle w3-container style="word-break:break-word;"><h3><strong>$( purelinkto(module) )</strong></h3></div>
         </div>
         <div class="w3-padding-large w3-white picturebox" style="word-break:break-word;"><p>$( module.description and format( module.shortdescription ) )</p></div>
         
       </div>         
     </div>
#      end
#    end
   </div>
#  end
  </nav>
  $( applytemplate(_page.currentmodule) )
</div>
<script>
function w3_open() {
    document.getElementsByClassName("w3-sidenav")[0].style.width = "100%";
    document.getElementsByClassName("w3-sidenav")[0].style.display = "block";
}
function w3_close() {
    document.getElementsByClassName("w3-sidenav")[0].style.display = "none";
}
function myFunction(id) {
    var x = document.getElementById(id);
    if (x.className.indexOf("w3-show") == -1) {
        x.className += " w3-show";
    } else {
        x.className = x.className.replace(" w3-show", "");
    }
}

// When the user scrolls the page, execute myFunction
window.onscroll = function() {myFunctionHeader()};

// Get the header
var header = document.getElementById("myHeader");

// Get the offset position of the navbar
var sticky = 0//header.offsetTop;


// Add the sticky class to the header when you reach its scroll position. Remove "sticky" when you leave the scroll position
function myFunctionHeader() {
  if (window.pageYOffset >= sticky) {
    header.classList.add("sticky");
  } else {
    header.classList.remove("sticky");
  }
} 
</script>

</body>
</html>
]]
