/*
SampleProject の配置スクリプト

このコードはツールによって生成されました。
このファイルへの変更は、正しくない動作の原因になる可能性があると共に、
コードが再生成された場合に失われます。
*/

GO
SET ANSI_NULLS, ANSI_PADDING, ANSI_WARNINGS, ARITHABORT, CONCAT_NULL_YIELDS_NULL, QUOTED_IDENTIFIER ON;

SET NUMERIC_ROUNDABORT OFF;


GO
:setvar DatabaseName "SampleProject"
:setvar DefaultFilePrefix "SampleProject"
:setvar DefaultDataPath "/var/opt/mssql/data/"
:setvar DefaultLogPath "/var/opt/mssql/data/"

GO
:on error exit
GO
/*
SQLCMD モードを検出して、SQLCMD モードがサポートされていない場合にスクリプトの実行を無効にします。
SQLCMD モードを有効化した後でスクリプトを再度有効にするには、次を実行します:
SET NOEXEC OFF; 
*/
:setvar __IsSqlCmdEnabled "True"
GO
IF N'$(__IsSqlCmdEnabled)' NOT LIKE N'True'
    BEGIN
        PRINT N'このスクリプトを正常に実行するには SQLCMD モードを有効にする必要があります。';
        SET NOEXEC ON;
    END


GO
USE [$(DatabaseName)];


GO
/*
テーブル [dbo].[Table9] を削除しています。テーブルにデータが含まれている場合、配置は中断されます。
*/

IF EXISTS (select top 1 1 from [dbo].[Table9])
    RAISERROR (N'行が検出されました。データ損失が発生する可能性があるため、スキーマ更新を終了しています。', 16, 127) WITH NOWAIT

GO
PRINT N'SqlTable [dbo].[Table9] を削除しています...';


GO
DROP TABLE [dbo].[Table9];


GO
PRINT N'更新が完了しました。';


GO