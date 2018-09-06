function git_rm_stale_branches --description 'Delete local branches for which remote branch does not exists anymore'
  # first prune all local branches (=> branches for which remote branch does not exists anymore)
  set -l pruned (git remote prune origin)
  # Delete all pruned branches
  if [ $pruned ]
    echo "Pruned {$pruned} branches will be removed."
    git branch -vv | grep 'origin/.*: gone]' | awk '{print $1}' | xargs git branch -d
  else
    echo "Now pruned/gone branches found."
  end
end
