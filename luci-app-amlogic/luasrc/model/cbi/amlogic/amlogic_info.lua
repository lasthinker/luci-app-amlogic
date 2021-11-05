local fs = require "luci.fs"
local http = require "luci.http"
local DISP = require "luci.dispatcher"
local b

--SimpleForm for Info
b = SimpleForm("amlogic", nil)
b.title = translate("Amlogic Service")
b.description = translate("Supports management of Amlogic s9xxx boxes.")
b.reset = false
b.submit = false
b:section(SimpleSection).template  = "amlogic/other_info"

return b
