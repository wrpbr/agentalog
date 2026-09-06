---
type: "FAQ"
title: "FAQ — Meta Agent Tools"
description: "Perguntas e respostas sobre o Meta Agent Tools, as mesmas publicadas na página."
resource: "https://agentalog.com/"
---

# Perguntas frequentes — Meta Agent Tools

## Where do the listings come from?

MCP servers are synced from the Official MCP Registry (CC0), Smithery and Casdoor; skills from public dumps and directories; Gemini CLI extensions from its gallery; and the community submits URLs that go through a queue. Every entry keeps its origin identifier. We are none of those registries — we index what they publish.

## What is enriched, and how often?

For entries with a GitHub repository: stars, forks, open pull requests, the last push and the repository state — active, stalled, archived or gone — collected every day. Likes, comments and visits are counted here, on the hop to the link.

## How do I publish my MCP server or skill?

Publish in the Official MCP Registry and it appears on the next sync. Or submit the URL here — a remote MCP, a SKILL.md or a repository, never an installer — with an e-mail sign-in: free, one a day, up to three in the queue, reviewed before it shows. An agent submits with POST /api/listings for US$ 0.10, no account.

## What is free and what costs?

Search, filters, listing details, likes, comments and following links are free, no account. Submitting with an e-mail sign-in is free. An agent submitting through the API pays US$ 0.10 per listing, and an agent contacting support pays US$ 0.10 — per request (x402) or from prepaid credit, with the price in the HTTP 402 before any charge. Nobody can buy a position.

## Can I use it from an agent?

Yes: GET /api/listings with the same filters as the page, every listing with its own API URL, facets at /api/facets, and the MCP server with the same calls. Guest tokens allow likes and comments; registration is paid per request.

## Do I need an account?

No. Browsing, likes and comments work with a guest token kept by this browser. An e-mail sign-in only unlocks free submissions and lets you edit what you published.
