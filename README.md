# blades<sup>✨</sup>

![][V] ![][NEXT_V] ![][LIC] [![][X]][X_URL] [![][B]][B_URL] [![][M]][M_URL]

[V]: https://img.shields.io/npm/v/@anyblades/blades?label=&color=brightgreen
[NEXT_V]: https://img.shields.io/github/v/release/anyblades/blades?include_prereleases&label=next&color=blue
[LIC]: https://img.shields.io/badge/license-MIT-blue
[X]: https://img.shields.io/badge/78-white?logo=x&style=social
[X_URL]: https://x.com/BladesCSS
[B]: https://img.shields.io/bluesky/followers/blades.dev?label=
[B_URL]: https://bsky.app/profile/blades.dev
[M]: https://img.shields.io/mastodon/follow/117487235444867518?label=NEW
[M_URL]: https://mastodon.social/@BladesCSS

<!--section:summary-->

<h1><span class="mark-brand">Minimal CSS Framework</span> <small>for</small> Semantic HTML</h1>

<big>Blades CSS is a modern drop&#8209;in successor to [Pico CSS](//picocss.com/docs/maintenance).</big>

Just switch `pico.css` to `blades.css` — and voilà!

<nav>
  <a href="//blades.dev/css/" role="button">Get started</a>
  <b hidden>&nbsp;•&nbsp;</b>
  <a href="//blades.dev/css/pico/" role="button" class="outline">Inspired by Pico ✨</a>
</nav>

<!--section:gh-only-->

---

## Quick start

<!--section:install-all,install--><!-- for https://blades.dev/css/ and https://blades.dev/css/standalone/ -->

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

`blades.layered.min.css` is Blades wrapped in `@layer blades { }`, so any unlayered styles of yours win over it without specificity fights. Note that inside a layer Blades' own `!important` declarations (form validation, reduced motion) beat your unlayered `!important`, and your `@keyframes` of the same name as Blades' win regardless of load order. When you can use `@import`, `@import url("…/blades.min.css") layer(blades);` does the same without this file.

### <mark>C.</mark> Install with NPM

```sh
npm install @anyblades/blades
```

Then, `@import` sources into your CSS file:

```css
@import "@anyblades/blades";
```

<div><hr></div>

