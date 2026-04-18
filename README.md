# 🥷 *Bl*ades

<!--section:summary-->

<hgroup>Framework-agnostic,<wbr> class-light CSS<a href="https://blades.ninja/html/" style="padding: 0"><i>⁺</i></a> blade kit.</hgroup>

<big>Use with Pico, Simple, Tailwind, or any other CSS reset/framework.</big>

![](https://img.shields.io/github/v/release/anyblades/blades?label=&color=darkslategray&style=for-the-badge)
[![](https://img.shields.io/badge/Code-gainsboro?logo=github&logoColor=black&style=for-the-badge)](https://github.com/anyblades/blades)
[![](https://img.shields.io/github/stars/anyblades/blades?label=Star&labelColor=gainsboro&color=silver&style=for-the-badge)](https://github.com/anyblades/blades)

<!--section:docs-->

## [Documentation <i><small>→</small></i>](https://blades.ninja/css/)

<!--section:docs,toc-->
<!-- ToC from https://blades.ninja/css/ with `href="/css/#` instead of `href="#` -->
<ul class="columns"><li><a href="/css/#install" tabindex="-1">Install</a></li>
<li><a href="/css/#layout" tabindex="-1">Layout</a><ul><li><a href="/css/#breakout">Breakout layout</a></li>
<li><a href="/css/#auto-columns" tabindex="-1">Auto-columns</a></li>
<li><a href="/css/#jump-to-top" tabindex="-1">Jump to top</a></li></ul></li>
<li><a href="/css/#content" tabindex="-1">Content</a><ul><li><a href="/css/#link-icon">Link icon</a></li>
<li><a href="/css/#heading-anchors" tabindex="-1">Heading anchors</a></li>
<li><a href="/css/#list-markers" tabindex="-1">List markers</a></li>
<li><a href="/css/#unlist" tabindex="-1">Unlist</a></li>
<li><a href="/css/#code" tabindex="-1">Code</a></li></ul></li>
<li><a href="/css/#table" tabindex="-1">Table</a><ul><li><a href="/css/#responsive-table">Responsive table</a></li>
<li><a href="/css/#column-expanders" tabindex="-1">Column expanders</a></li>
<li><a href="/css/#borderless-table" tabindex="-1">Borderless table</a></li></ul></li>
<li><a href="/css/#forms" tabindex="-1">Forms</a><ul><li><a href="/css/#float-label">Float label CSS</a></li></ul></li>
<li><a href="/css/#utilities" tabindex="-1">Utilities</a><ul><li><a href="/css/#auto-dark" tabindex="-1">Auto-dark</a></li>
<li><a href="/css/#faded" tabindex="-1">Faded</a></li></ul></li>
<li><a href="/css/#more" tabindex="-1">More</a><ul><li><a href="/css/#pico">Pico+Blades CSS ✨🥷</a></li>
<li><a href="/css/#html">Blades HTML templates</a></li>
<li><a href="/css/#jekyll">Blades for Jekyll</a></li></ul></li></ul>
<!--section:gh-only-->

---

## Install

<!--section:install-->

###### <mark>Via CDN</mark>

<!--prettier-ignore-->
```html
<link rel="stylesheet" href="
  https://cdn.jsdelivr.net/npm/@anyblades/blades@0/assets/blades.min.css
">
```

###### <mark>Via npm</mark>

```sh
npm install @anyblades/blades
```

Then in your `.css`:

```css
@import "@anyblades/blades";
```

Living example: https://github.com/anyblades/build-awesome-starter/blob/main/_styles/styles.css

<!--section:install,install-preconf-->

###### <mark>Preconfigured</mark>

- Pico: https://github.com/anyblades/pico
- 11ty: https://github.com/anyblades/build-awesome-starter
- Jekyll: https://github.com/anyblades/bladeswitch or [as a theme](https://blades.ninja/jekyll/#install)

<!--section:install-->

###### Theme <small>(optional)</small>

`blades.css` includes default minimal styling; use `blades.core.css` to opt-out.

<!--section:docs-->

---

## Showcase

<article class="breakout-item-max">

https://any.digital/<!--{data-tooltip="Pico ✨+🥷 Blades"}-->
https://build.blades.ninja/<!--{data-tooltip="Tailwind 💨+🥷 Blades"}-->
https://bladeswitch.com/<!--{data-tooltip="Pico ✨+🥷 Blades"}-->
https://minform.hostfurl.com/<!--{data-tooltip="Pico ✨+🥷 Blades"}-->
[<i class="fa-solid fa-plus faded"></i>](https://github.com/anyblades/blades/edit/main/README.md)<!--{data-tooltip="add yours!" data-placement=bottom}-->

</article>

##### Featured by: <!--A-Z-->

- [https://fosstodon.org/@pauleveritt](https://fosstodon.org/@pauleveritt/116387278969347700)
- [https://github.com/@gabrielizalo/awesome-css](https://github.com/gabrielizalo/awesome-css-frameworks-and-ui-libraries/tree/master/Lightweight)
- [https://github.com/@uhub/awesome-css](https://github.com/uhub/awesome-css)
- [https://github.com/awesome-11ty-build-awesome](https://github.com/anyblades/awesome-11ty-build-awesome)
- [https://github.com/classless-css](https://github.com/dbohdan/classless-css#components) Float Label by *Bl*ades
- [https://sveltiacms.app/docs/start](https://sveltiacms.app/en/docs/start#starter-templates) with *Bl*ades

<!--{.unlist .columns}-->

##### Credits:

- https://picocss.com/ for inspiration
- https://11ty.dev/ for build power

<!--{.unlist .columns}-->
