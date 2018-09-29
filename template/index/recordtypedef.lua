return [[#
# local modules = templateparams[1]
# --
# -- Inheritance
# --
#local function inherit( typedef )
#  if typedef and typedef.supertype then
#    local type = purelinkto( typedef.supertype )
, extends <strong>$( type )</strong>
#    local modulename = typedef.supertype.modulename
#    if modulename then 
#      local file = modules[modulename]
#      if file then
#        local itypedef = file.types[typedef.supertype.typename]
#        inherit( itypedef )
#      end
#    end
#  end
#  return recordtypedef
#end
#if _recordtypedef then
#  local type = purelinkto( _recordtypedef )
   <div class="w3-card-4 w3-padding w3-margin w3-theme-l1">
     <strong>$( type )</strong>
#    inherit( _recordtypedef )
   </div>
#end
# local function inherittype( typedef, name, originalname )
#   if typedef then
#     local calldef = typedef:getcalldef()
#     local hasfield = not isempty(typedef.fields or {})
#
#     if calldef or hasfield then
        <div class="w3-card w3-margin">
        <table class="w3-table w3-border-bottom w3-border-theme-l2">
          <tr class="w3-theme-l1">
            <th class="w3-half w3-left-align w3-container w3-padding-16"word-wrap: break-word">Fields and Methods inherited from $( originalname )</th>
            <th class="w3-half w3-left-align w3-container w3-padding-16">Description</th>
          </tr>
#       if calldef then
          <tr class="w3-border">
            <td class="name w3-half w3-container"><style="word-wrap: break-word"><p>$( purelinkto(calldef,_recordtypedef) )</p></td>
            <td class="summary w3-half w3-container"><style="word-wrap: break-word">$( format(calldef.shortdescription) )</td>
          </tr>
#       end
#       for _, item in sortedpairs( typedef.fields ) do
          <tr class="w3-border">
            <td class="name w3-half w3-container" style="word-wrap: break-word"><p>$( purelinkto( item ) )</p></td>
            <td class="summary w3-half w3-container" style="word-wrap: break-word">$( format( item.shortdescription ) )</td>
          </tr>
#       end
        </table>
        </div>
#     end
#     if typedef.supertype then
#       local modulename = typedef.supertype.modulename
#       if modulename then 
#         local file = modules[modulename]
#         if file then
#           local itypedef = file.types[typedef.supertype.typename]
#           itypedef.originalname = itypedef.name
#           itypedef.name = name
#           inherittype( itypedef, name, itypedef.originalname )
#           itypedef.name = itypedef.originalname
#           itypedef.inheritedname = nil
#         end
#       end
#     end
#   end
#   return recordtypedef
# end
# inherittype( _recordtypedef, _recordtypedef.name, _recordtypedef.name )
# ]]
