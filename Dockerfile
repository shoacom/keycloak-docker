FROM quay.io/keycloak/keycloak:latest

# Set environment variables
ENV KEYCLOAK_ADMIN=admin \
    KEYCLOAK_ADMIN_PASSWORD=admin

# Start Keycloak
CMD ["start-dev"]
