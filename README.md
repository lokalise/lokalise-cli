### Description 
Lokalise command line tool (https://docs.lokalise.com/article/44l4f1hiZM-lokalise-cli-tool) in Docker container. Use it to import/export data with Lokalise (https://lokalise.com).
https://hub.docker.com/r/lokalise/lokalise-cli/

### Export from Lokalise to local directory
    API_TOKEN=<your api token>
    PROJECT_ID=<project id>
    LOCAL_DIR=/tmp
    FILE_FORMAT=json

    docker run \
        	-v ${LOCAL_DIR}:/opt/dest \
        	lokalise/lokalise-cli lokalise \
        	--token ${API_TOKEN} \
        	export ${PROJECT_ID} \
        	--type json \
        	--dest /opt/dest


### Import local file to Lokalise
    API_TOKEN=<your api token>
    PROJECT_ID=<project id>
    LOCAL_FILE=/tmp/en.json
    LANG_ISO=en

    docker run \
        	-v ${LOCAL_FILE}:/opt/src/${LOCAL_FILE} \
        	lokalise/lokalise-cli lokalise \
        	--token ${API_TOKEN} \
        	import ${PROJECT_ID} \
        	--file /opt/src/${LOCAL_FILE} \
        	--lang_iso ${LANG_ISO}
