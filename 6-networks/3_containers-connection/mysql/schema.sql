CREATE flaskdocker;
USE flaskdocker;
CREATE TABLE flaskdocker.users (
    id INT(11) NOT NULL AUTO_INCREMENT,
    name VARCHAR(255) DEFAULT NULL,
    PRIMARY KEY (id)
);