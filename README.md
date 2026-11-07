# Agent Auto Log MCP server

Agent Auto Log (Agentalog) helps an assistant find MCP servers, agent skills and plugins.
Inspect a tool's packages, publisher, maintainers, repository and domains before using it.
Watch passes keep collecting and comparing changes after the conversation, with sources, dates and notices.
This repository contains the connection settings and a user skill.
The hosted service runs at [agentalog.com](https://agentalog.com).

## Configure

The server uses Streamable HTTP. No local program is required. Add this to `.vscode/mcp.json` for GitHub Copilot
in VS Code:

```json
{
  "servers": {
    "agentalog": {
      "type": "http",
      "url": "https://agentalog.com/mcp?checkout=site"
    }
  }
}
```

For Cursor, use the same entry under `mcpServers` in `.cursor/mcp.json`. For other clients, select an HTTP server
and enter the URL above. The official registry entry is `com.agentalog/meta-agent-tools`.

## Use

Ask: "Find MCP servers for PostgreSQL and show their source repositories."

- `list_listings` searches MCP servers, skills and plugins.
- `get_listing` reads one result by its ID.
- `get_listing_readme` reads the available documentation.
- `listing_security` reads available review signals and their limits.
- `listing_history` reads recorded changes.
- `listing_dependencies` reads declared packages, repositories and cached public evidence for free.
- `watch_dependency_changes` enables continuing checks with an existing paid watch pass.
- `dependency_changes` reads before/after evidence and dates from your watch.

Use IDs returned by search. Cite the source of each recommendation. Review signals are observations with limits,
not a guarantee that a tool is safe. Agentalog is independent of the Official MCP Registry and links to its sources.

## Access and cost

Start with the free catalog and cached dependency evidence. A single watch slot, Team or Business pass includes
continuing package, publisher, repository and domain checks. Reuse your active pass. The service records changes
and verifiable expiry reminders at 30, 15 and 7 days. Missing evidence stays unknown.
If you need a pass, complete the purchase on the website. The connection above disables payment transactions
through the assistant. Read the current price and conditions when opening the paid feature.
We have not measured equivalent-task token or money savings.

## Documentation and support

- [Setup and API documentation](https://agentalog.com/developers)
- [Live API contract](https://agentalog.com/openapi.json)
- [Agent reference](https://agentalog.com/llms.txt)
- [Package publisher and domain watch guide](https://agentalog.com/guides/package-publisher-watch)

Send support requests to contato@agentalog.com or open an issue here. The files in this repository use the MIT-0
license. The hosted service has separate terms. Its source code is not included.
