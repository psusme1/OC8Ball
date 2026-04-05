<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Roster.aspx.cs" Inherits="TestRoster" %>

<%@ Register src="~/UserControls/Roster.ascx" tagname="Roster" tagprefix="uc1" %>
<%@ Register Src="~/UserControls/TeamSchedule.ascx" TagName="Schedule" TagPrefix="uc2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div align="center">
        <uc1:Roster ID="ucRoster" runat="server" />
    </div>
    <br/>
    <br/>
    <div align="center">
        <uc2:Schedule ID="ucSchedule" runat="server" />
    </div>

</asp:Content>
