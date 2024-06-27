

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

-- --------------------------------------------------------

CREATE TABLE muskel (
  muskelID INT PRIMARY KEY AUTO_INCREMENT,
  muskel varchar(50) DEFAULT NULL,
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO muskel (muskelID, muskel) VALUES
(1, 'Arme'),
(2, 'Beime'),
(3, 'Push'),
(4, 'Pull');

-- --------------------------------------------------------

CREATE TABLE user (
  userID INT PRIMARY KEY AUTO_INCREMENT,
  name varchar(50) DEFAULT NULL,
  mail varchar(125) DEFAULT NULL,
  birth DEFAULT NULL,
  password varchar(255) NOT NULL DEFAULT 'default_password',
  size float DEFAULT NULL,
  weight float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO user (userID, name, mail, birth, password, size, weight) VALUES
(1, 'Nanu Bogdan', 'bogtubeSSD@gmail.com', '2005-12-06', 'default_password', 1.83, 77),
(2, 'Linus Behrens', 'Linus@behrens-familie.de', '2005-10-14', 'default_password', 1.83, 68.83);

-- --------------------------------------------------------

CREATE TABLE workout (
  workoutID INT PRIMARY KEY AUTO_INCREMENT,
  datum date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO workout (workoutID, datum) VALUES
(1, '2024-06-27'),
(2, '2024-06-28');

-- --------------------------------------------------------

CREATE TABLE uebung (
  uebungID INT PRIMARY KEY AUTO_INCREMENT,
  uebung varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO uebung (uebungID, uebung) VALUES
(1, 'Bankdruecken'),
(2, 'Schrägbankdruecken'),
(3, 'Dips'),
(4, 'Trizeps-Pushdows');

-- --------------------------------------------------------

CREATE TABLE muskelRELuebung(
    muskelID INT,
    uebungID INT,
    FOREIGN KEY (muskelID) REFERENCES muskel(muskelID),
    FOREIGN KEY (uebungID) REFERENCES uebung(uebungID)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO muskelRELuebung (muskelID, uebungID) VALUES
(1, 4),
(3, 1),
(3, 2),
(4, 3);

-- --------------------------------------------------------

CREATE TABLE uebungRELworkout(
    uebungID INT,
    reps INT,
    gewicht INT,
    workoutID INT,
    FOREIGN KEY (uebungID) REFERENCES uebung(uebungID),
    FOREIGN KEY (workoutID) REFERENCES workout(workoutID)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO uebungRELworkout (muskelID, reps, gewicht, uebungID) VALUES
(1, 24, 50, 1),
(2, 18, 50, 1),
(3, 10, 0, 1),
(4, 28, 20, 1);

-- --------------------------------------------------------

CREATE TABLE userRELworkout(
    userID INT,
    workoutID INT,
    FOREIGN KEY (userID) REFERENCES userID(userID),
    FOREIGN KEY (workoutID) REFERENCES workout(workoutID)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO uebungRELworkout (muskelID, reps, gewicht, uebungID) VALUES
(1, 1),
(2, 2);
