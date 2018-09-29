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
[[#
# if _index.modules then
  <img src="../Images/Moose.JPG" alt="Banner Image"/>   
  <div id="content">
    <div class="w3-theme-d2 w3-margin-top">
    <h2>Module$( #_index.modules > 1 and 's' )</h2>
    </div>
    <div id="index_modules" class="w3-row">
#   for _, module in sortedpairs( _index.modules ) do
#     if module.tag ~= 'index' then
        <div class="w3-card-4 w3-white w3-padding w3-margin-32">
          <div class="w3-display-container w3-quarter">
            <img src= "../Images/$(module.image)" alt="Image">
          </div>
          <div class="w3-container w3-rest">
            <div class="w3-container" style="word-break:break-word;"><h2><strong>$( purelinkto(module) )</strong></h2></div>
            <div class="w3-container" style="word-break:break-word;"><p>$( module.description and format( module.shortdescription ) )</p></div>
          </div>
        </div>         
#     end
    </div>
#   end
  </div>
#--      <td class="summary" style="width:60%;">$( format(item.shortdescription) )<img src="..\Images\$(module.image)" alt="Banner Image"/></td>
#end ]]
