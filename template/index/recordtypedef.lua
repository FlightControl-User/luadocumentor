return [[#
# local modules = templateparams[1]
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
#           local typedef = file.types[typedef.supertype.typename]
#           typedef.originalname = typedef.name
#           typedef.name = name
#           inherittype( typedef, name )
#           typedef.name = typedef.originalname
#           typedef.inheritedname = nil
#         end
#       end
#     end
#   end
#   return recordtypedef
# end
# inherittype( _recordtypedef, _recordtypedef.name )
# ]]
