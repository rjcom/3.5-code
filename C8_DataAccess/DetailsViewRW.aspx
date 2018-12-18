﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="DetailsViewRW.aspx.cs" Inherits="DetailsViewRW" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   <title>DetailsView Read Write Demo</title>
</head>
<body>
   <form id="form1" runat="server">
   <asp:SqlDataSource ID="dsCustomers" runat="server" ConnectionString="<%$ ConnectionStrings:AWLTConnection %>"
      DeleteCommand="DELETE FROM [SalesLT].[Customer] WHERE [CustomerID] = @CustomerID"
      InsertCommand="INSERT INTO [SalesLT].[Customer] ([NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone], [PasswordHash], [PasswordSalt]) VALUES (@NameStyle, @Title, @FirstName, @MiddleName, @LastName, @Suffix, @CompanyName, @SalesPerson, @EmailAddress, @Phone, @PasswordHash, @PasswordSalt)"
      SelectCommand="SELECT * FROM [SalesLT].[Customer]" 
      UpdateCommand="UPDATE [SalesLT].[Customer] SET [NameStyle] = @NameStyle, [Title] = @Title, [FirstName] = @FirstName, [MiddleName] = @MiddleName, [LastName] = @LastName, [Suffix] = @Suffix, [CompanyName] = @CompanyName, [SalesPerson] = @SalesPerson, [EmailAddress] = @EmailAddress, [Phone] = @Phone, [PasswordHash] = @PasswordHash, [PasswordSalt] = @PasswordSalt, [rowguid] = @rowguid, [ModifiedDate] = @ModifiedDate WHERE [CustomerID] = @CustomerID">
      <DeleteParameters>
         <asp:Parameter Name="CustomerID" Type="Int32" />
      </DeleteParameters>
      <UpdateParameters>
         <asp:Parameter Name="NameStyle" Type="Boolean" />
         <asp:Parameter Name="Title" Type="String" />
         <asp:Parameter Name="FirstName" Type="String" />
         <asp:Parameter Name="MiddleName" Type="String" />
         <asp:Parameter Name="LastName" Type="String" />
         <asp:Parameter Name="Suffix" Type="String" />
         <asp:Parameter Name="CompanyName" Type="String" />
         <asp:Parameter Name="SalesPerson" Type="String" />
         <asp:Parameter Name="EmailAddress" Type="String" />
         <asp:Parameter Name="Phone" Type="String" />
         <asp:Parameter Name="PasswordHash" Type="String" />
         <asp:Parameter Name="PasswordSalt" Type="String" />
         <asp:Parameter Name="rowguid" Type="Object" />
         <asp:Parameter Name="ModifiedDate" Type="DateTime" />
         <asp:Parameter Name="CustomerID" Type="Int32" />
      </UpdateParameters>
      <InsertParameters>
         <asp:Parameter Name="NameStyle" Type="Boolean" />
         <asp:Parameter Name="Title" Type="String" />
         <asp:Parameter Name="FirstName" Type="String" />
         <asp:Parameter Name="MiddleName" Type="String" />
         <asp:Parameter Name="LastName" Type="String" />
         <asp:Parameter Name="Suffix" Type="String" />
         <asp:Parameter Name="CompanyName" Type="String" />
         <asp:Parameter Name="SalesPerson" Type="String" />
         <asp:Parameter Name="EmailAddress" Type="String" />
         <asp:Parameter Name="Phone" Type="String" />
         <asp:Parameter Name="PasswordHash" Type="String" />
         <asp:Parameter Name="PasswordSalt" Type="String" />
         <asp:Parameter Name="ModifiedDate" Type="DateTime" />
      </InsertParameters>
   </asp:SqlDataSource>
   <div>
      <asp:DetailsView ID="DetailsView1" runat="server" 
         AllowPaging="True" DataSourceID="dsCustomers"
         DataKeyNames="CustomerID" AutoGenerateDeleteButton="true" 
         AutoGenerateEditButton="true"
         AutoGenerateInsertButton="true">
      </asp:DetailsView>
   </div>
   </form>
</body>
</html>
