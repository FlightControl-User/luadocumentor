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
# if _file.image then

<img src="..\Images\$(_file.image)" alt="Banner Image"/>   
# end
<div  id="content">
# --
# -- Module name
# --
# if _file.name then
  <div class="w3-container w3-theme-d5" id="module_title">
    <h$(i)>Module <strong>$(_file.name)</strong></h$(i)>
  </div>
  <div class="w3-container w3-white w3-leftbar w3-border-theme w3-margin-top w3-padding-large" id="module_description">
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
  <div class="w3-container w3-theme-d2"><h$(i+1)><strong>Global(s)</strong></h$(i+1)>
#  for name, item in sortedpairs(_file.globalvars) do
    <div class="w3-theme-d2 w3-margin-top ">
      <table class="w3-table w3-left-align w3-theme-d2" onclick="myFunction('#Globals##$(name)')">
        <tr>
          <td class="style="width:40%;"><p><h2>Global <strong>$( purename(item) )</strong></h2></p></td>
          <td class="style="width:60%;">$( format(item.shortdescription) )</td>
        </tr>
      </table>
      <div id= "#Globals##$(name)" class="w3-white w3-leftbar w3-border-theme w3-padding-large">
        $( applytemplate(item, i+2) )
      </div>
    </div>
#  end
  </div>
# end
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
  <div class="w3-container w3-theme-l2 w3-margin-top"><h$(i+1)><strong>Type(s)</strong></h$(i+1)>
# if currenttype and (not isempty(currenttype.fields) or currenttype:getcalldef()) then

    <div class="w3-container w3-theme-l2 w3-margin-top"><h$(i+1)><a id="$(anchor(currenttype))" >Type <strong>$(currenttype.name)</strong></a></h$(i+1)>
      <div class="w3-container w3-white w3-leftbar w3-border-theme w3-padding-large" id="module_current_type">
        $( applytemplate(currenttype, i+2, 'index') )
      </div>
    </div>
# end
#
# --
# -- Long description of current type
# --
# if currenttype then
    <div class="w3-container w3-theme-l2 w3-margin-top"><h$(i+1)><a id="$(anchor(currenttype))" >Type <strong>$(currenttype.name)</strong></a></h$(i+1)>
      <div class="w3-container w3-container w3-white w3-leftbar w3-border-theme" id="module_current_type">
        $( applytemplate(currenttype, i+2) )
      </div>
    </div>
# end
#
# --
# -- Show quick description of other types
# --
# if _file.types then
#  for name, type in sortedpairs( _file.types ) do
#   if type ~= currenttype and type.tag == 'recordtypedef' and (not isempty(type.fields) or type:getcalldef()) then
    <div onclick="myFunction('#Types##$(name)')" class="w3-container w3-theme-l2 w3-margin-top"><h$(i+1)><a id="$(anchor(type))">Type <strong>$(name)</strong></a></h$(i+1)>
#    if type ~= currenttype  and type.tag == 'recordtypedef' then
      <div id= "#Types##$(name)" class="w3-white w3-leftbar w3-border-theme" id="module_other_types">
        $( applytemplate(type, i+2) )
      </div>
#     end
    </div>
#    end
#  end
# end
  </div>
</div>
<script>
function myLoadFunction() {
    document.getElementById("myHeader").style.backgroundImage = "url('../Images/$(_file.image)')";
}
</script>
]]
