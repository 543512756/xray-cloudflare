FROM wjy20030407/xray-cloudflare
ENV UUID="62c4a147-7bc9-4479-b415-5225f9e1d352"
COPY docker.sh .
RUN chmod +x docker.sh
EXPOSE 443
ENTRYPOINT ["./docker.sh"]
