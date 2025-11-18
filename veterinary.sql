-- veterinary.sql file
CREATE TABLE Pets (
    PetID INT PRIMARY KEY,
    Name VARCHAR(50),
    Species VARCHAR(50),
    Breed VARCHAR(50),
    Age INT,
    OwnerID INT,
    FOREIGN KEY (OwnerID) REFERENCES Owners(OwnerID)
);