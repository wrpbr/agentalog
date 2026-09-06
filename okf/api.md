---
type: "API"
title: "API do Meta Agent Tools"
description: "Superfície HTTP e MCP do Meta Agent Tools, com o modelo de cobrança."
resource: "https://agentalog.com/api/"
---

# API do Meta Agent Tools

Base: https://agentalog.com

## Como pagar

Consulta do catálogo é grátis. Publicar registro e contato de agente cobram por requisição (x402) ou descontam de crédito pré-pago (`POST /api/credito?usd=10`).

## Endpoints

* `GET /okf/:arquivo` — OKF bundle (Open Knowledge Format v0.1): markdown with frontmatter so an agent reads the whole product without parsing HTML.
* `GET /.well-known/:arquivo` — Machine discovery before the home page: `api-catalog` (RFC 9727, a linkset with the API and the MCP), `security.txt` (RFC 9116) and `mcp-registry-auth` (the official MCP registry key).
* `GET /apis.json` — APIs.json (apisjson.org, 0.19): the index APIs.io harvests — the API, the MCP, OpenAPI, guide and OKF bundle in one file. Also at `/.well-known/apis.json`.
* `GET /feed.xml` — RSS 2.0 of the most recently published listings.
* `GET /feed.json` — JSON Feed 1.1 of the most recently published listings — the same stream as the RSS.
* `GET /api/` — Self-describing index: the whole API surface, with quota and quickstart.
* `GET /api/health` — Liveness and the commit deployed right now — it is how the smoke waits for its own deploy.
* `POST /mcp` — MCP server over HTTP (Streamable HTTP, JSON-RPC 2.0) — plugs into the client with nothing to install.
* `POST /api/guest` — Creates a guest `mr_…` — it is the identity that likes, comments and visits.
* `GET /api/listings` — The public mosaic: paginated search of the catalog's live listings.
* `GET /api/facets` — The whole catalog's counts by kind, provenance, category and repository state.
* `GET /v0.1/servers` — MCP subregistry in the Official Registry format (spec v0.1), cursor-paginated.
* `GET /api/listings/:id` — One listing's page. The owner sees their own even when pending or hidden.
* `GET /api/go/:id` — Hop to the listing's URL: redirects and counts the visit.
* `GET /api/listings/:id/comments` — Public comments on a live listing.
* `POST /api/listings/:id/comments` — Writes a comment on the listing. Cap of 20 per hour per owner.
* `DELETE /api/comments/:id` — Deletes a comment of yours. Someone else's comment answers 404, not 403.
* `POST /api/listings/:id/like` — Likes the listing. Calling again does not add up: the counter counts people.
* `DELETE /api/listings/:id/like` — Unlikes and gives the point back to the public counter.
* `POST /api/listings` — Registers an MCP server, a skill or a plugin in the catalog. It comes in as `pending`.
* `PATCH /api/listings/:id` — Edits a listing of yours. Changing the URL sends it back to the queue.
* `GET /api/me/listings` — The owner's listings in any state, including pending and hidden.
* `GET /api/me` — The session's account and, for the admin, the load state.
* `GET /api/me/ui` — The owner's screen preferences: search, filter, sort and theme.
* `PUT /api/me/ui` — Stores the owner's screen preferences, replacing the previous ones.
* `POST /api/auth/start` — Sends the 6-digit code by e-mail to create the account or sign in to it.
* `POST /api/auth/verify` — Exchanges the code for a `sess_…` session.
* `POST /api/auth/claim` — Ties a guest to the account: its likes and comments become the account's.
* `POST /api/auth/logout` — Invalidates the current session.
* `GET /api/billing` — x402 configuration in force and the agent prices for contact and publishing.
* `POST /api/contact` — Talks to support: a human solves Turnstile, an agent pays $0.10 in x402.
* `POST /api/visit` — Ping from the interface that increments the day's visits. Agents need not call it.
* `GET /api/metrics` — Metrics of the last 7 days. With the operator token, includes payments.
* `GET /api/fila` — The public snapshot of the enrichment queue: how much of the catalog has been checked.
* `POST /api/admin/fila` — The enrichment robot pushes the snapshot of its own queue here.
* `POST /api/admin/repos` — The enricher writes here what it found out about a repository: stars, forks, state.
* `GET /api/admin/listings` — The moderation queue. Without a filter, brings what is pending.
* `POST /api/admin/listings/:id` — Decides the fate of a listing in the queue: approve, hide or block.
* `GET /api/admin/carga` — State of the catalog's load sources: last batch, count and failures.
* `POST /api/admin/carga` — Triggers a load batch or marks a failure alert as seen.
* `POST /api/credito` — Top up prepaid credit: pay once with x402 and get the token that debits on any API of the house.
* `GET /api/credito` — Credit balance and statement — the latest movements, without returning the token.

Catálogo completo: https://agentalog.com/llms-full.txt · OpenAPI: https://agentalog.com/openapi.json
