CREATE TABLE Users (
  UserId uniqueidentifier NOT NULL PRIMARY KEY default NEWID(),
  Username nvarchar(30),
  PasswordHash nvarchar(50),
)

CREATE TABLE UserIdentity (
  IdentityId uniqueidentifier NOT NULL PRIMARY KEY default NEWID(),
  Provider nvarchar(20),
  Uid uniqueidentifier,
  UserId uniqueidentifier FOREIGN KEY REFERENCES Users(UserId)
)

CREATE TABLE Contacts (
  ContactId uniqueidentifier NOT NULL PRIMARY KEY default NEWID(),
  UserId uniqueidentifier FOREIGN KEY REFERENCES Users(UserId)
)

CREATE TABLE ContactWork (
  WorkId uniqueidentifier NOT NULL PRIMARY KEY default NEWID(),
  Company nvarchar(30),
  JobTitle nvarchar(20),
  Department nvarchar(30),
  ContactId uniqueidentifier FOREIGN KEY REFERENCES Contacts(ContactId)
)

CREATE TABLE ContactLocation (
  LocationId uniqueidentifier NOT NULL PRIMARY KEY default NEWID(),
  Country nvarchar(40),
  Address1 nvarchar(40),
  Address2 nvarchar(40),
  City nvarchar(40),
  State nvarchar(40),
  ZipCode nvarchar(20),
  ContactId uniqueidentifier FOREIGN KEY REFERENCES Contacts(ContactId)
)

CREATE TABLE ContactField (
  FieldId uniqueidentifier NOT NULL PRIMARY KEY default NEWID(),
  FieldTitle nvarchar(30),
  FieldData nvarchar(30),
  ContactId uniqueidentifier FOREIGN KEY REFERENCES Contacts(ContactId)
)

CREATE TABLE ContactPersonal (
  PersonalId uniqueidentifier NOT NULL PRIMARY KEY default NEWID(),
  Prefix nvarchar(10),
  FirstName nvarchar(30),
  MiddleName nvarchar(30),
  LastName nvarchar(30),
  Suffix nvarchar(10),
  Birthday date,
  Image nvarchar(30),
  ContactId uniqueidentifier FOREIGN KEY REFERENCES Contacts(ContactId)
)

CREATE TABLE CommunicationLabel (
  LabelId tinyint NOT NULL PRIMARY KEY,
  Label nvarchar(20),
)

CREATE TABLE ContactPhone (
  PhoneId uniqueidentifier NOT NULL PRIMARY KEY default NEWID(),
  Phone nvarchar(20),
  LabelId tinyint FOREIGN KEY REFERENCES CommunicationLabel(LabelId),
  ContactId uniqueidentifier FOREIGN KEY REFERENCES Contacts(ContactId)
)

CREATE TABLE ContactEmail (
  EmailId uniqueidentifier NOT NULL PRIMARY KEY default NEWID(),
  Email nvarchar(30),
  LabelId tinyint FOREIGN KEY REFERENCES CommunicationLabel(LabelId),
  ContactId uniqueidentifier FOREIGN KEY REFERENCES Contacts(ContactId)
)
