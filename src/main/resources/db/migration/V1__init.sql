CREATE TABLE voters (
                        id BIGSERIAL PRIMARY KEY,
                        first_name VARCHAR(255),
                        last_name VARCHAR(255),
                        has_voted BOOLEAN DEFAULT FALSE
);


-- Optional sample data
INSERT INTO voters (first_name, last_name, has_voted) VALUES ('John', 'Doe', false), ('Jane', 'Smith', false);
