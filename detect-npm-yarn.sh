if [ -f "$GITHUB_WORKSPACE/yarn.lock" ]; then
  echo "manager=yarn" >> $GITHUB_OUTPUT
  echo "command=install" >> $GITHUB_OUTPUT
  exit 0
elif [ -f "$GITHUB_WORKSPACE/package.json" ]; then
  echo "manager=npm" >> $GITHUB_OUTPUT
  echo "command=ci" >> $GITHUB_OUTPUT
  exit 0
else
  echo "Unable to determine package manager"
  exit 1
fi