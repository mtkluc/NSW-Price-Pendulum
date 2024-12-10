-- 1. Cleaned Table
CREATE TABLE "Cleaned" (
    "DistrictCode" VARCHAR(10) NOT NULL,
    "PropertyId" INT NULL,
    "PropertyName" VARCHAR(255) NULL,
    "PropertyUnitNumber" VARCHAR(10) NULL,
    "PropertyStreetName" VARCHAR(255) NULL,
    "PropertyLocality" VARCHAR(255) NOT NULL,
    "PropertyPostCode" INT NULL,
    "Area" NUMERIC(10, 2) NULL,
    "AreaType" VARCHAR(10) NULL,
    "ContractDate" DATE NULL,
    "SettlementDate" DATE NOT NULL,
    "PurchasePrice" NUMERIC(15, 2) NOT NULL,
    "PrimaryPurpose" VARCHAR(50) NULL,
    "StrataLotNumber" INT NULL,
    "AreaM2" NUMERIC(15, 2) NULL,
    "SettlementYear" INT NOT NULL,
    "SettlementMonth" INT NOT NULL,
    "PricePerM2" NUMERIC(10, 2) NULL,
    "UniqueSaleKey" INT NOT NULL,
	 CONSTRAINT "pk_Cleaned" PRIMARY KEY ("UniqueSaleKey")
);

-- 2. House Table
CREATE TABLE "House" (
    "DistrictCode" VARCHAR(10) NOT NULL,
    "PropertyId" INT NULL,
    "PropertyName" VARCHAR(255) NULL,
    "PropertyUnitNumber" VARCHAR(10) NULL,
    "PropertyStreetName" VARCHAR(255) NULL,
    "PropertyLocality" VARCHAR(255) NOT NULL,
    "PropertyPostCode" INT NULL,
    "Area" NUMERIC(10, 2) NULL,
    "AreaType" VARCHAR(10) NULL,
    "ContractDate" DATE NULL,
    "SettlementDate" DATE NOT NULL,
    "PurchasePrice" NUMERIC(15, 2) NOT NULL,
    "PrimaryPurpose" VARCHAR(50) NOT NULL,
    "StrataLotNumber" INT NULL,
    "AreaM2" NUMERIC(15, 2) NULL,
    "SettlementYear" INT NOT NULL,
    "SettlementMonth" INT NOT NULL,
    "PricePerM2" NUMERIC(10, 2) NULL,
    "UniqueSaleKey" INT NOT NULL,
	CONSTRAINT "pk_House" PRIMARY KEY ("UniqueSaleKey")
);

-- 3. House Grouped Table
CREATE TABLE "House_Grouped" (
    "PropertyLocality" VARCHAR(255) NOT NULL,
    "SettlementYear" INT NOT NULL,
    "AvgPricePerM2" NUMERIC(10, 2) NULL,
	CONSTRAINT "uq_House_Grouped" UNIQUE ("PropertyLocality", "SettlementYear")
);

-- 4. Units Table
CREATE TABLE "Units" (
    "DistrictCode" VARCHAR(10) NOT NULL,
    "PropertyId" INT NULL,
    "PropertyName" VARCHAR(255) NULL,
    "PropertyUnitNumber" VARCHAR(10) NULL,
    "PropertyStreetName" VARCHAR(255) NOT NULL,
    "PropertyLocality" VARCHAR(255) NOT NULL,
    "PropertyPostCode" INT NULL,
    "Area" NUMERIC(10, 2) NULL,
    "AreaType" VARCHAR(10) NULL,
    "ContractDate" DATE NULL,
    "SettlementDate" DATE NOT NULL,
    "PurchasePrice" NUMERIC(15, 2) NOT NULL,
    "PrimaryPurpose" VARCHAR(50) NOT NULL,
    "StrataLotNumber" INT NULL,
    "AreaM2" NUMERIC(15, 2) NULL,
    "SettlementYear" INT NOT NULL,
    "SettlementMonth" INT NOT NULL,
    "PricePerM2" NUMERIC(10, 2) NULL,
    "UniqueSaleKey" INT NOT NULL,
	 CONSTRAINT "pk_Units" PRIMARY KEY ("UniqueSaleKey")
);

-- 5. Units Grouped Table
CREATE TABLE "Units_Grouped" (
    "PropertyLocality" VARCHAR(255) NOT NULL,
    "SettlementYear" INT NOT NULL,
    "AvgPricePerM2" NUMERIC(10, 2) NULL,
	CONSTRAINT "uq_Units_Grouped" UNIQUE ("PropertyLocality", "SettlementYear")
);
