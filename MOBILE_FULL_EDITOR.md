# M3E Canvas — Mobile Full Editor

This fork keeps the desktop editor intact and replaces the old phone-only command flow with a touch-first mobile editor.

## Mobile capabilities

- Indonesian touch command bar: Tambah, Lapisan, Layar, Properti, Alat.
- Full component catalog with tap-to-add.
- Existing desktop `Inspector` is reused in a mobile bottom sheet.
- Existing `FrameInspector` is reused for screen editing.
- Existing `LayersPanel` is reused for layer selection, reorder and locking.
- Multi-screen management from Android.
- Duplicate/delete screens.
- Undo/redo, duplicate/delete, fit, preview and settings from the mobile tools sheet.
- Existing pinch/pan and item pointer handling remain in the shared canvas.

## Architecture

The change is intentionally additive: the desktop palette, inspector, layers and document model are not replaced. `components/Mobile.tsx` contains the new touch UI, while `app/page.tsx` connects it to the existing editor callbacks.

## Build

Use the repository's normal commands with Node 22.12+:

```bash
npm ci
npm run typecheck
npm run build
```

The environment used to prepare this archive could not complete a fresh npm dependency install, so the final build/typecheck should be run on a normal Node/npm environment before deployment.
