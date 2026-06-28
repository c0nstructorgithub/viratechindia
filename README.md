# Viratech India — Local Static Mirror

An offline, **exact static mirror** of <https://viratechindia.com/>, captured **2026-06-28**.
The original is a static Bootstrap + jQuery site (no backend/CMS), so this clone is byte‑faithful:
same HTML, CSS, JS, images and fonts, with relative paths preserved so it runs entirely offline.

Edit the `.html` files directly to change content, then refresh the browser.

---

## Preview locally

The site uses root‑relative paths, so open it through a tiny web server (not by double‑clicking the
HTML, which can break some asset paths):

- **Easiest:** double‑click **`serve.cmd`** → it opens <http://127.0.0.1:8080/> in your browser.
- **Manual:** from this folder run `python -m http.server 8080` then visit <http://127.0.0.1:8080/>.

Press `Ctrl+C` in the console window to stop the server.

---

## Page index (sitemap)

| Nav label | File | What's on it |
|---|---|---|
| Home | [index.html](index.html) | Hero image slider (Nivo), featured products (Advanced GET, MetaStock 17, RMO ATM), CTAs, ATM Power Screener, conference promo |
| About Us | [about-us.html](about-us.html) | Company background / vendor certification |
| Advanced GET | [advanced-get.html](advanced-get.html) | eSignal Advanced GET product + feature screenshots |
| Workshops & Training | [technical-workshops.html](technical-workshops.html) | Contact CTA for workshops / webinars / 1-to-1 training |
| MetaStock DC (End of Day) | [metastock-end-of-day.html](metastock-end-of-day.html) | MetaStock end‑of‑day edition (largest page) |
| MetaStock RT (Real Time) | [metastock-pro.html](metastock-pro.html) | MetaStock real‑time / Pro edition |
| RMO ATM | [metastock-rmo.html](metastock-rmo.html) | RMO ATM 3.0 by Rahul Mohindar |
| Contact Us | [contact-us.html](contact-us.html) | WhatsApp + Telegram + UAE address |

> _Note: StocksUP and Press Review were removed from the nav; the Press Review page was deleted._

> `MetaStock-rmo.html` and `metastock-rmo.html` are the **same page** — the live IIS server (and
> Windows' case‑insensitive filesystem) serve both URLs from one file.

---

## Folder structure

```
c:\viratechindia\
├─ *.html              # the 9 pages above
├─ css/                # bootstrap, style, nivo-slider, animate, font-awesome, reset, tabs, …
├─ js/                 # jquery, bootstrap, nivo slider, fakeLoader
├─ images/             # all page imagery (incl. images/advancedget/ screenshots)
├─ fonts/              # FontAwesome + Glyphicons web fonts
├─ font-face/          # Open Sans web fonts (bold/light/regular)
├─ vendor/             # localized 3rd-party assets (html5shiv, respond CDN shims)
├─ serve.cmd           # one-click local preview server
├─ _pages.txt          # machine-readable list of pages captured
└─ README.md           # this file
```

## Links left pointing to the live web (by design)

These are inherently external and were **not** localized:

- **Payment gateway** — `eazypay.icicibank.com`
- **Downloads** — `es64.exe`, `viratech.info/webinar.exe`, `viratech.info/help.exe`
- **MetaStock** store / seminar / cart links on `metastock.com`
- **YouTube** embeds and video links

## Known issues (inherited from the live site)

These are broken on the **real** site too — the mirror reproduces them faithfully:

- `stocksup-eod.html` — linked in the nav but returns **404** upstream (page doesn't exist).
- `images/dhiraj-mohindar.jpg` — referenced but **404** upstream (missing image).
- `font-face/light/opensans-regular-webfont.woff` — referenced in CSS but **404** upstream.

If you want, I can create a real **StocksUP** page (you chose "add new pages") by cloning an existing
product page as a template, and fix the missing image.

---

## Making changes

- **Text / images:** edit the relevant `.html` file (or drop a new image in `images/` and reference it).
- **Site‑wide elements (header/nav/footer):** these are duplicated in every `.html` file. Tell me the
  change and I'll apply it across all pages consistently.
- **New page:** copy the closest existing page as a starting template, or just tell me what you want and
  I'll scaffold it with the shared header/footer wired in.
