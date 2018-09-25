return [[#
# local modules = templateparams[1]
# local function inherittype( typedef, name )
#   if typedef then
#     local calldef = typedef:getcalldef()
#     local hasfield = not isempty(typedef.fields or {})
#
# if calldef or hasfield then
 <div class="">
  <table class="w3-border">
# if calldef then
    <tr class="w3-border">
    <td class="name w3-padding-small"><style="width=40%;"><p>$( purelinkto(calldef,_recordtypedef) )</p></td>
    <td class="summary w3-padding-small"><style="width:60%;">$( format(calldef.shortdescription) )</td>
    </tr>
# end
#  for _, item in sortedpairs( typedef.fields ) do
    <tr class="w3-border">
    <td class="name"><style="width=40%;">$( purelinkto(item) )</td>
    <td class="summary"><style="width:60%;">$( format( item.shortdescription ) )</td>
    </tr>
#   end
  </table>
 </div>
# end
#    if typedef.supertype then
#      local modulename = typedef.supertype.modulename
#      if modulename then 
#        local file = modules[modulename]
#        if file then
#          local typedef = file.types[typedef.supertype.typename]
#          typedef.name = name
#          inherittype( typedef, name )
#        end
#      end
#    end
#   end
#   return recordtypedef
# end
# inherittype( _recordtypedef, _recordtypedef.name )
# ]]
