CREATE TABLE Kurzy (
    ID INT PRIMARY KEY,
    Název VARCHAR(100),
    Kredity INT,
    Učitel_ID INT,
    FOREIGN KEY (Učitel_ID) REFERENCES Učitelé(ID)
);