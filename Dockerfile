# Derived from official mysql image (our base image)
FROM mysql/mysql-server:5.7

# Add the content of the sql/ directory
# All scripts in docker-entrypoint-initdb.d/ are automatically executed during container startup in alphabetical order
COPY ./sql/ /docker-entrypoint-initdb.d/
