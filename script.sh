FLATBUILD_NAME=""

until [ ${#FLATBUILD_NAME} -gt 0 ]
do
  echo "Script is checking for name"
  FLATBUILD_NAME=%buildkite-agent meta-data get flatbuild_name%
  echo "FLATBUILD_NAME is $NAME"
  sleep 5
done


