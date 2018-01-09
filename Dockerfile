FROM iron/base

WORKDIR /app
COPY main /app/

ENTRYPOINT ["./main"]