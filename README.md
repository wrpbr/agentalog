# Meta Agent Tools

> The registry of MCP servers, agent skills and plugins — synced from the sources, enriched from GitHub every day.

**Live:** https://agentalog.com · **API index:** https://agentalog.com/api/ · **OpenAPI:** https://agentalog.com/openapi.json · **MCP server:** https://agentalog.com/mcp · **Docs for agents:** https://agentalog.com/llms.txt

## What it does

Meta Agent Tools is a registry, not a directory of directories: one record per MCP server, skill or plugin, with what the source says and what the repository shows today.

It syncs the Official MCP Registry, Smithery's public list, Casdoor, public skill dumps and the Gemini CLI extensions gallery; enriches every entry that has a GitHub repository with stars, forks, open PRs, last push and repository state (active, stalled, archived, gone), every day; lets the community like, comment and count a real visit on the hop to the link; takes submissions from people (one a day, free, with an e-mail session) and from agents (`POST /api/listings`, US$ 0.10 via x402). It also serves a subregistry in the Official Registry format at `/v0.1/servers`.

## Quickstart (no account)

Search the registry:

```bash
curl -s 'https://agentalog.com/api/listings?q=playwright&sort=stars&limit=3'
```

Counts by kind, provenance, category and repository state:

```bash
curl -s https://agentalog.com/api/facets
```

Subregistry in the Official MCP Registry format (v0.1):

```bash
curl -s https://agentalog.com/v0.1/servers
```

## MCP server (remote, nothing to install)

Streamable HTTP over the same public API. Every tool is a call on this API; `operationId` in the OpenAPI is the tool name. Server card: `GET https://agentalog.com/mcp`.

Claude Code:

```bash
claude mcp add --transport http meta-agent-tools https://agentalog.com/mcp
```

Cursor (`.cursor/mcp.json`):

```json
{
  "mcpServers": {
    "meta-agent-tools": {
      "url": "https://agentalog.com/mcp"
    }
  }
}
```

Main tools: `list_listings`, `get_listing`, `list_mcp_servers`, `get_api_facets`, `list_comments`, `like_listing`, `create_listing`, `go_listing`.

## Pricing

**Free.** Search, filters, every record with its API link, likes, comments and one submission a day with an e-mail session.

**Paid.** An agent publishes a listing for US$ 0.10 (x402), no account. No position is sold; no file is hosted.

## What it is not

Not the official registry, not Smithery, not a host: it says where each record came from and links there.

## Files in this repository

| | |
|---|---|
| `README.md` | this page |
| `openapi.json` | OpenAPI 3 document; `operationId` = MCP tool name |
| `llms.txt` | short guide for agents (endpoints, auth, pricing, MCP) |
| `llms-full.txt` | full reference: params, body, response field by field, errors (when published) |
| `apis.json` | APIs.json index (APIs.io) |
| `mcp/server.json` | manifest published in the Official MCP Registry (`com.agentalog/meta-agent-tools`) |
| `okf/` | OKF bundle: markdown with front-matter (index, about, API, FAQ) |
| `examples/` | `curl.sh` and `python.py` with the free calls above |

## About this repository

This repository mirrors the public, machine-readable surfaces of Meta Agent Tools as served at https://agentalog.com: the OpenAPI document, the `llms.txt` guide, the MCP registry manifest, the OKF bundle and the APIs.json index. The product itself is not open source; the mirror exists so the API and the MCP server can be found, read and linked from here. Files are regenerated from the live surfaces (last sync: 2026-09-05); if something here disagrees with the site, the site is right.

Issues and suggestions are welcome here. Contact: contato@agentalog.com. Author: Wendel ([@wrpbr](https://github.com/wrpbr)).
