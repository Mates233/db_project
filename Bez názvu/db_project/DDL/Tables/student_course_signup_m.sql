CREATE TABLE Zápisy (
    Student_ID INT,
    Kurz_ID INT,
    Datum_zápisu DATE,
    PRIMARY KEY (Student_ID, Kurz_ID),
    FOREIGN KEY (Student_ID) REFERENCES Studenti(ID),
    FOREIGN KEY (Kurz_ID) REFERENCES Kurzy(ID)
);