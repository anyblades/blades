# 🥷 *Bl*ades &nbsp;![][B_NPM]

[B_NPM]: https://img.shields.io/npm/v/@anyblades/blades?label=&color=white

<!--section:summary-->

<h1><mark>Minimal CSS Framework</mark> <small>for</small> Semantic HTML</h1>

<big>Fully compatible and actively maintained successor to [Pico CSS](//blades.ninja/css/pico/).</big>

Introduces [float labels](//blades.ninja/css/float-label/), [breakout container](//blades.ninja/css/breakout/) and other modern, opt-out [helpers](//blades.ninja/#docs).
Simply switch `pico.css` to `blades.css` OR use `blades.standalone.css` with other frameworks.

<nav>
  <a href="//blades.ninja/css/" role="button">Get started &nbsp;✨</a>
  <span hidden>•</span>
  <a href="//blades.ninja/css/standalone/" role="button" class="outline">
    Standalone <i class="fa-brands fa-tailwind-css"></i><i class="fa-brands fa-bootstrap"></i>
  </a>
</nav>

<!--section:gh-only-->

---

## Quick start

<!--section:install--><!-- for https://blades.ninja/css/ and https://blades.ninja/css/standalone/ -->

<big>There are 4 ways to get started:</big>

### <mark>A.</mark> Install manually

[Download CSS archive](https://github.com/anyblades/blades/archive/refs/heads/main.zip) and link `css/blades.css` in the `<head>` of your website.

```html
<link rel="stylesheet" href="css/blades.css" />
```

---

### <mark>B.</mark> Usage from CDN

<!--prettier-ignore-->
```html
<link rel="stylesheet" href="
  https://cdn.jsdelivr.net/npm/@anyblades/blades@2/css/blades.min.css
"/>
```

Live example: https://github.com/pallets/website/blob/main/src/pallets/templates/layout.html

Full list of CSS files available on CDN: https://cdn.jsdelivr.net/npm/@anyblades/blades@2/css/

---

### <mark>C.</mark> Starter projects

- https://subtle.blades.ninja/ 11ty micro-starter
- https://start.11ty.blades.ninja/ 7-in-1 starter (including Tailwind)
- https://getgrav.org/ v2 now features Blades CSS in its default theme (Quark2)
- https://jekyll.blades.ninja/ starter <!--{.faded}-->

---

### <mark>D.</mark> Install with NPM

```sh
npm install @anyblades/blades
```

You can use precompiled Pico+Blades CSS (same as CDN version):

<!--prettier-ignore-->
```html
<link rel="stylesheet" href="
  node_modules/@anyblades/blades/css/blades.css
" />
```

<div><hr></div>

Or import [standalone](//blades.ninja/css/standalone/) Blades CSS sources (without [Pico CSS](//blades.ninja/css/pico/)):

```css
@import "@anyblades/blades/standalone";
```

Live example using <i class="fa-brands fa-tailwind-css"></i> Tailwind: https://github.com/anyblades/buildawesome-starters/blob/main/site-tailwind/styles.css

<div><hr></div>

To install and import both Pico+Blades CSS sources at once:

```sh
npm install @anyblades/pico @anyblades/blades
```

```css
@import "@anyblades/pico";
@import "@anyblades/blades/standalone";
```

This is exactly how *Bl*ades CSS is built itself: https://github.com/anyblades/blades/blob/main/src/blades.css

---

### <sup style>Appendix</sup>

#### Starter HTML template <!-- from index.html -->

```html
<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta name="color-scheme" content="light dark" />
    <link rel="stylesheet" href="css/blades.css" />
    <title>Hello world!</title>
  </head>
  <body>
    <main class="container">
      <h1>Hello world!</h1>
    </main>
  </body>
</html>
```

<!--section:install-->

#### Standalone versions

<!--section:install,standalone-->

Most of internal Blades CSS modules are available as standalone helpers, giving you flexibility to use them with other CSS frameworks:

| Module                                                                              | CDN                                                                            | Import from NPM                                                                 |
| ----------------------------------------------------------------------------------- | ------------------------------------------------------------------------------ | ------------------------------------------------------------------------------- |
| [Breakout container](/css/breakout/)                                                | https://cdn.jsdelivr.net/npm/@anyblades/blades@2/css/breakout.min.css          | N/A                                                                             |
| [Link icon](/css/link-icon/)                                                        | https://cdn.jsdelivr.net/npm/@anyblades/blades@2/css/link-icon.min.css         | N/A                                                                             |
| [Responsive table](/css/responsive-table/)                                          | https://cdn.jsdelivr.net/npm/@anyblades/blades@2/css/responsive-table.min.css  | N/A                                                                             |
| [Float labels](/css/float-label/) <br> https://github.com/anyblades/float-label-css | https://cdn.jsdelivr.net/npm/@anyblades/blades@2/css/float-label.min.css       | `npm install @anyblades/blades` <br> `@import "@anyblades/blades/float-label";` |
| [All above together](/css/standalone/)                                              | https://cdn.jsdelivr.net/npm/@anyblades/blades@2/css/blades.standalone.min.css | `npm install @anyblades/blades` <br> `@import "@anyblades/blades/standalone";`  |
| [Reset/normalizer](/css/pico/) <br> https://github.com/anyblades/pico               | https://cdn.jsdelivr.net/npm/@anyblades/pico@2/css/pico.min.css                | `npm install @anyblades/pico` <br> `@import "@anyblades/pico";`                 |
| [Experimental "ninja" add-ons](/css/ninja/)                                         | https://cdn.jsdelivr.net/npm/@anyblades/blades@2/css/blades.ninja.min.css      | `npm install @anyblades/blades` <br> `@import "@anyblades/blades/ninja";`       |

Live examples:

- https://www.mattanger.dev/ (Link icon via CDN)

<!--section:gh-only-->

## Documentation

<!-- ToC as is from https://blades.ninja/#docs -->
<ul class="columns">
  
  <li>
    <strong><a href="/">Get started</a></strong>
    <ul><li><a href="https://blades.ninja/css/">Quick start</a></li>
<li><a href="https://blades.ninja/css/color-schemes/">Color schemes</a></li>
<li><a href="https://blades.ninja/css/variables/">CSS variables</a></li>
<li><a href="https://blades.ninja/css/standalone/">Standalone version <mark>NEW</mark></a></li>
<li><a href="https://blades.ninja/css/pico/">Pico fork <img src="https://img.shields.io/github/v/release/anyblades/pico?label=&amp;color=white"> <mark>NEW</mark></a></li>
<li><a href="https://blades.ninja/css/frameworks/">Frameworks</a></li></ul>
  </li>
  
  <li>
    <strong><a href="/css/layout/">Layout</a></strong>
    <ul><li><a href="https://blades.ninja/css/container/">Container</a></li>
<li><a href="https://blades.ninja/css/breakout/">Breakout container <mark>NEW</mark></a></li>
<li><a href="https://blades.ninja/css/landmarks-section/">Landmarks &amp; section</a></li>
<li><a href="https://blades.ninja/css/grid/">Grid</a></li>
<li><a href="https://blades.ninja/css/columns/">Text columns <mark>NEW</mark></a></li>
<li><a href="https://blades.ninja/css/overflow-auto/">Overflow auto</a></li></ul>
  </li>
  
  <li>
    <strong><a href="/css/content/">Content</a></strong>
    <ul><li><a href="https://blades.ninja/css/typography/">Typography</a></li>
<li><a href="https://blades.ninja/css/heading/">Heading helpers <mark>NEW</mark></a></li>
<li><a href="https://blades.ninja/css/link/">Link</a></li>
<li><a href="https://blades.ninja/css/link-icon/">Link icon <mark>NEW</mark></a></li>
<li><a href="https://blades.ninja/css/button/">Button</a></li>
<li><a href="https://blades.ninja/css/table/">Table <mark>UPD</mark></a></li>
<li><a href="https://blades.ninja/css/responsive-table/">Responsive table <mark>NEW</mark></a></li>
<li><a href="https://blades.ninja/css/list/">List helpers <mark>NEW</mark></a></li>
<li><a href="https://blades.ninja/css/code/">Code formatting <mark>NEW</mark></a></li></ul>
  </li>
  
  <li>
    <strong><a href="/css/forms/">Forms</a></strong>
    <ul><li><a href="https://blades.ninja/css/forms/">Overview</a></li>
<li><a href="https://blades.ninja/css/input/">Input</a></li>
<li><a href="https://blades.ninja/css/textarea/">Textarea</a></li>
<li><a href="https://blades.ninja/css/select/">Select</a></li>
<li><a href="https://blades.ninja/css/checkboxes/">Checkboxes</a></li>
<li><a href="https://blades.ninja/css/radios/">Radios</a></li>
<li><a href="https://blades.ninja/css/switch/">Switch</a></li>
<li><a href="https://blades.ninja/css/range/">Range</a></li>
<li><a href="https://blades.ninja/css/float-label/">Float labels <mark>NEW</mark></a></li></ul>
  </li>
  
  <li>
    <strong><a href="/css/components/">Components</a></strong>
    <ul><li><a href="https://blades.ninja/css/accordion/">Accordion</a></li>
<li><a href="https://blades.ninja/css/card/">Card</a></li>
<li><a href="https://blades.ninja/css/dropdown/">Dropdown</a></li>
<li><a href="https://blades.ninja/css/group/">Group</a></li>
<li><a href="https://blades.ninja/css/loading/">Loading</a></li>
<li><a href="https://blades.ninja/css/modal/">Modal</a></li>
<li><a href="https://blades.ninja/css/navigation/">Navigation</a></li>
<li><a href="https://blades.ninja/css/progress/">Progress</a></li>
<li><a href="https://blades.ninja/css/tooltip/">Tooltip</a></li>
<li><a href="https://blades.ninja/css/jump/">Jump to... <mark>NEW</mark></a></li>
<li><a href="https://blades.ninja/css/utils/">Utilities <mark>NEW</mark></a></li></ul>
  </li>
  
  <li>
    <strong><a href="/html/">Templates <mark>NEW</mark></a></strong>
    <ul><li><a href="https://blades.ninja/html/">Overview</a></li>
<li><a href="https://blades.ninja/html/starter/">HTML starter <mark>NEW</mark></a></li>
<li><a href="https://blades.ninja/html/links/">Links <mark>NEW</mark></a></li>
<li><a href="https://blades.ninja/html/sitemap/">Sitemap <mark>NEW</mark></a></li></ul>
  </li>
  
</ul>

---

## <sup style>Trusted by</sup><!--DRY with featured-->

- https://github.com/pallets/website 🐍

<!--section:info-->

## <sup style>Featured by</sup><!--Z-A-->

- [sveltiacms.app](https://sveltiacms.app/en/docs/start#:~:text=anyblades)
- [getgrav.org](https://getgrav.org/migrate-to-2#:~:text=blades) [↗](https://github.com/getgrav/grav-theme-quark2)
- [dummy.my/frameworks](https://dummy.my/frameworks/)
- [awesome-css-frameworks _@gabrielizalo_](https://github.com/gabrielizalo/awesome-css-frameworks-and-ui-libraries/tree/master/Lightweight)
- [awesome-css _@uhub_](https://github.com/uhub/awesome-css)
- [11ty.dev](https://www.11ty.dev/docs/starter/#:~:text=blades) [↗](https://www.11ty.dev/docs/plugins/community/#:~:text=blades)
- [@pauleveritt](https://fosstodon.org/@pauleveritt/116387278969347700)
- [@johnheenan](https://github.com/johnheenan/minform#css-and-performance)
- [@githubsignals](https://www.youtube.com/shorts/FxtvnBCse8w) [↗](https://www.instagram.com/reel/DXOSTpajG4f/)

<!--{.markerless .columns}-->

## <sup style>Credits</sup>

- https://picocss.com/ for [inspiration](//blades.ninja/css/pico/)
- https://11ty.dev/ for [site generation](//github.com/anyblades/blades.ninja)

<!--{.markerless}-->
