FROM --platform=linux/arm64 artifactorycloud.saf.com/v-docker/saf-devops/custom-fluentbit-for-opensearch-dynatrace-arm64:DT-5.0
RUN ls -la /
COPY graviton-saf-test.conf /tmp/fluent-bit-config/graviton-saf-test.conf
COPY saf-test-parser.conf /tmp/fluent-bit-config/saf-test-parser.conf
COPY remove_dt.lua /tmp/fluent-bit-config/remove_dt.lua
RUN cat /tmp/fluent-bit-config/remove_dt.lua
RUN cat /tmp/fluent-bit-config/graviton-saf-test.conf
RUN cat /tmp/fluent-bit-config/saf-test-parser.conf
VOLUME ["/tmp", "/tmp/fluent-bit-config"]