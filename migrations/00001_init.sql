-- +goose Up
-- Users
CREATE TABLE users (
    id INTEGER PRIMARY KEY AUTOINCREMENT, 
    telegram_id INTEGER UNIQUE NOT NULL,
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE workouts (
    id  INTEGER PRIMARY KEY AUTOINCREMENT,
    user_id INTEGER NOT NULL,
    exercise_type TEXT,
    value TEXT,
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP,

    FOREIGN KEY (user_id) REFERENCES users(id)
);

-- +goose Down
DROP TABLE workouts;
DROP TABLE users;

