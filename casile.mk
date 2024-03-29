LANGUAGE = en
FORMATS = pdfs epub
LAYOUTS = a5trim-paperback
HIDPI = $(call scale,600)
SCALE = 8

urlinfo = https://github.com/sile-typesetter/casile-demos

CICONFIG = .github/workflows/casile.yml

# Default paper weight is 60g, but for this demo project we're pretending to
# print on cardstock so the book has some heft without needing too many pages
PAPERWEIGHT = 300

# Simplify output directory to remove CaSILE's default project/branch nesting.
# The GH Actions demo uses an artifact uploader that likes things simpler.
DISTDIR = $(PROJECT)$(subst /,-,$(call versioninfo))
