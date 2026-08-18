# 🥷 *Bl*ades &nbsp;![][NPM_V]

[NPM_V]: https://img.shields.io/npm/v/@anyblades/blades?label=&color=darkslategray

<!--section:summary-->

<h1><b class="mark-brand">Minimal CSS Framework</b> <small>for</small> Semantic HTML</h1>

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

## Starter HTML template <!-- from /index.html -->

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

### Dynamic templates

[Available for Nunjucks, Twig and Liquid ↗](https://blades.ninja/tpl/)<!--{role=button .outline}-->

<!--section:gh-only-->

---

## Documentation

<!-- ToC as is from https://blades.ninja/#docs -->
<ul class="columns">

<li>
<strong><a href="//blades.ninja/css/">Get started</a></strong>
<ul><li><a href="//blades.ninja/css/">Quick start</a></li>
<li><a href="//blades.ninja/css/color-schemes/">Dark scheme</a></li>
<li><a href="//blades.ninja/css/variables/">CSS variables</a></li>
<li><a href="//blades.ninja/css/conditional/">Conditional styling <mark>NEW</mark></a></li>
<li><a href="//blades.ninja/css/standalone/">Standalone version <mark>NEW</mark></a></li></ul>
</li>

<li>
<strong><a href="//blades.ninja/css/layout/">Layout</a></strong>
<ul><li><a href="//blades.ninja/css/landmarks-section/">Landmarks &amp; section</a></li>
<li><a href="//blades.ninja/css/container/">Container</a></li>
<li><a href="//blades.ninja/css/breakout/">Breakout container <mark>NEW</mark></a></li>
<li><a href="//blades.ninja/css/grid/">Grid</a></li>
<li><a href="//blades.ninja/css/columns/">Text columns <mark>NEW</mark></a></li></ul>
</li>

<li>
<strong><a href="//blades.ninja/css/content/">Content</a></strong>
<ul><li><a href="//blades.ninja/css/typography/">Typography <mark>UPD</mark></a></li>
<li><a href="//blades.ninja/css/link/">Link</a></li>
<li><a href="//blades.ninja/css/button/">Button</a></li>
<li><a href="//blades.ninja/css/icon/"><code style="padding: 0">‹i›</code>con helper <mark>NEW</mark></a></li>
<li><a href="//blades.ninja/css/list/">List <mark>UPD</mark></a></li>
<li><a href="//blades.ninja/css/table/">Table <mark>UPD</mark></a></li>
<li><a href="//blades.ninja/css/responsive-table/">Responsive table <mark>NEW</mark></a></li>
<li><a href="//blades.ninja/css/code/">Code blocks <mark>NEW</mark></a></li></ul>
</li>

<li>
<strong><a href="//blades.ninja/css/forms/">Forms</a></strong>
<ul><li><a href="//blades.ninja/css/forms/">Overview</a></li>
<li><a href="//blades.ninja/css/input/">Input</a></li>
<li><a href="//blades.ninja/css/textarea/">Textarea</a></li>
<li><a href="//blades.ninja/css/select/">Select</a></li>
<li><a href="//blades.ninja/css/checkboxes/">Checkboxes</a></li>
<li><a href="//blades.ninja/css/radios/">Radios</a></li>
<li><a href="//blades.ninja/css/switch/">Switch</a></li>
<li><a href="//blades.ninja/css/range/">Range</a></li>
<li><a href="//blades.ninja/css/float-label/">Float labels <mark>NEW</mark></a></li></ul>
</li>

<li>
<strong><a href="//blades.ninja/css/components/">Components</a></strong>
<ul><li><a href="//blades.ninja/css/accordion/">Accordion</a></li>
<li><a href="//blades.ninja/css/card/">Card</a></li>
<li><a href="//blades.ninja/css/dropdown/">Dropdown</a></li>
<li><a href="//blades.ninja/css/group/">Group</a></li>
<li><a href="//blades.ninja/css/loading/">Loading</a></li>
<li><a href="//blades.ninja/css/modal/">Modal</a></li>
<li><a href="//blades.ninja/css/nav/">Navigation</a></li>
<li><a href="//blades.ninja/css/progress/">Progress</a></li>
<li><a href="//blades.ninja/css/tooltip/">Tooltip</a></li>
<li><a href="//blades.ninja/css/timeline/">Timeline <mark>NEW</mark></a></li>
<li><a href="//blades.ninja/css/jump/">Jump to... <mark>NEW</mark></a></li>
<li><a href="//blades.ninja/css/utils/">Utilities <mark>NEW</mark></a></li></ul>
</li>

<li>
<strong><a href="//blades.ninja/more/">More</a></strong>
<ul><li><a href="//blades.ninja/css/pico/">Pico CSS <mark>NEW</mark> <sub style="">(underlying fork)</sub></a></li>
<li><a href="//blades.ninja/css/ninja/">Ninja CSS <mark>NEW</mark> <sub style="">(experimental add-ons)</sub></a></li>
<li><a href="//blades.ninja/html/">Dynamic templates <mark>NEW</mark></a></li>
<li><a href="//blades.ninja/html/base/">Base HTML <mark>NEW</mark></a></li>
<li><a href="//blades.ninja/html/links/">Links snippet <mark>NEW</mark></a></li>
<li><a href="//blades.ninja/html/sitemap/">Sitemap XML <mark>NEW</mark></a></li>
<li><a href="//blades.ninja/css/frameworks/">CSS frameworks <mark>2026–2040</mark></a></li></ul>
</li>

</ul>

---

## <sup style>Trusted by</sup><!-- DRY with featured -->

- <b hidden>🐍</b> [Flask & Jinja community website](https://palletsprojects.com/)

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
