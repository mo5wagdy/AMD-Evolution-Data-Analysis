CREATE TABLE Products (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(255),
    Category VARCHAR(50), -- CPU, GPU, etc.
    Series VARCHAR(50),   -- Ryzen, EPYC, Radeon, etc.
    LaunchDate DATE,
    Price DECIMAL(10,2),
    PerformanceScore FLOAT, -- Benchmark score (if available)
    Competitor VARCHAR(255) -- Intel, Nvidia, etc.
);
CREATE TABLE Sales (
    SaleID INT PRIMARY KEY,
    ProductID INT,
    Region VARCHAR(100),
    SalesUnits INT,
    Revenue DECIMAL(15,2),
    SaleDate DATE,
    FOREIGN KEY (ProductID) REFERENCES Products(ProductID)
);
CREATE TABLE Marketing_Campaigns (
    CampaignID INT PRIMARY KEY,
    CampaignName VARCHAR(255),
    StartDate DATE,
    EndDate DATE,
    Budget DECIMAL(15,2),
    TargetRegion VARCHAR(100),
    TargetAudience VARCHAR(255),
    SalesImpact FLOAT -- % change in sales
);
CREATE TABLE Stock_Performance (
    StockID INT PRIMARY KEY,
    StockDate DATE,
    OpenPrice DECIMAL(10,2),
    ClosePrice DECIMAL(10,2),
    HighPrice DECIMAL(10,2),
    LowPrice DECIMAL(10,2),
    TradingVolume BIGINT
);