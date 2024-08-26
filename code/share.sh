if [ $# -ne 2 ]; then
	echo "share usage: ./share.sh username filename"
	echo "Generates a temporary link to the file specified belonging to the user specified."
else
	echo "Attempting to generate link to file ${2} for user ${1}."
	aws s3 presign s3://lockbox-primary-bucket/${1}/${2}
fi
