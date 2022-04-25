#!/bin/bash

TOOLS=(ame  dreme fimo 
glam2scan mast meme 
momo sea streme tomtom 
centrimo dust glam2 
gomo mcast meme-chip 
purge spamo tgene xstreme)

cat << EOF > template
#!/bin/bash

VERSION=5.4.1
PACKAGE=meme-suite
TOOL=TOOL_NAME
DIRECTORY=\$(dirname \$0)

PERSISTENT_FILE_STORAGE=/ocean
if [ -d \$PERSISTENT_FILE_STORAGE ]; then
	OPTIONS="-B \$PERSISTENT_FILE_STORAGE"
fi

if [ -d /local ]; then
	OPTIONS=\$OPTIONS" -B /local"
fi

singularity exec \$OPTIONS \$DIRECTORY/singularity-\$PACKAGE-\$VERSION.sif /opt/bin/\$TOOL "\$@"
EOF

for TOOL in "${TOOLS[@]}"
do
	echo "* "$TOOL
        cp template $TOOL
	sed -i "s/TOOL_NAME/$TOOL/g" $TOOL
	chmod +x $TOOL
        git add $TOOL
done

rm -f template
