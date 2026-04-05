<%@ page title="Fall 2012 - Tuesday Night Pool League - Ocean City, MD" language="C#" masterpagefile="~/Site.master" autoeventwireup="true" CodeFile="~/Fall2012.aspx.cs" inherits="Fall2012" theme="oc8ball" %>

<%@ Register src="~/UserControls/Schedule.ascx" tagname="Schedule" tagprefix="uc1" %>
<%@ Register src="~/UserControls/Standings.ascx" tagname="Standings" tagprefix="uc2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div align="center">
        <h1>
            Fall 2012 Tuesday Night oc8ball League
            <br />
        </h1>
        <hr />
        <h3>
            <b>
                <span style="color: #000000;">
                    <span style="font-size: 12pt;">
                        You must have a PDF viewer installed such as Adobe Acrobat Reader to view the rules, scoresheet, or rosters below.
                        <br />
                        You can get Adobe Acrobat Reader for free <b><asp:HyperLink NavigateUrl="http://get.adobe.com/reader/" Text="here" Target="_blank" ID="HyperLink3" runat="server" /></b>.
                    </span>
                    <br />
                    <br />
                    <b><asp:HyperLink NavigateUrl="~/Docs/RulesFA12.pdf" Text="Click here to view league rules" Target="_blank" ID="hypRules" runat="server" Font-Size="14pt" /></b>
                    <br />
                    <br />
                    <b><asp:HyperLink NavigateUrl="~/Docs/webscoresheet.pdf" Text="Print a blank score sheet" Target="_blank" ID="HyperLink1" runat="server" Font-Size="14pt" /></b>
                    <br />
                    <span style="font-size: 8pt;">Print using "Landscape" orientation under "print" in your PFD viewer to print score sheet correctly.</span>
                    <br />
                    <br />
                    <b><asp:HyperLink NavigateUrl="~/Docs/rostersFA12.pdf" Text="View/print Current Rosters" Target="_blank" ID="HyperLink2" runat="server" Font-Size="14pt" /></b>
                    <br />

                </span>
            </b>
        </h3>
        <hr />
       <h2>
            New Race Chart
            <br />
            <img src="Images/racechart.gif" height="286" width="389" alt="RaceChart" id="imgRC" />
       </h2>
       <br />
        <hr />
            <table>
                <tr>
                    <td style="text-align: center">
                        Click Team Name for Roster
                        <br />
                        <span style="font-family: Arial; font-size: 10pt;"><asp:Label ID="lblLastUpdated" runat="server" /></span>
                        <uc2:Standings ID="standings" runat="server" LeagueID="6" />
                    </td>
                </tr>
            </table>
            <br />
            <hr />
            <table>
                <tr>
                    <td>
                        <uc1:Schedule ID="schedule" runat="server" LeagueID="6" ShowPoints="true" ShowCurrentWeekPDFs="true" />
                    </td>
                </tr>
            </table>
    </div>

</asp:Content>

