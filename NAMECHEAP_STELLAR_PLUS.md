# M3E Canvas — Namecheap Stellar Plus

This package is prepared for Apache/static hosting such as Namecheap Stellar Plus.

## Important

The project uses Next.js static export (`output: "export"`). Namecheap Stellar Plus should receive the generated `out/` folder contents, not the TypeScript/React source tree.

## Build

On a computer with Node.js 22.12+:

```bash
npm ci
npm run build
```

The production website is generated in:

```text
out/
```

Upload **everything inside `out/`** to `public_html/` in Namecheap cPanel.

The `.htaccess` file is included through `public/.htaccess` and is copied into `out/` during the build.

## If using a subfolder

If the site is installed at `example.com/m3e/`, set the environment variable before building:

```bash
NEXT_PUBLIC_BASE_PATH=/m3e npm run build
```

For a normal domain/subdomain document root, leave `NEXT_PUBLIC_BASE_PATH` empty.

## Included changes

- Full mobile editor changes from the latest build.
- Bahasa Indonesia UI presentation layer.
- Existing internal component names and code identifiers are preserved.
- Static export configuration is enabled.
- Apache `.htaccess` is included for Namecheap-style hosting.

## Verification note

A complete production build was not generated in the preparation environment because npm dependencies could not be downloaded there. Run `npm ci` and `npm run build` on a machine with npm network access before uploading `out/` to Namecheap.

## GitHub automatic build

This repository includes `.github/workflows/build-namecheap.yml`.
After you push the project to GitHub, GitHub Actions will automatically:

1. install the npm dependencies;
2. run typecheck;
3. run tests;
4. build the static `out/` site;
5. verify `out/index.html` and `out/.htaccess`;
6. create `m3e-canvas-namecheap-public_html.zip`;
7. publish that ZIP as a GitHub Actions artifact for 14 days.

### Download the generated ZIP

Open the repository on GitHub → **Actions** → **Build Namecheap package** → choose a successful run → **Artifacts** → download `m3e-canvas-namecheap-public_html`.

Extract that ZIP and upload its contents directly into Namecheap cPanel `public_html/`.

No Node.js or npm installation is required on the Namecheap server.
