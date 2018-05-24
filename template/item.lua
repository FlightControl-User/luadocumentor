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
[[<dl>
<dt><h$(i)>
# --
# -- Resolve item type definition
# --
# local typedef = _item:resolvetype()

# --
# -- Show item type for internal type
# --
#if _item.type and (not typedef or typedef.tag ~= 'functiontypedef') then
#  --Show link only when available 
#  local link = purelinkto(_item.type)
#  if link then
    $( link )
#  else
    $(purename(_item.type))
#  end
#end
#if typedef and typedef.tag == 'functiontypedef' then
<div class="w3-container w3-light-blue" onclick="myFunction('#Functions##$(_item.name)')">
<i class="fa fa-arrow-down" w3-white style="font-size:24px;"></i>
<a id="$(anchor(_item))" ><strong>$( purename(_item) )</strong></a>
</div>
#end
</h$(i)>
</dt>
<dd>
# local ignoredescription = false
# if _item.shortdescription then
    $( format(_item.shortdescription) )
#   ignoredescription = true
# end
# if _item.description and #_item.description > 0 then
    $( format(_item.description) )
#   ignoredescription = true
# end
#
# --
# -- For function definitions, describe parameters and return values
# --
#if typedef and typedef.tag == 'functiontypedef' then
#  local fdef = typedef
<div id= "#Functions##$(_item.name)" class="w3-hide w3-white w3-leftbar w3-border-light-blue">
  $( applytemplate(fdef, i,nil,isinvokable(_item),ignoredescription) )
</div>
#else
#--
#-- Show usage samples for item which is not a function
#--
#  if _item.metadata and _item.metadata.usage then
  $( applytemplate(_item.metadata.usage, i) )
#  end
#end
#
</dd>
</dl>]]
