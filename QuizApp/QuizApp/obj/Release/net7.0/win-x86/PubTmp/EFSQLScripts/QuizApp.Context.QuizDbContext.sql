IF OBJECT_ID(N'[__EFMigrationsHistory]') IS NULL
BEGIN
    CREATE TABLE [__EFMigrationsHistory] (
        [MigrationId] nvarchar(150) NOT NULL,
        [ProductVersion] nvarchar(32) NOT NULL,
        CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY ([MigrationId])
    );
END;
GO

BEGIN TRANSACTION;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20230920233224_Initial database migration')
BEGIN
    CREATE TABLE [Participants] (
        [Id] int NOT NULL IDENTITY,
        [Email] nvarchar(50) NOT NULL,
        [Name] nvarchar(50) NOT NULL,
        [Score] int NOT NULL,
        [TimeTaken] int NOT NULL,
        CONSTRAINT [PK_Participants] PRIMARY KEY ([Id])
    );
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20230920233224_Initial database migration')
BEGIN
    CREATE TABLE [Questions] (
        [Id] int NOT NULL IDENTITY,
        [QuestionWords] nvarchar(250) NOT NULL,
        [ImageName] nvarchar(250) NULL,
        [Option1] nvarchar(250) NOT NULL,
        [Option2] nvarchar(250) NOT NULL,
        [Option3] nvarchar(250) NOT NULL,
        [Option4] nvarchar(250) NOT NULL,
        [Answer] int NOT NULL,
        CONSTRAINT [PK_Questions] PRIMARY KEY ([Id])
    );
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20230920233224_Initial database migration')
BEGIN
    INSERT INTO [__EFMigrationsHistory] ([MigrationId], [ProductVersion])
    VALUES (N'20230920233224_Initial database migration', N'7.0.10');
END;
GO

COMMIT;
GO

