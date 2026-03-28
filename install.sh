#!/usr/bin/env bash
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

install_skill() {
  local skill="$1"
  mkdir -p "$HOME/.claude/skills/$skill" "$HOME/.agents/skills/$skill"
  cp "$SCRIPT_DIR/.claude/skills/$skill/SKILL.md" "$HOME/.claude/skills/$skill/SKILL.md"
  cp "$SCRIPT_DIR/.agents/skills/$skill/SKILL.md" "$HOME/.agents/skills/$skill/SKILL.md"
  echo "Installed $skill"
}

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
  install_skill "$skill"
done
