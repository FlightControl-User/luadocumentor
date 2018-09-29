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
:target::before {
  content: "";
  display: block;
  height: calc( var( --headerheight, 0 ) );
  margin: calc( var( --headerheight, 0) ) 0 0;
}

.picturebox {
  height:100px;
}
a {
  display:inline-block;
}
</style>
</head>
<body onload="myLoadFunction()" >
<div id="myHeader" class="w3-container sticky w3-border-white w3-bottombar" style="background-image:url('../Images/Moose.JPG');">
  <h1>
  <i class="fa fa-bars w3-text-white fa-2x" onclick="w3_open()"></i>
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
       <div class="w3-card-4 w3-white w3-margin-16">
         <div class="w3-display-container w3-text-white w3-text-shadow">
           <img src= "../Images/$(module.image)" alt="Image">
           <div class="w3-display-bottommiddle" style="word-break:break-word;"><h2><strong>$( purelinkto(module) )</strong></h2></div>
         </div>
         <div class="w3-container w3-padding w3-white picturebox" style="word-break:break-word;"><p>$( module.description and format( module.shortdescription ) )</p></div>
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
    document.getElementsByClassName("w3-sidenav")[0].style.width = "95vw";
    document.getElementsByClassName("w3-sidenav")[0].style.maxWidth = "1400px";
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
</script>

</body>
</html>
]]
