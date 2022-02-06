#!/bin/sh


source ../version.config
build_version:$build_version


echo "Packaging Build version >>>> "$build_version

branch_name=$(git symbolic-ref -q HEAD)
branch_name=${branch_name##refs/heads/}
branch_name=${branch_name:-HEAD}


echo "The branch to package is  >>>> $branch_name and the version is >>>> $build_version "

package_name="$branch_name-$build_version"
echo "package_name"


##### Zip the files
zip -r ../$package_name.zip ../src



