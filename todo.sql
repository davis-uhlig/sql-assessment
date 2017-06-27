CREATE TABLE todos (
id SERIAL PRIMARY KEY,
title VARCHAR(225) NOT NULL,
details TEXT NULL,
priority INTEGER NOT NULL DEFAULT 1,
created_at TIMESTAMP NOT NULL,
completed_at TIMESTAMP NULL
);

INSERT INTO todos (title, details, priority, created_at, completed_at) VALUES ('Do the assessment', 'Complete the multiple choice quiz before lunch', 5, '2017-06-27 2:29', '2017-06-27 2:35');
INSERT INTO todos (title, priority, created_at) VALUES ('Beat Isaac In Ping Pong', 1, '2017-06-27 2:46');
INSERT INTO todos(title, details, priority, created_at) VALUES ('Do the Project', 'Finish the project after lunch before 4', 5, '2017-06-27 2:57');
INSERT INTO todos(title, details, priority, created_at) VALUES ('Go to Tutoring', 'Review SQL at tutoring', 3, '2017-06-27 2:59');
INSERT INTO todos(title, details, priority, created_at) VALUES ('Lecture Notes', 'Review lecture notes for tomorrow', 2, '2017-06-27 3:01');

SELECT * FROM todos WHERE completed_at IS NOT NULL;
SELECT * FROM todos WHERE priority > 1;
UPDATE todos SET completed_at = '2017-06-27 3:13' WHERE id = 3;
DELETE FROM todos WHERE completed_at IS NOT NULL;
