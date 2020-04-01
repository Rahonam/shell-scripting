# gcloud container images list --project <project>

# IMGS=`gcloud container images list --filter="name = 'gcr.io/<project>/<image>'"`
# echo "$IMGS"

# gcloud container images list-tags gcr.io/<project>/<image> --filter='-tags:*' --format='get(digest)' --limit=unlimited

main(){
    PROJECT="${1}"
    IMG="${2}"
    for name in $(gcloud container images list --project ${PROJECT} --format='get(name)'); do
        (
            
            if echo "$name" | grep -q "${IMG}"; then
                echo "${name}"
                
                #for untagged images
                DIGEST=`gcloud container images list-tags "${name}" --filter='-tags:*' --format='get(digest)'`
                if [ ${#DIGEST} -ge 5 ]; then
                    gcloud container images delete  -q --force-delete-tags "${name}@${DIGEST}"
                
                #delete all tagged images
                else gcloud container images delete "${name}" -q --force-delete-tags
                
                fi
            fi
        )
    done
}

main "${1}" "${2}"

#sh clean_images.sh <project> <substring of image name>