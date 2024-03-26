-- Create Date Dimension Table
CREATE TABLE Date_Dim (
    Date_ID SERIAL PRIMARY KEY,
    Date DATE
);

-- Create Customer Dimension Table
CREATE TABLE Customer_Dim (
    Customer_ID SERIAL PRIMARY KEY,
    Customer_Name VARCHAR(255),
    Gender VARCHAR(10),
    Annual_Income DECIMAL,
	phone DECIMAL
);

-- Create Dealer Dimension Table
CREATE TABLE Dealer_Dim (
    Dealer_ID SERIAL PRIMARY KEY,
    Dealer_Name VARCHAR(255),
    Dealer_No VARCHAR(20),
    Dealer_Region VARCHAR(50)
);

-- Create Car Dimension Table
CREATE TABLE Car_Dim (
    Car_ID SERIAL PRIMARY KEY,
	Company VARCHAR(255),
    Model VARCHAR(255),
    Engine VARCHAR(50),
    Transmission VARCHAR(50),
    Color VARCHAR(50),
    Body_Style VARCHAR(50)
);

-- Create Sales Fact Table
CREATE TABLE Sales_Fact (
    Sales_ID SERIAL PRIMARY KEY,
    Date_ID INT REFERENCES Date_Dim(Date_ID),
    Customer_ID INT REFERENCES Customer_Dim(Customer_ID),
    Dealer_ID INT REFERENCES Dealer_Dim(Dealer_ID),
    Car_ID INT REFERENCES Car_Dim(Car_ID),
    Price DECIMAL
);
