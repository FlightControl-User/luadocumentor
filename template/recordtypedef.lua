return [[#
<div class="w3-white" id="record_type">
# --
# -- Inheritance
# --
#local function inherit( recordtypedef )
#  if recordtypedef and recordtypedef.supertype then
#    local type = ", inherits from " .. purelinkto( recordtypedef.supertype )
     $( type )
#    local extended = inherit( recordtypedef.supertype )
#  end
#  return recordtypedef
#end
#if _recordtypedef then
<h$(2)>
#  local type = " ==> " .. purelinkto( _recordtypedef )
     $( type )
#  inherit( _recordtypedef )
</h$(2)>
#end
# --
# -- Descriptions
# --
#if _recordtypedef.shortdescription and #_recordtypedef.shortdescription > 0 then
  $( format( _recordtypedef.shortdescription ) )
#end
#if _recordtypedef.description and #_recordtypedef.description > 0 then
  $( format( _recordtypedef.description ) )
#end
# --
# -- Structure
# --
#if _recordtypedef.structurekind then
#  local structureLine
#  if _recordtypedef.structurekind == "map" then
#    structureLine = {
#      '<code><em>', prettyname(_recordtypedef), '</em></code>',
#      ' is a map of <code><em>', fulllinkto(_recordtypedef.defaultkeytyperef),'</em></code>',
#      ' to <code><em>', fulllinkto(_recordtypedef.defaultvaluetyperef) , '</em></code>. ',
#       _recordtypedef.structuredescription }
#  elseif _recordtypedef.structurekind == "list" then
#    structureLine = {
#      '<code><em>', prettyname(_recordtypedef), '</em></code>',
#      ' is a list of <code><em>', fulllinkto(_recordtypedef.defaultvaluetyperef),'</em></code>. ',
#       _recordtypedef.structuredescription }
#  end
#  if structureLine then
     $(format(table.concat(structureLine)))
#  end
#end
#--
#-- Describe usage
#--
#if _recordtypedef.metadata and _recordtypedef.metadata.usage then
  $( applytemplate(_recordtypedef.metadata.usage, i) )
#end
# --
# -- Describe type fields
# --
#local modules = templateparams[1]
#local function inherittype( typedef, name )
#  local calldef = typedef:getcalldef()
#  local hasfield = not isempty(typedef.fields)
#  if calldef or hasfield then
<div class="fields">
  <h$(i)>Field(s)</h$(i)>
#    if calldef then
<div class="calldef">
  <a id="$(anchor(calldef,_recordtypedef))" >
  <strong>$( purename(calldef,_recordtypedef) )</strong>
  </a>
<div>   
   $( applytemplate(calldef, i, nil, true) )
</div>
</div>
#    end
#    for name, item in sortedpairs( _recordtypedef.fields ) do
#      if item.type then
#        local typedef = item:resolvetype()
#        if not typedef or typedef.tag ~= 'functiontypedef' then 
<div>   
        $( applytemplate(item, i+2) )
</div>   
#        end
#      end
#    end
</div>
<div class="functions">
  <h$(i)>Function(s)</h$(i)>
#    for name, item in sortedpairs( typedef.fields ) do
#      if item.type then
#        local typedef = item:resolvetype()
#        if typedef and typedef.tag == 'functiontypedef' then 
<div>
        $( applytemplate(item, i) )
</div>
#        end
#      end
#    end
</div>  
#  end 
#  if typedef.supertype then
#    local modulename = typedef.supertype.modulename
#    if modulename then 
#      local file = modules[modulename]
#      if file then
#        local typedef = file.types[typedef.supertype.typename]
#        typedef.name = name
#        inherittype( typedef, name )
#      end
#    end
#  end
#  return recordtypedef
#end
#inherittype( _recordtypedef, _recordtypedef.name )
</div>
]]
