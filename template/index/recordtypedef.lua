return [[#
# local modules = templateparams[1]
# --
# -- Inheritance
# --
#local function inherit( typedef )
#  if typedef and typedef.supertype then
#  local type = purelinkto( typedef.supertype )
   <div class="w3-container w3-margin-4 w3-padding-4 w3-half w3-large w3-center">extends</div>
   <div class="w3-card-4 w3-theme-l1 w3-text-white w3-margin-16 w3-padding-16 w3-half w3-large w3-center">$( type )</div>
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
   <div class="w3-card-4 w3-theme-d2 w3-text-white w3-margin w3-padding-32 w3-half w3-large w3-center"><strong>$( type )</strong></div>
#  inherit( _recordtypedef )
#end
# local function inherittype( typedef, name )
#   if typedef then
#     local calldef = typedef:getcalldef()
#     local hasfield = not isempty(typedef.fields or {})
#
#     if calldef or hasfield then
        <div class="">
        <table class="w3-border-bottom w3-small w3-border-theme-l2">
#       if calldef then
          <tr class="w3-border">
            <td class="name w3-padding-small"><style="maxwidth:40%;width:40%;"><p>$( purelinkto(calldef,_recordtypedef) )</p></td>
            <td class="summary w3-padding-small"><style="width:60%;">$( format(calldef.shortdescription) )</td>
          </tr>
#       end
#       for _, item in sortedpairs( typedef.fields ) do
          <tr class="w3-border">
            <td class="name w3-half" style="word-wrap: break-word"><p>$( purelinkto(item) )</p></td>
            <td class="summary w3-half" style="word-wrap: break-word">$( format( item.shortdescription ) )</td>
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
#           inherittype( itypedef, name )
#           itypedef.name = itypedef.originalname
#           itypedef.inheritedname = nil
#         end
#       end
#     end
#   end
#   return recordtypedef
# end
# inherittype( _recordtypedef, _recordtypedef.name )
# ]]
