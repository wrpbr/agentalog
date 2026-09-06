#!/usr/bin/env bash
# Meta Agent Tools — free calls, no account. 
set -euo pipefail

# Search the registry
curl -s 'https://agentalog.com/api/listings?q=playwright&sort=stars&limit=3'

# Counts by kind, provenance, category and repository state
curl -s https://agentalog.com/api/facets

# Subregistry in the Official MCP Registry format (v0.1)
curl -s https://agentalog.com/v0.1/servers
