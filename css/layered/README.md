# Layered modules

<!--section:docs-->

Blades CSS, whole or part by part, is also available wrapped in `@layer blades { }`, so any unlayered styles of yours win over it without specificity fights.

## Whole framework

`blades.layered.css` / `blades.layered.min.css` is `blades.css` wrapped in `@layer blades { }`:

<!--prettier-ignore-->
```html
<link rel="stylesheet" href="
  https://cdn.jsdelivr.net/npm/@anyblades/blades@3/css/layered/blades.layered.min.css
"/>
```

When you can use `@import`, `@import url("…/blades.min.css") layer(blades);` does the same without this file.

## Per-part imports

### With bundlers and component frameworks (SvelteKit, Next.js, Nuxt, Astro, …)

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
- An `@import` inside a scoped `<style>` (Svelte, Astro, Vue `scoped`) is processed as that component's own styles. The rules get scoped to the component's markup (Svelte also prunes the unused ones) and are duplicated in every component that imports them.

### Framework examples

A confirm dialog component, with the root layout importing the base parts as above. The component imports `card` and `modal` and overrides Blades in its own styles. Blades' `dialog > article > footer button:not(:first-of-type)` is more specific than the component's rules, but it is in `@layer blades`, so the component's rules win. With the non-layered parts (`@anyblades/blades/components/modal`), the second button would keep Blades' `margin-left`.

Svelte, `Confirm.svelte`:

```svelte
<script>
  import "@anyblades/blades/layered/components/card";
  import "@anyblades/blades/layered/components/modal";
</script>

<dialog open>
  <article>
    <p>Delete this item?</p>
    <footer>
      <button class="secondary">Cancel</button>
      <button>Delete</button>
    </footer>
  </article>
</dialog>

<style>
  footer {
    display: flex;
    justify-content: flex-end;
    gap: 0.5rem;
  }
  button {
    margin: 0;
  }
</style>
```

Vue (`<script setup>` and `<style scoped>`) and Astro (the imports in the frontmatter, `<style>` in the component) work the same way.

React, `Confirm.jsx` with a CSS module:

```jsx
import "@anyblades/blades/layered/components/card";
import "@anyblades/blades/layered/components/modal";
import styles from "./Confirm.module.css";

export default function Confirm() {
  return (
    <dialog open>
      <article>
        <p>Delete this item?</p>
        <footer className={styles.footer}>
          <button className="secondary">Cancel</button>
          <button>Delete</button>
        </footer>
      </article>
    </dialog>
  );
}
```

```css
/* Confirm.module.css */
.footer {
  display: flex;
  justify-content: flex-end;
  gap: 0.5rem;
}
.footer button {
  margin: 0;
}
```

Per-page CSS in a SvelteKit production build of this example, next to the whole `blades.layered.min.css` (gzip sizes in parentheses):

|                                                                          | CSS                 |
| ------------------------------------------------------------------------ | ------------------- |
| `blades.layered.min.css`, for comparison                                 | 76.9 kB (12.4 kB)   |
| Every page: the root layout's parts                                      | 25.5 kB (4.7 kB)    |
| The page with `Confirm`: plus `card`, `modal` and the component's styles | + 4.7 kB (+ 1.4 kB) |

The sizes are from a build with `build: { cssTarget: "esnext" }` in `vite.config.js`. With Vite's default browser targets, `light-dark()` is lowered to fallback custom properties, which adds about 4 kB to the root layout's CSS.

### Available parts

The files under [`css/layered/`](https://github.com/anyblades/blades/tree/main/css/layered):

- Pico's parts, the same as for [non-layered imports](//blades.dev/css/#c-install-with-npm): `variables`, `layout/*`, `content/*`, `forms/*`, `components/*` and `utilities`. A whole category is one import, e.g. `@anyblades/blades/layered/components` (Pico's parts of that category only; `layout` without `landmarks`).
- Blades' own parts, mostly in the same folders as Pico's:
  - `components/modal-modern` adds the CSS-only open animation for `showModal()` on top of `components/modal` ([No-JS transitions](//blades.dev/css/modal/#no-js-transitions-new))
  - `components/dropdown-popover` styles `<ul popover>` / `<menu popover>` menus opened by a button ([Modern Popover API](//blades.dev/css/dropdown/#modern-popover-api-new))
  - `variables-blades`, `layout/columns`, `content/code-block`, `content/icon`, `forms/float-label`, `components/timeline`
  - `compact`: import it last (see [Compact sizing](https://github.com/anyblades/blades#compact-sizing-opt-in))

### Order and dependencies

- `variables` and `layout/document` are the minimum. Inside the layer, later parts still win over earlier ones, so keep the order of [`src/pico/_index.css`](https://github.com/anyblades/blades/blob/main/src/pico/_index.css) (variables → layout → content → forms → components → utilities). Blades' own parts come after Pico's, in the order of [`src/blades/_index.css`](https://github.com/anyblades/blades/blob/main/src/blades/_index.css), with `compact` last.
- Parts don't `@import` the parts they build on:
  - `components/modal` expects `components/card`
  - `components/group` and `components/dropdown` expect `content/button` and `forms/basics`
  - `components/modal-modern` expects `components/modal`
  - `components/dropdown-popover` expects `components/dropdown`
  - the `forms/*` extras expect `forms/basics`

  If they did, every route chunk would carry its own copy. Import those shared parts once, at the root or next to the part that needs them; bundlers dedupe the imports.

- Landmark padding: `pico.css` and `blades.ninja.css` pad `body > header`, `body > main` and `body > footer` like Pico, which doesn't match when the framework wraps the page in an element (SvelteKit's `<div style="display: contents">`, Next.js pages router `#__next`, Nuxt `#__nuxt`, a SPA's `#root` / `#app`). `blades.css` doesn't pad them; add `layered/layout/landmarks` for Pico's `body >` padding.

## Overrides and caveats

Override in your component's `<style>` or `app.css`, or set `--pico-*` variables on `:root` or on an element. Unlayered CSS always wins over `@layer blades`. The usual layer caveats apply:

- Blades' own `!important` declarations (form validation, reduced motion) beat your unlayered `!important`.
- Your `@keyframes` of the same name as Blades' win regardless of load order.
- If you use other layered CSS, declare the order once, before anything else is loaded, because the first `@layer` the browser sees fixes the order. For Tailwind v4 that is `@layer theme, base, blades, components, utilities;` at the top of the CSS file you import first (before `@import "tailwindcss"`), and that file has to be imported before any `layered/*` part.
