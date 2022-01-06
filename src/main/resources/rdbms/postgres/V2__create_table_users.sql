create table if not exists users (
    id uuid not null unique,
    principal VARCHAR(255) not null unique,
    display_name VARCHAR(255) not null,
    sync_source idp not null,
    last_connection_timestamp timestamp with time zone not null,
    last_connection_inet inet not null,
    primary key (id, principal)
)