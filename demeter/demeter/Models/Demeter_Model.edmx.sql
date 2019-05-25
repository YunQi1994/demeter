
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 05/25/2019 21:46:47
-- Generated from EDMX file: C:\Users\ozlem\source\repos\demeter\demeter\demeter\Models\Demeter_Model.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [DemeterDatabase];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------


-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------


-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'Childcares'
CREATE TABLE [dbo].[Childcares] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Address] nvarchar(max)  NOT NULL,
    [BusinessType] nvarchar(max)  NOT NULL,
    [Latitude] nvarchar(max)  NOT NULL,
    [Longitude] nvarchar(max)  NOT NULL,
    [NameOfBusiness] nvarchar(max)  NOT NULL,
    [PhoneNumber] nvarchar(max)  NOT NULL,
    [Suburb] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'Schools'
CREATE TABLE [dbo].[Schools] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [EducationSector] nvarchar(max)  NOT NULL,
    [SchoolName] nvarchar(max)  NOT NULL,
    [AddressLine] nvarchar(max)  NOT NULL,
    [AddressType] nvarchar(max)  NOT NULL,
    [AddressTown] nvarchar(max)  NOT NULL,
    [AddressState] nvarchar(max)  NOT NULL,
    [AddressPostcode] nvarchar(max)  NOT NULL,
    [FullPhoneNo] nvarchar(max)  NOT NULL,
    [LGAID] nvarchar(max)  NOT NULL,
    [LGAName] nvarchar(max)  NOT NULL,
    [X] nvarchar(max)  NOT NULL,
    [Y] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'LegalServices'
CREATE TABLE [dbo].[LegalServices] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Suburb] nvarchar(max)  NOT NULL,
    [BusinessType] nvarchar(max)  NOT NULL,
    [NameOfBusiness] nvarchar(max)  NOT NULL,
    [Latitude] nvarchar(max)  NOT NULL,
    [Longitude] nvarchar(max)  NOT NULL,
    [Address] nvarchar(max)  NOT NULL,
    [PhoneNumber] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'RankingHairs'
CREATE TABLE [dbo].[RankingHairs] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Suburb] nvarchar(max)  NOT NULL,
    [ratioNormalised] nvarchar(max)  NOT NULL,
    [wsNormalised] nvarchar(max)  NOT NULL,
    [ccNormalised] nvarchar(max)  NOT NULL,
    [lgNormalised] nvarchar(max)  NOT NULL,
    [schoolNormalised] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'RankingLBs'
CREATE TABLE [dbo].[RankingLBs] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Suburb] nvarchar(max)  NOT NULL,
    [ratioNormalised] nvarchar(max)  NOT NULL,
    [wsNormalised] nvarchar(max)  NOT NULL,
    [ccNormalised] nvarchar(max)  NOT NULL,
    [lgNormalised] nvarchar(max)  NOT NULL,
    [schoolNormalised] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'RankingMEs'
CREATE TABLE [dbo].[RankingMEs] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Suburb] nvarchar(max)  NOT NULL,
    [ratioNormalised] nvarchar(max)  NOT NULL,
    [wsNormalised] nvarchar(max)  NOT NULL,
    [ccNormalised] nvarchar(max)  NOT NULL,
    [lgNormalised] nvarchar(max)  NOT NULL,
    [schoolNormalised] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'RankingTKs'
CREATE TABLE [dbo].[RankingTKs] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Suburb] nvarchar(max)  NOT NULL,
    [ratioNormalised] nvarchar(max)  NOT NULL,
    [wsNormalised] nvarchar(max)  NOT NULL,
    [ccNormalised] nvarchar(max)  NOT NULL,
    [lgNormalised] nvarchar(max)  NOT NULL,
    [schoolNormalised] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'Transports'
CREATE TABLE [dbo].[Transports] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [stopName] nvarchar(max)  NOT NULL,
    [stopLat] nvarchar(max)  NOT NULL,
    [stopLon] nvarchar(max)  NOT NULL,
    [routeType] nvarchar(max)  NOT NULL,
    [routeShortName] nvarchar(max)  NOT NULL,
    [Suburb] nvarchar(max)  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [Id] in table 'Childcares'
ALTER TABLE [dbo].[Childcares]
ADD CONSTRAINT [PK_Childcares]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Schools'
ALTER TABLE [dbo].[Schools]
ADD CONSTRAINT [PK_Schools]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'LegalServices'
ALTER TABLE [dbo].[LegalServices]
ADD CONSTRAINT [PK_LegalServices]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'RankingHairs'
ALTER TABLE [dbo].[RankingHairs]
ADD CONSTRAINT [PK_RankingHairs]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'RankingLBs'
ALTER TABLE [dbo].[RankingLBs]
ADD CONSTRAINT [PK_RankingLBs]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'RankingMEs'
ALTER TABLE [dbo].[RankingMEs]
ADD CONSTRAINT [PK_RankingMEs]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'RankingTKs'
ALTER TABLE [dbo].[RankingTKs]
ADD CONSTRAINT [PK_RankingTKs]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Transports'
ALTER TABLE [dbo].[Transports]
ADD CONSTRAINT [PK_Transports]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------