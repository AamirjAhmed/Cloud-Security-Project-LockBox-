if [ $# -ne 2 ]; then
	echo "upload usage: ./upload.sh username filename"
	echo "Uploads a file stored locally to the folder reserved for the specified user."
else
	echo "Attempting to upload file ${2} for user ${1}."
	aws s3 cp ${2} s3://lockbox-primary-bucket/${1}/${2}
fi
