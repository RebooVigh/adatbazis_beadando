CREATE TABLE Tanulok (
    tanulo_id INT PRIMARY KEY,
    nev VARCHAR(100) NOT NULL,
    szuletesi_datum DATE,
    email VARCHAR(100),
    telefon VARCHAR(20)
);

CREATE TABLE Oktatok (
    oktato_id INT PRIMARY KEY,
    nev VARCHAR(100) NOT NULL,
    telefon VARCHAR(20),
    jogositvany_tipus VARCHAR(10)
);

CREATE TABLE Tanfolyamok (
    tanfolyam_id INT PRIMARY KEY,
    nev VARCHAR(100) NOT NULL,
    tipus VARCHAR(20),
    ar INT
);

CREATE TABLE Beiratkozasok (
    beiratkozas_id INT PRIMARY KEY,
    tanulo_id INT NOT NULL,
    tanfolyam_id INT NOT NULL,
    oktato_id INT NOT NULL,
    datum DATE,
    FOREIGN KEY (tanulo_id) REFERENCES Tanulok(tanulo_id),
    FOREIGN KEY (tanfolyam_id) REFERENCES Tanfolyamok(tanfolyam_id),
    FOREIGN KEY (oktato_id) REFERENCES Oktatok(oktato_id)
);

CREATE TABLE Vizsgak (
    vizsga_id INT PRIMARY KEY,
    tanulo_id INT NOT NULL,
    datum DATE,
    tipus VARCHAR(20),  
    eredmeny VARCHAR(20), 
    FOREIGN KEY (tanulo_id) REFERENCES Tanulok(tanulo_id)
);
