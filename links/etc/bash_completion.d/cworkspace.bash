#!/bin/bash
# set -e # Exit immediately on error
# set -x # Print commands and their arguments as they are executed

_cworkspace_completion() {
  workspace_files=$(ls ~/.vscode/workspaces)
  workspaces=()
  for i in $workspace_files; do
    workspaces+=(${i%.code-workspace*})
  done
  string="${workspaces[@]}"
  COMPREPLY+=($(compgen -W "$string" ${COMP_WORDS[1]}))
}
complete -F _cworkspace_completion cworkspace
