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
# local calldef = _recordtypedef:getcalldef()
# local hasfield = not isempty(_recordtypedef.fields)
# if calldef or hasfield then
  <table class="w3-table">
# if calldef then
    <tr>
    <td class="name"><p>$( purelinkto(calldef,_recordtypedef) )</p></td>
    <td class="summary">$( format(calldef.shortdescription) )</td>
    </tr>
# end
#  for _, item in sortedpairs( _recordtypedef.fields ) do
    <tr>
    <td class="name"><p>$( purelinkto(item) )</p></td>
    <td class="summary">$( format(item.shortdescription) )</td>
    </tr>
#   end
  </table>
# end
# ]]
