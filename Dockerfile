FROM quay.io/keycloak/keycloak:latest

ADD keycloak.jks /opt/keycloak/keystore/keycloak.jks

# Set environment variables
ENV KEYCLOAK_ADMIN=admin \
    KEYCLOAK_ADMIN_PASSWORD=admin \
    KC_HTTPS_KEY_STORE_FILE=/opt/keycloak/keystore/keycloak.jks \
    KC_HTTPS_KEY_STORE_PASSWORD=shoa123! \
    KC_HOSTNAME=keycloak-shoa.up.railway.app \
    KC_HOSTNAME_PORT=443 \
    KC_HOSTNAME_ADMIN_URL=https://keycloak-shoa.up.railway.app \
    KC_PROXY=edge

# Start Keycloak
CMD ["start"]

