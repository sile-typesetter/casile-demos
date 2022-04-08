SILE.require("packages/lorem")

SILE.registerCommand("class:dedication", function(options, content)
  SILE.call("hbox")
  SILE.call("vfill")
  SILE.call("center", {}, function()
    SILE.call("font", { size = "20pt", style = "Italic" }, content)
  end)
  SILE.call("vfill")
end)

SILE.registerCommand("myappendix", function (options, content)
  SILE.typesetter:typeset("Just a demo, no actual appendix")
end)

SILE.registerCommand("padpage", function (options, _)
	local pages = SU.required(options, "pages", "padpage")
	for i = 1, pages do
		SILE.process({ "This page used to pad out a book length document" })
		SILE.call("lorem", { words = 10 })
		SILE.call("vfill")
	end
end)
