create table if not exists organizations (
    id uuid not null unique,
    created_by uuid not null,
    created_timestamp timestamp with time zone not null,
    display_name VARCHAR(255) not null unique,
    primary key (id),
    foreign key (created_by) references users (id)
)