#!/usr/bin/env bash
set -euo pipefail

SKILLS=(
  api-contract-writer
  api-error-model-designer
  crud-surface-reviewer
  dao-pattern-builder
  data-migration-planner
  entity-model-designer
  index-suggestion-writer
  jdbc-vs-jpa-selector
  orm-mapping-reviewer
  persistence-test-planner
  query-complexity-reviewer
  repository-layer-designer
  schema-normalizer
  transaction-boundary-checker
)

for skill in "${SKILLS[@]}"; do
  rm -rf "$HOME/.claude/skills/$skill" "$HOME/.agents/skills/$skill"
  echo "Removed $skill"
done
