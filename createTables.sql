CREATE TABLE Week_Dates (
    week_id INT PRIMARY KEY,
    week_start_date DATE,
    week_end_date DATE
);

CREATE TABLE Billboard_Hot100 (
    rank INT,
    title VARCHAR(255),
    artist VARCHAR(255),
    weeks_at_no1 INT,
    last_week INT,
    peak_position INT,
    weeks_on_chart INT,
    detail VARCHAR(255),
    week_id INT, -- Clave externa que hace referencia a Week_Dates
    FOREIGN KEY (week_id) REFERENCES Week_Dates(week_id)
);
