-- Insert Questions
INSERT INTO SCAV_QUESTION (id, text, location) VALUES (1, 'At St. Stephen''s Cathedral, how many steps lead to the top of the South Tower?', 'St. Stephen''s Cathedral, Vienna');
INSERT INTO SCAV_QUESTION (id, text, location) VALUES (2, 'In which year was Schönbrunn Palace completed?', 'Schönbrunn Palace, Vienna');
INSERT INTO SCAV_QUESTION (id, text, location) VALUES (3, 'What is the famous golden roof in this Alpine town made of?', 'Altstadt, Innsbruck');
INSERT INTO SCAV_QUESTION (id, text, location) VALUES (4, 'How many gates does the old town of Salzburg have?', 'Altstadt, Salzburg');
INSERT INTO SCAV_QUESTION (id, text, location) VALUES (5, 'What year was Hohenwerfen Castle built?', 'Hohenwerfen Castle, Salzburg');
INSERT INTO SCAV_QUESTION (id, text, location) VALUES (6, 'How many treasures are displayed in the Hofburg Palace''s Treasury?', 'Hofburg Palace, Vienna');
INSERT INTO SCAV_QUESTION (id, text, location) VALUES (7, 'In which year was St. Mark''s Church with the checkered roof originally constructed?', 'St. Mark''s Church, Zagreb');
INSERT INTO SCAV_QUESTION (id, text, location) VALUES (8, 'How old is Egon Schiele when he created his most famous works?', 'Egon Schiele Museum, Český Krumlov');

-- Insert Answers for Question 1 (St. Stephen's steps)
INSERT INTO SCAV_ANSWER (id, text, correct, question_id) VALUES (1, '343 steps', true, 1);
INSERT INTO SCAV_ANSWER (id, text, correct, question_id) VALUES (2, '287 steps', false, 1);
INSERT INTO SCAV_ANSWER (id, text, correct, question_id) VALUES (3, '456 steps', false, 1);
INSERT INTO SCAV_ANSWER (id, text, correct, question_id) VALUES (4, '298 steps', false, 1);

-- Insert Answers for Question 2 (Schönbrunn completion)
INSERT INTO SCAV_ANSWER (id, text, correct, question_id) VALUES (5, '1744', true, 2);
INSERT INTO SCAV_ANSWER (id, text, correct, question_id) VALUES (6, '1722', false, 2);
INSERT INTO SCAV_ANSWER (id, text, correct, question_id) VALUES (7, '1756', false, 2);
INSERT INTO SCAV_ANSWER (id, text, correct, question_id) VALUES (8, '1700', false, 2);

-- Insert Answers for Question 3 (Golden roof material)
INSERT INTO SCAV_ANSWER (id, text, correct, question_id) VALUES (9, '2,657 gold-plated copper tiles', true, 3);
INSERT INTO SCAV_ANSWER (id, text, correct, question_id) VALUES (10, 'Pure gold plates', false, 3);
INSERT INTO SCAV_ANSWER (id, text, correct, question_id) VALUES (11, 'Gilded bronze sheets', false, 3);
INSERT INTO SCAV_ANSWER (id, text, correct, question_id) VALUES (12, 'Gold leaf on wood', false, 3);

-- Insert Answers for Question 4 (Salzburg gates)
INSERT INTO SCAV_ANSWER (id, text, correct, question_id) VALUES (13, 'Six gates', true, 4);
INSERT INTO SCAV_ANSWER (id, text, correct, question_id) VALUES (14, 'Three gates', false, 4);
INSERT INTO SCAV_ANSWER (id, text, correct, question_id) VALUES (15, 'Eight gates', false, 4);
INSERT INTO SCAV_ANSWER (id, text, correct, question_id) VALUES (16, 'Five gates', false, 4);

-- Insert Answers for Question 5 (Hohenwerfen built)
INSERT INTO SCAV_ANSWER (id, text, correct, question_id) VALUES (17, '1077', true, 5);
INSERT INTO SCAV_ANSWER (id, text, correct, question_id) VALUES (18, '1150', false, 5);
INSERT INTO SCAV_ANSWER (id, text, correct, question_id) VALUES (19, '1200', false, 5);
INSERT INTO SCAV_ANSWER (id, text, correct, question_id) VALUES (20, '950', false, 5);

-- Insert Answers for Question 6 (Hofburg treasures)
INSERT INTO SCAV_ANSWER (id, text, correct, question_id) VALUES (21, 'Over 100 treasures', true, 6);
INSERT INTO SCAV_ANSWER (id, text, correct, question_id) VALUES (22, '50 treasures', false, 6);
INSERT INTO SCAV_ANSWER (id, text, correct, question_id) VALUES (23, '75 treasures', false, 6);
INSERT INTO SCAV_ANSWER (id, text, correct, question_id) VALUES (24, '200 treasures', false, 6);

-- Insert Answers for Question 7 (St. Mark's Church constructed)
INSERT INTO SCAV_ANSWER (id, text, correct, question_id) VALUES (25, '1494', true, 7);
INSERT INTO SCAV_ANSWER (id, text, correct, question_id) VALUES (26, '1520', false, 7);
INSERT INTO SCAV_ANSWER (id, text, correct, question_id) VALUES (27, '1450', false, 7);
INSERT INTO SCAV_ANSWER (id, text, correct, question_id) VALUES (28, '1600', false, 7);

-- Insert Answers for Question 8 (Schiele age)
INSERT INTO SCAV_ANSWER (id, text, correct, question_id) VALUES (29, 'In his 20s and early 30s', true, 8);
INSERT INTO SCAV_ANSWER (id, text, correct, question_id) VALUES (30, 'In his 40s', false, 8);
INSERT INTO SCAV_ANSWER (id, text, correct, question_id) VALUES (31, 'In his 50s and 60s', false, 8);
INSERT INTO SCAV_ANSWER (id, text, correct, question_id) VALUES (32, 'In his late teens', false, 8);

-- Reset sequences to avoid conflicts with future inserts
ALTER SEQUENCE SCAV_QUESTION_SEQ RESTART WITH 51;
ALTER SEQUENCE SCAV_ANSWER_SEQ RESTART WITH 51;

