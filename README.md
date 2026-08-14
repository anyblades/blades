# 🥷 *Bl*ades &nbsp;![][B_NPM]

[B_NPM]: https://img.shields.io/npm/v/@anyblades/blades?label=&color=white

<!--section:summary-->

<h1><mark>Minimal CSS Framework</mark> <small>for</small> Semantic HTML</h1>

<big>Fully compatible and actively maintained successor to [Pico CSS](//blades.ninja/css/pico/).</big>

Introduces [float labels](//blades.ninja/css/float-label/), [breakout container](//blades.ninja/css/breakout/) and other modern, opt-out [helpers](//blades.ninja/#docs).
Simply switch `pico.css` to `blades.css` OR use `blades.standalone.css` with other frameworks.

<nav>
  <a href="//blades.ninja/css/" role="button">Get started <i>✨</i></a>
  <b hidden>|</b>
  <a href="//blades.ninja/css/standalone/" role="button" class="outline">
    Standalone <i><i class="fa-brands fa-tailwind-css"></i><i class="fa-brands fa-bootstrap"></i></i>
  </a>
</nav>

<!--section:gh-only-->

---

## Quick start

<!--section:install-all,install--><!-- for https://blades.ninja/css/ and https://blades.ninja/css/standalone/ -->

<big>There are 4 ways to get started:</big>

### <mark>A.</mark> Install manually

[Download CSS archive](https://github.com/anyblades/blades/archive/refs/heads/main.zip) and link `css/blades.css` in the `<head>` of your website.

```html
<link rel="stylesheet" href="css/blades.css" />
```

### <mark>B.</mark> Usage from CDN

<!--prettier-ignore-->
```html
<link rel="stylesheet" href="
  https://cdn.jsdelivr.net/npm/@anyblades/blades@3/css/blades.min.css
"/>
```

Live example: https://github.com/pallets/website/blob/main/src/pallets/templates/layout.html

Full list of CSS files available on CDN: https://cdn.jsdelivr.net/npm/@anyblades/blades@3/css/

### <mark>C.</mark> Install with NPM

```sh
npm install @anyblades/blades
```

Then, `@import` Blades into your CSS file:

```css
@import "@anyblades/blades";
```

<div><hr></div>

Alternatively, import [standalone](//blades.ninja/css/standalone/) Blades CSS sources only (without underlying [Pico CSS](//blades.ninja/css/pico/) base styles):

```css
@import "@anyblades/blades/standalone";
```

Live example using <i class="fa-brands fa-tailwind-css"></i> Tailwind: https://github.com/anyblades/buildawesome-micro-starters/blob/main/tailwind/styles.css

### <mark>D.</mark> Official starters

- [11ty / Build Awesome Micro-Starter[s]](https://micro.build.blades.ninja/),
  including the best [Content-First Starter](//content.build.blades.ninja/)
- [Grav CMS v2](https://getgrav.org/migrate-to-2#:~:text=blades) uses Blades CSS by default
  ([Quark2 theme](//github.com/getgrav/grav-theme-quark2#quark-2-theme:~:text=blades)
  & [Devtools plugin](//github.com/getgrav/grav-plugin-devtools#theme-scaffolding:~:text=blades))

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

<!--section:install-all-->

#### Standalone versions

<!--section:install-all,standalone-->

Most of internal Blades CSS modules are available as standalone helpers, giving you flexibility to use them with other CSS frameworks:

| Module                                                                              | CDN                                                                            | Import from NPM                                                                 |
| ----------------------------------------------------------------------------------- | ------------------------------------------------------------------------------ | ------------------------------------------------------------------------------- |
| [Breakout container](/css/breakout/)                                                | https://cdn.jsdelivr.net/npm/@anyblades/blades@3/css/breakout.min.css          | N/A                                                                             |
| [Link icon](/css/link-icon/)                                                        | https://cdn.jsdelivr.net/npm/@anyblades/blades@3/css/link-icon.min.css         | N/A                                                                             |
| [Responsive table](/css/responsive-table/)                                          | https://cdn.jsdelivr.net/npm/@anyblades/blades@3/css/responsive-table.min.css  | N/A                                                                             |
| [Float labels](/css/float-label/) <br> https://github.com/anyblades/float-label-css | https://cdn.jsdelivr.net/npm/@anyblades/blades@3/css/float-label.min.css       | `npm install @anyblades/blades` <br> `@import "@anyblades/blades/float-label";` |
| [All above together](/css/standalone/)                                              | https://cdn.jsdelivr.net/npm/@anyblades/blades@3/css/blades.standalone.min.css | `npm install @anyblades/blades` <br> `@import "@anyblades/blades/standalone";`  |
| [Reset/normalizer](/css/pico/) <br> https://github.com/anyblades/pico               | https://cdn.jsdelivr.net/npm/@anyblades/pico@3/css/pico.min.css                | `npm install @anyblades/pico` <br> `@import "@anyblades/pico";`                 |
| [Experimental "ninja" add-ons](/css/ninja/)                                         | https://cdn.jsdelivr.net/npm/@anyblades/blades@3/css/blades.ninja.min.css      | `npm install @anyblades/blades` <br> `@import "@anyblades/blades/ninja";`       |

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

## <sup style>Featured by</sup>

- [getgrav.org](https://getgrav.org/migrate-to-2#:~:text=blades)
- [@11ty/buildawesome](https://bsky.app/profile/11ty.dev/post/3mp75r53ccv2b) [↗](https://mastodon.social/@11ty@neighborhood.11ty.dev/116816881367741413)
- [sveltiacms.app](https://sveltiacms.app/en/docs/start#:~:text=anyblades) <!--Z-A-->
- [libhunt.com](https://www.libhunt.com/r/blades)
- [context7.com](https://context7.com/anyblades/blades)
- [awesome-css](https://github.com/uhub/awesome-css)
- [awesome-css-frameworks](https://github.com/gabrielizalo/awesome-css-frameworks-and-ui-libraries/tree/master/Lightweight)
- [@pauleveritt](https://fosstodon.org/@pauleveritt/116387278969347700)
- [@cantdutchthis](https://news.ycombinator.com/item?id=48729467)

<!--{.markerless .columns}-->
<!--[hostfurl.com, @johnheenan]-->

## <sup style>Credits</sup>

- https://picocss.com/ for [inspiration](//blades.ninja/css/pico/)
- https://11ty.dev/ for site generation

<!--{.markerless}-->
