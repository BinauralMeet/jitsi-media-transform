MODULE_NAME=jitsi-media-transform
REPO_HOME=C:/Home/hase/debian/jitsi-maven-repository

# Deploy the module.
mvn deploy -DaltDeploymentRepository=jmrs::default::file://$REPO_HOME/snapshots

# Update the maven repository.
pushd .
cd $REPO_HOME/
git pull -r origin main
git add snapshots/
git commit -m "Updates $MODULE_NAME."
git push origin main
popd
