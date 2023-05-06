FROM quay.io/keycloak/keycloak:latest

# Set environment variables
ENV KEYCLOAK_ADMIN=admin \
    KEYCLOAK_ADMIN_PASSWORD=admin \
    KC_HTTP_RELATIVE_PATH=auth \
    KC_PROXY=edge

# Start Keycloak
CMD ["start-dev"]

