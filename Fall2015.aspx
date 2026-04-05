<%@ Page Title="Fall 2015 - Tuesday Night Pool League - Ocean City, MD" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Fall2015.aspx.cs" Inherits="Fall2015" %>

<%@ Register src="~/UserControls/Schedule.ascx" tagname="Schedule" tagprefix="uc1" %>
<%@ Register src="~/UserControls/Standings.ascx" tagname="Standings" tagprefix="uc2" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderHead" Runat="Server">
</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

 <div align="center">
       <h1>
        Fall 2015 Tuesday Night oc8ball League
       </h1>
       <h3>
            <b>
                <span style="color: #000000;">
                    <span style="font-size: 12pt;">
                        You must have a PDF viewer installed such as Adobe Acrobat Reader to view the rules, scoresheet, or rosters below.
                        <br />
                        You can get Adobe Acrobat Reader for free <b><asp:HyperLink NavigateUrl="http://get.adobe.com/reader/" Text="here" Target="_blank" ID="HyperLink3" runat="server" /></b>.
                    </span>
                    <br />
                    <b><asp:HyperLink NavigateUrl="~/Docs/RulesSP15.pdf" Text="Printable Rules" Target="_blank" ID="hypRules" runat="server" Font-Size="14pt" /></b>
                    <br />
                    <b><asp:HyperLink NavigateUrl="~/Docs/webscoresheet.pdf" Text="Printable Score Sheet" Target="_blank" ID="HyperLink1" runat="server" Font-Size="14pt" /></b>
                    <br />
                    <b><asp:HyperLink NavigateUrl="~/Docs/RostersFA15.pdf" Text="Printable Rosters" Target="_blank" ID="HyperLink2" runat="server" Font-Size="14pt" /></b>
                    <br />
                    <b><asp:HyperLink NavigateUrl="~/Docs/Notes.pdf" Text="Current League Notes" Target="_blank" ID="HyperLinkCLN" runat="server" Font-Size="14pt" /></b>
                    <br />
                    <b><asp:HyperLink NavigateUrl="~/Docs/ScheduleFA15.pdf" Text="Printable Schedule" Target="_blank" ID="HyperLink4" runat="server" Font-Size="14pt" /></b>
                    <br />
                    <span style="font-size: 8pt;">Print using "Landscape" orientation under "print" in your PFD viewer to print score sheet correctly.</span>
                </span>
            </b>
        </h3>

     
     <hr />       
            <table>
                <tr>
                    <td style="text-align: center">
                        Click Team Name for Roster
                        <br />
                        <span style="font-family: Arial; font-size: 10pt;"><asp:Label ID="lblLastUpdated" runat="server" /></span>
                        <uc2:Standings ID="standings" runat="server" LeagueID="12" />
                    </td>
                </tr>
            </table>
            <br />
            <hr />
            <table>
                <tr>
                    <td>
                        <uc1:Schedule ID="schedule" runat="server" LeagueID="12" ShowPoints="true" ShowCurrentWeekPDFs="true" />
                    </td>
                </tr>
            </table>
</div>

</asp:Content>

