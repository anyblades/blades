# 🥷 *Bl*ades &nbsp;![](https://img.shields.io/github/v/release/anyblades/blades?label=&color=darkslategray)

<!--section:summary-->

<h1><mark>Minimal CSS&nbsp;Framework</mark> <wbr> for Semantic&nbsp;HTML</h1>

<big>Fully compatible and actively maintained successor to Pico CSS.</big>

Includes [Float labels](https://blades.ninja/css/float-label/), [Breakout layout](https://blades.ninja/css/breakout/) and other modern helpers. Simply switch `pico.css` to `blades.css` or add `blades.standalone.css` to other frameworks.

<!--section:gh-only-->

---

## Quick start

<!--section:install--><!-- for https://blades.ninja/css/ and https://blades.ninja/css/standalone/ -->

There are 4 ways to get started:

### Install manually

[Download *Bl*ades](https://github.com/anyblades/pico/archive/refs/heads/main.zip) and link `assets/blades.css` in the `<head>` of your website.

```html
<link rel="stylesheet" href="assets/blades.css" />
```

### Usage from CDN

Alternatively, you can use [jsDelivr CDN](https://cdn.jsdelivr.net/npm/@anyblades/blades@0/) to link `blades.min.css`:

<!--prettier-ignore-->
```html
<link rel="stylesheet" href="
  https://cdn.jsdelivr.net/npm/@anyblades/blades@0/assets/blades.min.css
"/>
```

Living examples: https://github.com/anyblades/subtle/blob/main/.subtle/package.json

### Install with NPM

```sh
npm install @anyblades/pico # optional
npm install @anyblades/blades
```

Then, import [Pico and] *Bl*ades into your CSS:

```css
@import "@anyblades/pico"; /* optional */
@import "@anyblades/blades"; /* can be used standalone */
```

Living example: https://github.com/anyblades/build-awesome-starter/blob/main/_styles/styles.css

### Starter HTML template <!-- from index.html -->

```html
<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta name="color-scheme" content="light dark" />
    <link rel="stylesheet" href="assets/blades.css" />
    <title>Hello world!</title>
  </head>
  <body>
    <main class="container">
      <h1>Hello world!</h1>
    </main>
  </body>
</html>
```

<!--section:gh-only-->

## Documentation

<!-- ToC as is from https://blades.ninja/#docs -->
<ul class="columns">
  
  <li>
    <strong><a href="/">Get started</a></strong>
    <ul><li><a href="https://blades.ninja/css/">Quick start</a></li>
<li><a href="https://blades.ninja/css/color-schemes/">Color schemes</a></li>
<li><a href="https://blades.ninja/css/variables/">CSS variables</a></li>
<li><a href="https://blades.ninja/css/standalone/"><em>St</em>andalone version <mark>NEW</mark></a></li>
<li><a href="https://blades.ninja/css/pico/">Pico fork <img src="https://img.shields.io/github/v/release/anyblades/pico?label=&amp;color=white"> <mark>NEW</mark></a></li>
<li><a href="https://blades.ninja/examples/">Examples</a></li>
<li><a href="https://blades.ninja/css/frameworks/">Frameworks</a></li></ul>
  </li>
  
  <li>
    <strong><a href="/css/layout/">Layout</a></strong>
    <ul><li><a href="https://blades.ninja/css/container/">Container</a></li>
<li><a href="https://blades.ninja/css/breakout/"><em>Br</em>eakout container <mark>NEW</mark></a></li>
<li><a href="https://blades.ninja/css/landmarks-section/">Landmarks &amp; section</a></li>
<li><a href="https://blades.ninja/css/grid/">Grid</a></li>
<li><a href="https://blades.ninja/css/columns/"><em>Te</em>xt columns <mark>NEW</mark></a></li>
<li><a href="https://blades.ninja/css/overflow-auto/">Overflow auto</a></li></ul>
  </li>
  
  <li>
    <strong><a href="/css/content/">Content</a></strong>
    <ul><li><a href="https://blades.ninja/css/typography/">Typography</a></li>
<li><a href="https://blades.ninja/css/heading/"><em>H</em>eading helpers <mark>NEW</mark></a></li>
<li><a href="https://blades.ninja/css/link/">Link</a></li>
<li><a href="https://blades.ninja/css/link-icon/">Link icon <mark>NEW</mark></a></li>
<li><a href="https://blades.ninja/css/button/">Button</a></li>
<li><a href="https://blades.ninja/css/table/">Table</a></li>
<li><a href="https://blades.ninja/css/table-helpers/"><em>T</em>able helpers <mark>NEW</mark></a></li>
<li><a href="https://blades.ninja/css/responsive-table/">Responsive table <mark>NEW</mark></a></li>
<li><a href="https://blades.ninja/css/list/"><em>L</em>ist helpers <mark>NEW</mark></a></li>
<li><a href="https://blades.ninja/css/code/"><em>C</em>ode formatting <mark>NEW</mark></a></li></ul>
  </li>
  
  <li>
    <strong><a href="/css/forms/">Forms</a></strong>
    <ul><li><a href="https://blades.ninja/css/forms/overview/">Overview</a></li>
<li><a href="https://blades.ninja/css/forms/input/">Input</a></li>
<li><a href="https://blades.ninja/css/forms/textarea/">Textarea</a></li>
<li><a href="https://blades.ninja/css/forms/select/">Select</a></li>
<li><a href="https://blades.ninja/css/forms/checkboxes/">Checkboxes</a></li>
<li><a href="https://blades.ninja/css/forms/radios/">Radios</a></li>
<li><a href="https://blades.ninja/css/forms/switch/">Switch</a></li>
<li><a href="https://blades.ninja/css/forms/range/">Range</a></li>
<li><a href="https://blades.ninja/css/float-label/"><em>Fl</em>oat labels <mark>NEW</mark></a></li></ul>
  </li>
  
  <li>
    <strong><a href="/css/components/">Components</a></strong>
    <ul><li><a href="https://blades.ninja/css/accordion/">Accordion</a></li>
<li><a href="https://blades.ninja/css/card/">Card</a></li>
<li><a href="https://blades.ninja/css/dropdown/">Dropdown</a></li>
<li><a href="https://blades.ninja/css/group/">Group</a></li>
<li><a href="https://blades.ninja/css/loading/">Loading</a></li>
<li><a href="https://blades.ninja/css/modal/">Modal</a></li>
<li><a href="https://blades.ninja/css/nav/">Navigation</a></li>
<li><a href="https://blades.ninja/css/progress/">Progress</a></li>
<li><a href="https://blades.ninja/css/tooltip/">Tooltip</a></li>
<li><a href="https://blades.ninja/css/jump/"><em>Ju</em>mp to... <mark>NEW</mark></a></li>
<li><a href="https://blades.ninja/css/utils/"><em>Ut</em>ilities <mark>NEW</mark></a></li></ul>
  </li>
  
  <li>
    <strong><a href="/html/">Templates <mark>NEW</mark></a></strong>
    <ul><li><a href="https://blades.ninja/html/">Overview</a></li>
<li><a href="https://blades.ninja/html/starter/"><em>HTML</em> starter <mark>NEW</mark></a></li>
<li><a href="https://blades.ninja/html/links/"><em>L</em>inks <mark>NEW</mark></a></li>
<li><a href="https://blades.ninja/html/sitemap/"><em>S</em>itemap <mark>NEW</mark></a></li></ul>
  </li>
  
</ul>

---

<!--section:info-->

## <sup>Featured by</sup><!--A-Z-->

- [https://fosstodon.org/@pauleveritt](https://fosstodon.org/@pauleveritt/116387278969347700)
- [https://github.com/@gabrielizalo/awesome-css](https://github.com/gabrielizalo/awesome-css-frameworks-and-ui-libraries/tree/master/Lightweight)
- [https://github.com/@uhub/awesome-css](https://github.com/uhub/awesome-css)
- [https://github.com/awesome-11ty-build-awesome](https://github.com/anyblades/awesome-11ty-build-awesome)
- [https://github.com/classless-css#float-label](https://github.com/dbohdan/classless-css#components:~:text=Float%20Label)
- [https://sveltiacms.app/docs/start](https://sveltiacms.app/en/docs/start#starter-templates)
- [https://www.youtube.com/@githubsignals](https://www.youtube.com/shorts/FxtvnBCse8w)

<!--{.unlist .columns}-->

## <sup>Credits</sup>

- https://picocss.com/ for inspiration
- https://11ty.dev/ for build power

<!--{.unlist}-->
