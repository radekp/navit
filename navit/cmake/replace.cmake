file(READ "${SRC}" OUTPUT_LINES)
string(REGEX REPLACE "${MATCHES}" "${REPLACE}" OUTPUT_LINES "${OUTPUT_LINES}")
file(WRITE ${DST} ${OUTPUT_LINES})
