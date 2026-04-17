# Investment Wiki — Build Repo

Quartz static site generator for `investment-wiki.pages.dev`.

Content lives in a separate repo: [chen101703/investment-wiki](https://github.com/chen101703/investment-wiki).
This repo holds only the build config.

## Local development

The `content/` symlink points at `~/Documents/investment-wiki/` (the Obsidian vault):

```bash
./dev.sh
```

Opens `http://localhost:8080`.

## Deployment

GitHub Actions builds + deploys on:
- Push to this repo's `main`
- `repository_dispatch` event `content-updated` (triggered from the content repo)
- Manual `workflow_dispatch`

Required secrets in this repo:
- `CONTENT_REPO_TOKEN` — PAT with `contents:read` on `investment-wiki`
- `WIKI_PASSWORD` — StatiCrypt password
- `CLOUDFLARE_API_TOKEN` — Cloudflare Pages deploy
- `CLOUDFLARE_ACCOUNT_ID`
