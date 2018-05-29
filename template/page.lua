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
#if _page.headers and #_page.headers > 0 then
  <head>
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.13/css/all.css" integrity="sha384-DNOHZ68U8hZfKXOrtjWvjxusGo9WQnrNx2sqG0tfsghAvtVlRW3tvkXWZh58N9jp" crossorigin="anonymous">
#  for _, header in ipairs(_page.headers) do
    $(header)
#  end
   <meta http-equiv="Content-Type" content="text/html;charset=utf-8">
   
  </head>
#end
<body>
<div class="w3-container w3-opacity-max sticky w3-border-white w3-bottombar" style="height:8vw;" id="myHeader">
  <h1>
  <i class="w3-opennav fa fa-bars w3-text-white " onclick="w3_open()"></i>
  </h1>
</div>
<div id="main">
# --
# -- Generating lateral menu
# --
  <nav class="w3-sidenav w3-indigo w3-animate-left" style="display:none">
  <a href="javascript:void(0)" 
  onclick="w3_close()"
  class="w3-closenav w3-large">Close &times;</a>
#  local index = 'index'
#  if _page.modules then
   <table class="w3-table w3-blue w3-bordered w3-border">
#    -- Generating links for all modules
#    for _, module in sortedpairs( _page.modules ) do
#      --  Except for current one
#      if module.name ~= index then
         <tr>
         <td class="w3-container" style="word-break:break-word;"><h3><strong>$( purelinkto(module) )</strong></h3>$( module.description and format( module.shortdescription ) )</td>
         <td class="w3-container" style="min-width:160px; max-width:640px;"><img src="..\Images\$(module.image)" alt="Banner Image"/></td>
         </tr>         
#      end
#    end
   </table>
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
