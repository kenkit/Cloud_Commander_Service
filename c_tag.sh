VERSION=`git tag --sort=-refname |sed -n 2p`
VERSION_BITS=(${VERSION//./ })
VNUM1=${VERSION_BITS[0]}
VNUM2=${VERSION_BITS[1]}
VNUM3=${VERSION_BITS[2]}
VNUM3=$((VNUM3+1))
NEW_TAG="$VNUM1.$VNUM2.$VNUM3"
echo $NEW_TAG