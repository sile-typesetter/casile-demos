local base = require("packages.base")

local package = pl.class(base)
package._name = "fancy_book"

function package:_init()
  base._init(self)
  self:loadPackage("lorem")
end

function package:registerCommands ()

  self:registerCommand("class:dedication", function(_, content)
    SILE.call("hbox")
    SILE.call("vfill")
    SILE.call("center", {}, function()
      SILE.call("font", { size = "20pt", style = "Italic" }, content)
    end)
    SILE.call("vfill")
  end)

  self:registerCommand("myappendix", function (options, _)
    SILE.typesetter:typeset("Just a demo, no actual appendix")
  end)

  self:registerCommand("padpage", function (options, _)
    local pages = SU.required(options, "pages", "padpage")
    for i = 1, pages do
      SILE.process({ "This page used to pad out a book length document" })
      SILE.call("lorem", { words = 10 })
      SILE.call("vfill")
    end
  end)

end

return package
