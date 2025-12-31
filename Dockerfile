FROM stoplight/prism:5

COPY openapi.yml /spec/openapi.yml
COPY components /spec/components

EXPOSE 4010

CMD ["mock", "-h", "0.0.0.0", "-p", "4010", "/spec/openapi.yml"]