if [ $# -eq 2 ]; then
	printf "\n"
	date=$(date -Iseconds)
	newname="$1-${date:5:8}${date:14:2}"
	unzip "$1" -d "$newname"
	printf "\tCreated map folder \"$newname\" from \"$1\".\n"

	remove=$(grep "level-name=" server.properties)
	remove=${remove:11:5000}
	sed -i "s/level-name=$remove/level-name=$newname/g" server.properties
	printf "\tChanged Minecraft server level from \"$remove\" to \"$newname\".\n"

	pkill -f java-minecraft-map-load-server
	printf "\tKilled Minecraft server.\n"

	bash -c "exec -a java-minecraft-map-load-server java -Xmx3584M -jar $2 nogui &"
	printf "\tStarted Minecraft server \"$2\".\n"

	rm -rf "$remove"
	printf "\tRemoved map folder \"$remove\".\n\n"

elif [ "$1"="--help" ] || [ "$1"="-h" ] || [ "$1"="--h"] || [ "$1"="-help" ]; then
	printf "\n\tUseage: map-load mapname.zip servername.jar\n\n"

else
	printf "\n\tUseage: map-load mapname.zip servername.jar\n\n"
fi
