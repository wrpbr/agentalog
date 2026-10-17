# Agent Auto Log MCP server

Agent Auto Log (Agentalog) helps an assistant find MCP servers, agent skills and plugins.
Each listing provides its source and available repository information. The service also provides tool lists,
change history and review signals. This repository contains the connection settings and a user skill.
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

Use IDs returned by search. Cite the source of each recommendation. Review signals are observations with limits,
not a guarantee that a tool is safe. Agentalog is independent of the Official MCP Registry and links to its sources.

## Access and cost

Server discovery requires no account. Some searches, reviews and monitoring operations use paid access.
If a tool requires payment, complete the purchase on the website. The connection above disables payment
transactions through the assistant. Read the current conditions when opening the paid feature.

## Documentation and support

- [Setup and API documentation](https://agentalog.com/developers)
- [Live API contract](https://agentalog.com/openapi.json)
- [Agent reference](https://agentalog.com/llms.txt)

Send support requests to contato@agentalog.com or open an issue here. The files in this repository use the MIT-0
license. The hosted service has separate terms. Its source code is not included.
