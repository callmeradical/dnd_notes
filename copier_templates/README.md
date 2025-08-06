# Copier Templates

This directory contains [Copier](https://copier.readthedocs.io/) templates that help generate new content for the notes site.

## New Blog Post

```
copier copy copier_templates/post docs/blog/posts
```

You will be prompted for the post information. The new file will be created in `docs/blog/posts/` with the name you provide.

## New Session Notes

```
copier copy copier_templates/session path/to/campaign
```

Replace `path/to/campaign` with the directory where the session file should live (for example `archive/campaigns/bastion`).
