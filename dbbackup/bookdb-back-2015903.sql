BEGIN TRANSACTION;
CREATE TABLE review (
	id INTEGER NOT NULL, 
	text VARCHAR(1000) NOT NULL, 
	date VARCHAR(250), 
	reviewer_name VARCHAR(250), 
	user_id INTEGER NOT NULL, 
	book_id INTEGER NOT NULL, 
	PRIMARY KEY (id), 
	FOREIGN KEY(user_id) REFERENCES user (id), 
	FOREIGN KEY(book_id) REFERENCES book (id)
);
INSERT INTO `review` VALUES (6,'A conprehensive guide to animantion','2015-09-03 04:43:10','Sran Yaswa',1,9);
INSERT INTO `review` VALUES (7,'A classical approach of drawing the female figure','2015-09-03 06:50:45','',2,13);
INSERT INTO `review` VALUES (8,'Funny way to learn to draw comics','2015-09-03 14:51:02','Sran Yaswa',1,16);
INSERT INTO `review` VALUES (9,'Great lessons from a great master','2015-09-03 15:01:42','Sran Yaswa',1,13);
INSERT INTO `review` VALUES (10,'Published posthumous, this is a 3 volume set','2015-09-03 15:33:48','Sran Yaswa',1,10);
INSERT INTO `review` VALUES (11,'Will was great artist and storyteller','2015-09-03 15:34:35','Sran Yaswa',1,10);
INSERT INTO `review` VALUES (12,'A wonderfully made bad book','2015-09-03 15:36:52','Sran Yaswa',1,18);
COMMIT;
