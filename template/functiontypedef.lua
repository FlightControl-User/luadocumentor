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
return [[#
<div class="w3-container w3-white" id="functiontype">
# local fdef = _functiontypedef
# local ignorefirstparam = templateparams[1]
# local ignoredescription = templateparams[2]
#
#if not ignoredescription then
# if fdef.shortdescription then
  $( format(fdef.shortdescription) )
# end
# if fdef.description and #fdef.description > 0 then
  $( format(fdef.description) )
# end
#end
# --
# -- Describe parameters
# --
#
#
# -- Adjust parameter count if first one is 'self'
# local paramcount
# if #fdef.params > 0 and ignorefirstparam then
#   paramcount = #fdef.params - 1
# else
#   paramcount = #fdef.params
# end
#
# -- List parameters
# if paramcount > 0 then
    <h$(i)><strong>Parameter$( paramcount > 1 and 's' ):</strong></h$(i)>
#   for position, param in ipairs( fdef.params ) do
      <div class="w3-row">
#     if not (position == 1 and ignorefirstparam) then
#       local paramline = ""
        <div class="w3-half">
#       if param.type then
#         local link = linkto( param.type )
#         local name = purename( param.type )
#         if link then
          <a href="$(link)">$(name)</a>
#         else
          $(name)
#         end
#       end
#       if param.optional then
#         paramline = paramline .. "optional" .. " "
#       end
#       if param.hidden then 
#         paramline = paramline .. "hidden"
#       end
        <strong>$(param.name)</strong>
        </div>
        <div class="w3-half">
#       paramline = ""
#       if param.description and #param.description > 0 then
          $(format(param.description))
#       else
          <p></p>
#       end
        </div>
#     end
    </div>
#   end
# end
#
# --
# -- Describe returns types
# --
# if fdef and #fdef.returns > 0 then
    <h$(i)><strong>Return value$(#fdef.returns > 1 and 's'):</strong></h$(i)>
#   --
#   -- Format nice type list
#   --
#   local function niceparmlist( parlist )
#     local typelist = {}
#     for position, type in ipairs(parlist) do
#       local link = linkto( type )
#       local name = purename( type )
#       if link then
#         typelist[#typelist + 1] = '<a href="'..link..'">'..name..'</a>'
#       else
#         typelist[#typelist + 1] = name
#       end
#       -- Append end separator or separating comma 
#       typelist[#typelist + 1] = position == #parlist and ':' or ', '
#     end
#     return table.concat( typelist )
#   end
#   --
#   -- Generate a list if they are several return clauses
#   --
    <div class="w3-row">
#   if #fdef.returns > 1 then
#     for position, ret in ipairs(fdef.returns) do
#
#       local paramlist = niceparmlist(ret.types)
        <div class="w3-half">
#       if #ret.types > 0 and #paramlist > 0 then
          $( paramlist )
#       end
        </div>
        <div class="w3-half">
          $( format ( ret.description ) )
        </div>
#     end
#   else
#     local paramlist = niceparmlist(fdef.returns[1].types)
#     local isreturn = fdef.returns and #fdef.returns > 0 and #paramlist > 0
#     local isdescription = fdef.returns and fdef.returns[1].description and #format(fdef.returns[1].description) > 0
#
#     -- Show return type if provided
      <div class="w3-half">
#     if isreturn then
        $( paramlist )
#     end
      </div>
      <div class="w3-half">
#     if isdescription then
        $( format ( fdef.returns[1].description ) )
#     end
      </div>
#   end
    </div>
# end
#
#--
#-- Show usage samples
#--
#if fdef.metadata and fdef.metadata.usage then
  $( applytemplate(fdef.metadata.usage, i) )
#end
</div>
]]
