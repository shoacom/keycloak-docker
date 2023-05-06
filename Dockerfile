FROM quay.io/keycloak/keycloak:latest

ADD keycloak.jks /opt/keycloak/keystore/keycloak.jks

# Set environment variables
ENV KEYCLOAK_ADMIN=admin \
    KEYCLOAK_ADMIN_PASSWORD=admin \
    KC_HTTP_RELATIVE_PATH=auth \
    KC_HTTPS_KEY_STORE_FILE=/opt/keycloak/keystore/keycloak.jks \
    KC_HTTPS_KEY_STORE_PASSWORD=shoa123! \
    KC_PROXY=edge

# Start Keycloak
CMD ["start"]

