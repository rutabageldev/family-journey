#!/usr/bin/env bash
# One-time: create a ruleset so main only changes via PR, with github-actions[bot]
# as the sole bypass (for the index workflow). Run from a shell with `gh auth login` done.
set -euo pipefail
REPO="${1:-rutabageldev/family-journey}"
gh api -X POST "repos/$REPO/rulesets" --input - <<'JSON'
{
  "name": "main: PR only",
  "target": "branch",
  "enforcement": "active",
  "conditions": { "ref_name": { "include": ["~DEFAULT_BRANCH"], "exclude": [] } },
  "rules": [
    { "type": "deletion" },
    { "type": "non_fast_forward" },
    { "type": "pull_request",
      "parameters": {
        "required_approving_review_count": 0,
        "dismiss_stale_reviews_on_push": false,
        "require_code_owner_review": false,
        "require_last_push_approval": false,
        "required_review_thread_resolution": false
      }
    }
  ],
  "bypass_actors": [
    { "actor_id": 15368, "actor_type": "Integration", "bypass_mode": "always" }
  ]
}
JSON
echo "ruleset created on $REPO"
