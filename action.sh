#!/bin/sh
set -e
set -u


main () {
    generate_jekyll_site
    generate_mdbook_content
}

generate_jekyll_site () {
    (
        cd "$CHIPMUNKDOCS_SRC_DIR"
        rake build
    )
}

generate_mdbook_content () {
    (
        cd "$CHIPMUNKDOCS_SRC_DIR"
        PATH="${PATH}:/opt/mdbook" rake book
    )
}


main
