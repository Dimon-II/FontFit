# FontFit
SVG-font modification tool: auto-kerning and glyph aligning

The "whole big Internet" there was only one free program for adding colored glyphs, and it has no scaling... 
OpenType SVG Font Editor https://www.microsoft.com/store/apps/9nj7k9jx60p1 
(already slightly modified by a friend elricbk https://github.com/elricbk/OpenType-SVG-Font-Editor/releases) 

New feature of my utility is a companion to this program that allows you to visually change the size and position of glyphs. Through export-import of all glyphs.

1. Create svg-font from ttf (via FontForge, Glyphrstudio or other tool)
2. Export all glyphs using OT-SVG editor
3. Open svg font by my tool
4. Set folder of color svg
5. working...
- set any base glyph to aligning
- check right - what you want to see and edit (font's monochrome glyphs or svg version)
- select your glyphs (multiselect possible)
- align and resize

If you fix only colored glyphs - just import into OT-Svg after saving, but after  all you need recreate ttf from SVG or open svg-font in second fonforge window and copy modified letters to original font
and import using OTSvg after saving

- also you can change right edge and letter size, (show and edit glyph)

