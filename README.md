# blades<sup>✨</sup>

![][V] ![][NEXT_V] ![][LIC] [![][X]][X_URL] [![][B]][B_URL] [![][M]][M_URL] [![][D]][D_URL]

[V]: https://img.shields.io/npm/v/@anyblades/blades?label=&color=brightgreen
[NEXT_V]: https://img.shields.io/github/v/release/anyblades/blades?include_prereleases&label=^&labelColor=blue&color=blue
[LIC]: https://img.shields.io/badge/🄻_MIT-gray
[X]: https://img.shields.io/badge/83-white?logo=x&style=social
[X_URL]: https://x.com/BladesCSS
[B]: https://img.shields.io/bluesky/followers/blades.dev?label=
[B_URL]: https://bsky.app/profile/blades.dev
[M]: https://img.shields.io/mastodon/follow/117487235444867518?label=NEW
[M_URL]: https://mastodon.social/@BladesCSS
[D]: https://img.shields.io/badge/%23blades-white?logo=discord&style=social
[D_URL]: https://discord.gg/mg8f26C

![](https://trendshift.io/api/badge/trendshift/repositories/154122/daily?language=CSS)

<!--section:summary-->

<h1><span class="mark-brand">Minimal CSS Framework</span> <small>for</small> Semantic HTML</h1>

<big>Blades CSS is a modern drop&#8209;in successor to [Pico CSS](//picocss.com/docs/maintenance).</big>

Just switch `pico.css` to `blades.css`— and voilà!

<nav>
  <a href="//blades.dev/css/" role="button">Get started</a>
  <b hidden>&nbsp;•&nbsp;</b>
  <a href="//blades.dev/css/pico/" role="button" class="outline">Inspired by Pico ✨</a>
</nav>

<!--section:gh-only-->

---

## Quick start

<!--section:install-all,install-->

<big>There are 4 ways to get started:</big>

### <mark>A.</mark> Install manually

[Download CSS archive](https://github.com/anyblades/blades/archive/refs/heads/main.zip) and link `css/blades.css` in the `<head>` of your website.

```html
<link rel="stylesheet" href="css/blades.css" />
```

### <mark>B.</mark> Usage from CDN <!--{#cdn}-->

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

Alternatively, import only the parts you need, e.g. per page or per component. They come wrapped in `@layer blades`, so your unlayered styles win over them:

```css
@import "@anyblades/blades/variables";
@import "@anyblades/blades/layout/document";
@import "@anyblades/blades/content/typography";
@import "@anyblades/blades/components/card";
@import "@anyblades/blades/components/modal";
```

- `variables` and `layout/document` are the minimum; keep the same order as [src/pico/_index.css](https://github.com/anyblades/blades/blob/main/src/pico/_index.css).
- Some parts build on others, e.g. `components/modal` expects `components/card`, and `components/group` and `components/dropdown` expect `forms/basics` and `content/button`.
- See [Layered modules](//blades.dev/css/layered/) for the available parts, and for importing them from JavaScript in bundlers and component frameworks (SvelteKit, Next.js, Nuxt, Astro, …).
- See [package.json](https://github.com/anyblades/blades/blob/main/package.json) for a list of all exported parts.

### <mark>D.</mark> Official starters

- https://github.com/buildawesome-one/starter
- https://github.com/buildawesome-one/examples
- https://github.com/getgrav/grav-theme-quark2
- https://github.com/getgrav/grav-plugin-devtools

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

Using Nunjucks, Twig or Liquid? Check out the built-in [Base HTML templates](//blades.dev/tpl/html/) for each engine, ready to be used in your project.

<!--section:gh-only-->

---

## Documentation

If you know Pico — you already know Blades:

<!-- ToC as is from https://blades.dev/#docs -->
<ul class="columns">

<li>
<strong><a href="//blades.dev/css/">Get started</a></strong>
<ul><li><a href="//blades.dev/css/">Quick start</a></li>
<li><a href="//blades.dev/css/color-schemes/">Dark scheme</a></li>
<li><a href="//blades.dev/css/variables/">CSS variables</a></li>
<li><a href="//blades.dev/css/layered/">Layered modules <mark>NEW</mark></a></li>
<li><a href="//blades.dev/css/conditional/">Conditional styling <mark>NEW</mark></a></li>
<li><a href="//blades.dev/css/standalone/">Standalone version <mark>NEW</mark></a></li></ul>
</li>

<li>
<strong><a href="//blades.dev/css/layout/">Layout</a></strong>
<ul><li><a href="//blades.dev/css/landmarks-section/">Landmarks &amp; section</a></li>
<li><a href="//blades.dev/css/container/">Container</a></li>
<li><a href="//blades.dev/css/breakout/">Breakout container <mark>NEW</mark></a></li>
<li><a href="//blades.dev/css/grid/">Grid</a></li>
<li><a href="//blades.dev/css/columns/">Text columns <mark>NEW</mark></a></li></ul>
</li>

<li>
<strong><a href="//blades.dev/css/content/">Content</a></strong>
<ul><li><a href="//blades.dev/css/typography/">Typography <mark>UPD</mark></a></li>
<li><a href="//blades.dev/css/link/">Link</a></li>
<li><a href="//blades.dev/css/button/">Button</a></li>
<li><a href="//blades.dev/css/icon/"><code style="padding: 0">‹i›</code>con helper <mark>NEW</mark></a></li>
<li><a href="//blades.dev/css/list/">List <mark>UPD</mark></a></li>
<li><a href="//blades.dev/css/table/">Table <mark>UPD</mark></a></li>
<li><a href="//blades.dev/css/responsive-table/">Responsive table <mark>NEW</mark></a></li>
<li><a href="//blades.dev/css/code/">Code blocks <mark>NEW</mark></a></li></ul>
</li>

<li>
<strong><a href="//blades.dev/css/forms/">Forms</a></strong>
<ul><li><a href="//blades.dev/css/forms/">Overview</a></li>
<li><a href="//blades.dev/css/input/">Input</a></li>
<li><a href="//blades.dev/css/textarea/">Textarea</a></li>
<li><a href="//blades.dev/css/select/">Select</a></li>
<li><a href="//blades.dev/css/checkboxes/">Checkboxes</a></li>
<li><a href="//blades.dev/css/radios/">Radios</a></li>
<li><a href="//blades.dev/css/switch/">Switch</a></li>
<li><a href="//blades.dev/css/range/">Range</a></li>
<li><a href="//blades.dev/css/float-label/">Float labels <mark>NEW</mark></a></li></ul>
</li>

<li>
<strong><a href="//blades.dev/css/components/">Components</a></strong>
<ul><li><a href="//blades.dev/css/accordion/">Accordion</a></li>
<li><a href="//blades.dev/css/card/">Card</a></li>
<li><a href="//blades.dev/css/dropdown/">Dropdown</a></li>
<li><a href="//blades.dev/css/group/">Group</a></li>
<li><a href="//blades.dev/css/loading/">Loading</a></li>
<li><a href="//blades.dev/css/modal/">Modal</a></li>
<li><a href="//blades.dev/css/nav/">Navigation</a></li>
<li><a href="//blades.dev/css/progress/">Progress</a></li>
<li><a href="//blades.dev/css/tooltip/">Tooltip</a></li>
<li><a href="//blades.dev/css/timeline/">Timeline <mark>NEW</mark></a></li>
<li><a href="//blades.dev/css/jump/">Jump to... <mark>NEW</mark></a></li>
<li><a href="//blades.dev/css/utils/">Utilities <mark>NEW</mark></a></li></ul>
</li>

<li>
<strong><a href="//blades.dev/more/">More</a></strong>
<ul><li><a href="//blades.dev/css/pico/">Pico CSS <mark>NEW</mark> <sub style="">(underlying fork)</sub></a></li>
<li><a href="//blades.dev/css/ninja/">Ninja CSS <mark>NEW</mark> <sub style="">(experimental add-ons)</sub></a></li>
<li><a href="//blades.dev/html/">Dynamic templates <mark>NEW</mark></a></li>
<li><a href="//blades.dev/html/base/">Base HTML <mark>NEW</mark></a></li>
<li><a href="//blades.dev/html/links/">Links snippet <mark>NEW</mark></a></li>
<li><a href="//blades.dev/html/sitemap/">Sitemap XML <mark>NEW</mark></a></li>
<li><a href="//blades.dev/css/frameworks/">CSS frameworks <mark>2026–2040</mark></a></li></ul>
</li>

</ul>

<!--section:dark-mode-->

### Dark mode without a flash

With the Pico-based builds, Blades follows the OS setting by default, with no JavaScript and no flash (see [Dark scheme](//blades.dev/css/color-schemes/)). To force a theme, set `data-theme="light"` or `"dark"` on `<html>`. On a nested element it works when the element paints its own background, such as `<article>`; otherwise add `background-color: var(--pico-background-color); color: var(--pico-color);`.

If you persist the user's choice, e.g. under the `localStorage` key `theme`, set the attribute **before the first paint** with a small inline script in `<head>`, e.g. in SvelteKit's `src/app.html`:

```html
<script>
  try {
    const theme = localStorage.getItem("theme");
    if (theme === "light" || theme === "dark") document.documentElement.dataset.theme = theme;
  } catch {}
</script>
```

- Setting it later, e.g. in `onMount` or `useEffect`, renders the OS theme first and then switches.
- In a Next.js App Router layout, pass the same code as a template literal, ``<script dangerouslySetInnerHTML={{ __html: `try { … } catch {}` }} />``, and add `suppressHydrationWarning` to `<html>`, because the attribute changes before hydration.

<!--section:gh-only-->

### Compact sizing (opt-in)

<!--section:compact-->

Add `<html data-compact>` for the whole page, or put the attribute on a single element, e.g. `<form data-compact>` for one form. Without the attribute nothing changes.

- **Where it ships:**
  - included in `blades.css`
  - also in `blades.layered.css`
  - with per-part imports, add `@anyblades/blades/compact` after the other parts
  - with `pico.conditional.css`, add `@anyblades/blades/src/compact` after it
- **What changes:**
  - smaller control padding and 1.5rem block spacing
  - a 0.5rem radius and a 3px focus ring
  - 500-weight labels and buttons, 600-weight headings
  - a white field background in light mode
  - a 1px card ring instead of the blurred shadow, with no grey card header/footer bands
- **Root font size:** on `<html>`, it also keeps the root font size at 100% instead of growing with the viewport. At 1280px wide, controls are then 38px instead of 62px. On a single element they are about 48px, because everything is sized in `rem` and the root stays as it is.
- **Field text size:** form controls stay at 16px, because below that iOS Safari zooms in on focus.

<!--section:info-->

## <sup style>Trusted by</sup> <!--A-Z-->

<big>

- [<i>🐍</i> Flask & Jinja](https://palletsprojects.com/) community website
- [<i>🪐</i> Grav CMS v2](https://getgrav.org/migrate-to-2#:~:text=blades) default theme

<!--{.markerless}-->

</big>

- [000000076.xyz](//000000076.xyz/)
- [buildawesome.one](//buildawesome.one/)
- [doany.io](//doany.io/) [↗](https://b.doany.io/en/posts/svelte-bun-sqlite/#on-biome-and-css:~:text=anyblades)
- [followthatcar.com](//followthatcar.com/)
- [greenroom.pudiga.org](//greenroom.pudiga.org/)
- [knives.ajitpanigrahi.com](//knives.ajitpanigrahi.com/)
- [usehadron.dev](//usehadron.dev/#:~:text=blades)

<!--{.columns}-->

## <sup style>Featured by</sup> <!--by host-->

- [@11ty/buildawesome](https://bsky.app/profile/11ty.dev/post/3mp75r53ccv2b) [↗](https://mastodon.social/@11ty@neighborhood.11ty.dev/116816881367741413)
- [@matthewmorete](https://bsky.app/profile/matthewmorete.com/post/3mx5wvywixc2l)
- [@box464](https://mastodon.social/@box464/117442493473921346)
- [@lazarus](https://fosstodon.org/@lazarus/117384358792615667)
- [@pauleveritt](https://fosstodon.org/@pauleveritt/116387278969347700)
- [@cantdutchthis](https://news.ycombinator.com/item?id=48729467)
- [@daviding](https://www.reddit.com/r/Wordpress/comments/1vnfhkr/comment/p3k9z1c/#:~:text=blades)
- [@dbohdan/classless-css](https://github.com/dbohdan/classless-css)
- [@gabrielizalo/css-frameworks](https://github.com/gabrielizalo/awesome-css-frameworks-and-ui-libraries/tree/master/Lightweight)
- [@uhub/awesome-css](https://github.com/uhub/awesome-css)
- [@draupnerdata](https://www.youtube.com/watch?v=yDjArj9HSjs&t=180s)

<!--{.markerless .columns}-->

<!--
> [!IMPORTANT]
> **Work in progress** — information below is under review:
-->
