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
  <link rel="stylesheet" href="http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.4.0/css/font-awesome.min.css">
#  for _, header in ipairs(_page.headers) do
    $(header)
#  end
   <meta http-equiv="Content-Type" content="text/html;charset=utf-8">
   
  </head>
#end
<body>
<header class="w3-container w3-indigo">
    <span class="w3-opennav w3-xlarge" onclick="w3_open()">&#9776;</span><h1>MOOSE for DCS World</h1>
</header>
<div id="container">
<div id="product">
  <div id="product_logo"></div>
  <div id="product_name"><big><b></b></big></div>
  <div id="product_description"></div>
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
         <td class="name"><p><strong>$( purelinkto(module) )</strong></p></td>
         <td class="summary">$( module.description and format( module.shortdescription ) )</td>
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
</script>
</body>
</html>
]]
