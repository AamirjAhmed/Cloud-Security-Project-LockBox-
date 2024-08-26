if [ $# -ne 2 ]; then
	echo "download usage: ./download username filename"
	echo "Downloads the specified file from the folder for the specified user to the local directory."
else
	echo "Attempting to download file ${2} for user ${1}"
	aws s3 cp s3://lockbox-primary-bucket/${1}/${2} ${2}
fi