Alternatively, import [standalone](//blades.dev/css/standalone/) Blades CSS sources only (without underlying [Pico CSS](//blades.dev/css/pico/) base styles):

```css
@import "@anyblades/blades/standalone";
```

Live example using <i class="fa-brands fa-tailwind-css"></i> Tailwind: https://github.com/anyblades/buildawesome-micro-starters/blob/main/tailwind/styles.css

<div><hr></div>

Or import only the [Pico CSS](//blades.dev/css/pico/) parts you need, e.g. per page or per component:

```css
@import "@anyblades/blades/pico/variables";
@import "@anyblades/blades/pico/layout/document";
@import "@anyblades/blades/pico/content/typography";
@import "@anyblades/blades/pico/components/card";
@import "@anyblades/blades/pico/components/modal";
```

- `variables` and `layout/document` are the minimum; keep the same order as [`src/pico/_index.css`](https://github.com/anyblades/blades/blob/main/src/pico/_index.css) (variables → layout → content → forms → components → utilities).
- `layout` doesn't pad `body > header/main/footer`. Add `layout/landmarks` for Pico's behaviour.
- Some parts build on others, e.g. `components/modal` expects `components/card`, and `components/group` and `components/dropdown` expect `forms/basics` and `content/button`.
- Available parts are the files under [`src/pico/`](https://github.com/anyblades/blades/tree/main/src/pico): `layout/*`, `content/*`, `forms/*`, `components/*` (or a whole category, e.g. `@anyblades/blades/pico/components`) and `utilities`.

#### With bundlers and component frameworks (SvelteKit, Next.js, Nuxt, Astro, …)

Import the parts from JavaScript, i.e. the root layout and the components that use them, rather than with `@import` inside a component's `<style>` block. Use the layered parts, `@anyblades/blades/layered/*`: they are the same parts wrapped in `@layer blades`, which a JS `import` can't add by itself.

```js
// root layout, once: the base and every part that others build on
import "@anyblades/blades/layered/variables";
import "@anyblades/blades/layered/layout/document";
import "@anyblades/blades/layered/content/typography";
import "@anyblades/blades/layered/content/button";
import "@anyblades/blades/layered/forms/basics";

// in the component that renders a <dialog>
import "@anyblades/blades/layered/components/card";
import "@anyblades/blades/layered/components/modal";
import "@anyblades/blades/layered/components/modal-modern"; // optional: open animation without JS
```

```html
<style>
  /* unlayered, so it wins over Blades whatever the specificity (except Blades' !important) */
  article {
    max-width: 40rem;
  }
</style>
```

- Bundlers dedupe JS-side CSS imports and split them per route, so each part is downloaded and cached once and only where it's used.
- Blades' own parts are layered too, mostly in the same folders as Pico's: e.g. `components/modal-modern` adds the CSS-only open animation for `showModal()` on top of `components/modal`, and `components/dropdown-popover` styles `<ul popover>` / `<menu popover>` menus opened by a button. The others are `variables-blades`, `layout/columns`, `content/code-block`, `content/icon`, `forms/float-label`, `components/timeline` and `compact` (import it last, see below).
- Override in your component's `<style>` or `app.css`, or set `--pico-*` variables on `:root` or on an element. Unlayered CSS always wins over `@layer blades`. The usual layer caveats apply: Blades' own `!important` declarations beat yours, and if you use other layered CSS, declare the order once, before anything else is loaded. For Tailwind v4 that is `@layer theme, base, blades, components, utilities;` at the top of the CSS file you import first (before `@import "tailwindcss"`), and that file has to be imported before any `layered/*` part, because the first `@layer` the browser sees fixes the order.
- Parts don't `@import` the parts they build on (e.g. `components/modal` expects `components/card`, `components/group` and `components/dropdown` expect `content/button` and `forms/basics`, `components/modal-modern` expects `components/modal`, `components/dropdown-popover` expects `components/dropdown`, and the `forms/*` extras expect `forms/basics`). If they did, every route chunk would carry its own copy. Import those shared parts once, at the root or next to the part that needs them; bundlers dedupe the imports.
- An `@import` inside a scoped `<style>` (Svelte, Astro, Vue `scoped`) is processed as that component's own styles. The rules get scoped to the component's markup (Svelte also prunes the unused ones) and are duplicated in every component that imports them.
- Landmark padding: `pico.css` and `blades.dev.css` pad `body > header`, `body > main` and `body > footer` like Pico, which doesn't match when the framework wraps the page in an element (SvelteKit's `<div style="display: contents">`, Next.js pages router `#__next`, Nuxt `#__nuxt`, a SPA's `#root` / `#app`). `blades.css` doesn't pad them; with per-part imports, add `layout/landmarks` (or `layered/layout/landmarks`) for Pico's `body >` padding.

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

### Dynamic templates

[Available for Nunjucks, Liquid and Twig ↗](https://blades.dev/tpl/)<!--{role=button .outline}-->

<!--section:gh-only-->

---

## Dark mode without a flash

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

---

## Compact sizing (opt-in)

Add `<html data-compact>` for the whole page, or put the attribute on a single element, e.g. `<form data-compact>` for one form. Without the attribute nothing changes.

- **Where it ships:**
  - included in `blades.css`
  - also in `blades.layered.css`
  - with per-part imports, add `@import "@anyblades/blades/compact";` after the other parts, or `import "@anyblades/blades/layered/compact";` with the layered parts
  - with `pico.conditional.css`, add `@anyblades/blades/compact` after it
- **What changes:**
  - smaller control padding and 1.5rem block spacing
  - a 0.5rem radius and a 3px focus ring
  - 500-weight labels and buttons, 600-weight headings
  - a white field background in light mode
  - a 1px card ring instead of the blurred shadow, with no grey card header/footer bands
- **Root font size:** on `<html>`, it also keeps the root font size at 100% instead of growing with the viewport. At 1280px wide, controls are then 38px instead of 62px. On a single element they are about 48px, because everything is sized in `rem` and the root stays as it is.
- **Field text size:** form controls stay at 16px, because below that iOS Safari zooms in on focus.

---

## Documentation

<!-- ToC as is from https://blades.dev/#docs -->
<ul class="columns">

<li>
<strong><a href="//blades.dev/css/">Get started</a></strong>
<ul><li><a href="//blades.dev/css/">Quick start</a></li>
<li><a href="//blades.dev/css/color-schemes/">Dark scheme</a></li>
<li><a href="//blades.dev/css/variables/">CSS variables</a></li>
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

---

## <sup style>Trusted by</sup>

- 🐍 [Flask & Jinja](https://palletsprojects.com/) community website
- 🪐 [Grav CMS v2](https://getgrav.org/migrate-to-2#:~:text=blades) default theme [↗](https://www.followthatcar.com/)

<!--https://pulsar-wildlife.club/-->

<!--section:info-->

## <sup style>Featured by</sup> <!-- [1] big projects [2] awesome [3] smaller projects [4] blogs/social -->

- [getgrav.org](https://getgrav.org/migrate-to-2#:~:text=blades)
- https://usehadron.dev/
- [@11ty/buildawesome](https://bsky.app/profile/11ty.dev/post/3mp75r53ccv2b) [↗](https://mastodon.social/@11ty@neighborhood.11ty.dev/116816881367741413)
- [<i class="fa-brands fa-build-awesome mark-brand"></i> buildawesome.one](https://buildawesome.one/#:~:text=blades)
- https://github.com/dbohdan/classless-css
- https://github.com/uhub/awesome-css
- [/gabrielizalo/awesome-css-frameworks](https://github.com/gabrielizalo/awesome-css-frameworks-and-ui-libraries/tree/master/Lightweight)
- https://github.com/eggplantpasta/greenroom
- [/adamdjbrett/11ty-wisp](https://github.com/adamdjbrett/11ty-wisp#features:~:text=blades) [↗](https://github.com/adamdjbrett/000000076#:~:text=blades)
- [doany.io](https://doany.io/en/posts/svelte-bun-sqlite/#on-biome-and-css:~:text=anyblades)
- [@box464](https://mastodon.social/@box464/117442493473921346)
- [@draupnerdata](https://www.youtube.com/watch?v=yDjArj9HSjs&t=180s)
- [@cantdutchthis](https://news.ycombinator.com/item?id=48729467)
- [@daviding](https://www.reddit.com/r/Wordpress/comments/1vnfhkr/comment/p3k9z1c/#:~:text=blades)
- [@infotexture](https://mastodon.social/@infotexture@indieweb.social/117294194740314396)
- [@lazarus](https://fosstodon.org/@lazarus/117384358792615667)
- [@matthewmorete](https://bsky.app/profile/matthewmorete.com/post/3mx5wvywixc2l)
- [@pauleveritt](https://fosstodon.org/@pauleveritt/116387278969347700)

<!--{.markerless .columns}-->
<!--[hostfurl.com, @johnheenan]-->
