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
return[[#
<div class="w3-container" id="content">
# --
# -- Module name
# --
# if _file.name then
   <div class="w3-container w3-blue" id="module_title"><h$(i)>Module <strong>$(_file.name)</strong></h$(i)></div>
   <div class="w3-container w3-white w3-leftbar w3-border-blue" id="module_description">
# end
# --
# -- Descriptions
# --
# if _file.shortdescription then
   $( format(_file.shortdescription) )
# end
# if _file.description and #_file.description > 0 then
   $( format(_file.description) )
# end
# --
# -- Handle "@usage" special tag
# --
#if _file.metadata and _file.metadata.usage then
  $( applytemplate(_file.metadata.usage, i+1) )
#end
  </div>
# --
# -- Show quick description of current type
# --
# 
# -- show quick description for globals
# if not isempty(_file.globalvars) then
  <div class="w3-container w3-blue"><h$(i+1)><strong>Global(s)</strong></h$(i+1)></div>
#  for name, item in sortedpairs(_file.globalvars) do
   <div class="w3-container w3-blue">
   <table class="w3-table w3-left-align w3-blue" onclick="myFunction('#Globals##$(name)')">
   <tr>
   <td class="w3-container"><p><i class="fa fa-arrow-down" style="font-size:28px;"></i></p></td> 
   <td class="w3-container"><p><h2><strong>$( purename(item) )</strong></h2></p></td>
   <td class="w3-container">$( format(item.shortdescription) )</td>
   </tr>
   </table>
   </div>
   <div id= "#Globals##$(name)" class="w3-hide w3-white w3-leftbar w3-border-blue">
     <div class="w3-container">
     $( applytemplate(item, i+2) )
     </div>
   </div>
#  end
# end
#
# --
# -- Long description of globals
# --
#-- if not isempty(_file.globalvars) then
#--  for name, item in sortedpairs(_file.globalvars) do
#--   <div class="w3-container w3-indigo" id="module_globals"><h$(i+1)>Global <strong>$( purename(item) )</strong></h$(i+1)></div>
#--   <div class="w3-container w3-white w3-leftbar w3-border-indigo" id="module_current_type">
#--   $( applytemplate(item, i+2) )
#--   </div>
#--  end
#-- end
#
# -- get type corresponding to this file (module)
# local currenttype 
# local typeref = _file:moduletyperef()
# if typeref and typeref.tag == "internaltyperef" then 
#  local typedef = _file.types[typeref.typename]
#  if typedef and typedef.tag == "recordtypedef" then
#    currenttype = typedef 
#  end
# end
#
# -- show quick description type exposed by module
# if currenttype and (not isempty(currenttype.fields) or currenttype:getcalldef()) then

  <div class="w3-container w3-light-blue"><h$(i+1)><a id="$(anchor(currenttype))" >Type <strong>$(currenttype.name)</strong></a></h$(i+1)></div>
  <div class="w3-container w3-white w3-leftbar w3-border-light-blue" id="module_current_type">
  $( applytemplate(currenttype, i+2, 'index') )
# end
# --
# -- Long description of current type
# --
# if currenttype then
  <div class="w3-accordion w3-light-blue"><h$(i+1)><a id="$(anchor(currenttype))" >Type <strong>$(currenttype.name)</strong></a></h$(i+1)></div>
  <div class="w3-accordion-content w3-container w3-white w3-leftbar w3-border-light-blue" id="module_current_type">
  $( applytemplate(currenttype, i+2) )
  </div/
# end
  </div>
# --
# -- Show quick description of other types
# --
# if _file.types then
  <div class="w3-container w3-blue"><h$(i+1)><strong>Type(s)</strong></h$(i+1)></div>
#  for name, type in sortedpairs( _file.types ) do
#    if type ~= currenttype and type.tag == 'recordtypedef' and (not isempty(type.fields) or type:getcalldef()) then
      <div onclick="myFunction('#Types##$(name)')" class="w3-container w3-light-blue"><h$(i+1)><a id="$(anchor(type))">Type <strong>$(name)</strong></a></h$(i+1)></div>
#    end
#    if type ~= currenttype  and type.tag == 'recordtypedef' then
      <div id= "#Types##$(name)" class="w3-hide w3-white w3-leftbar w3-border-light-blue" id="module_other_types">
      $( applytemplate(type, i+2) )
      </div>
#    end
#  end
# end
#
# --
# -- Long description of other types
# --
# if not isempty( _file.types ) then
  <div class="w3-accordion w3-light-blue">
#  for name, type in sortedpairs( _file.types ) do
#  end
  </div>
# end
</div>
]]
