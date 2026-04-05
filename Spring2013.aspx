<%@ Page Title="Spring 2013 - Tuesday Night Pool League - Ocean City, MD" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Spring2013.aspx.cs" Inherits="Spring2013" %>

<%@ Register src="~/UserControls/Schedule.ascx" tagname="Schedule" tagprefix="uc1" %>
<%@ Register src="~/UserControls/Standings.ascx" tagname="Standings" tagprefix="uc2" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderHead" Runat="Server">

</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

 <div align="center">
        <h1>Spring 2013 Tuesday Night oc8ball League</h1>
       <h3>
            <b>
                <span style="color: #000000;">
                    <span style="font-size: 12pt;">
                        You must have a PDF viewer installed such as Adobe Acrobat Reader to view the rules, scoresheet, or rosters below.
                        <br />
                        You can get Adobe Acrobat Reader for free <b><asp:HyperLink NavigateUrl="http://get.adobe.com/reader/" Text="here" Target="_blank" ID="HyperLink3" runat="server" /></b>.
                    </span>
                    <br />
                    <b><asp:HyperLink NavigateUrl="~/Docs/RulesSP13.pdf" Text="Printable Rules" Target="_blank" ID="hypRules" runat="server" Font-Size="14pt" /></b>
                    <br />
                    <b><asp:HyperLink NavigateUrl="~/Docs/webscoresheet.pdf" Text="Printable Score Sheet" Target="_blank" ID="HyperLink1" runat="server" Font-Size="14pt" /></b>
                    <br />
                    <b><asp:HyperLink NavigateUrl="~/Docs/Rosters_Playoffs3.pdf" Text="Printable Rosters" Target="_blank" ID="HyperLink2" runat="server" Font-Size="14pt" /></b>
                    <br />
                    <b><asp:HyperLink NavigateUrl="~/Docs/ScheduleSP13_mod.pdf" Text="Printable Schedule" Target="_blank" ID="HyperLink4" runat="server" Font-Size="14pt" /></b>
                    <br />
                    <span style="font-size: 8pt;">Print using "Landscape" orientation under "print" in your PFD viewer to print score sheet correctly.</span>
                </span>
            </b>
        </h3>
        <h2>
            NEW STATS PAGE<br />
            Click <a href="Statistics/AllPlayerStats.aspx">HERE</a> to view ALL players stats!
        </h2>

        <hr />
        
        <h2 class="style6">PLAYOFFS</h2>

        <h2>
        <b>CONGRATULATIONS to Cork Bar 1!</b>
        </h2>
            They won the spring 2013 playoffs!  As the #2 seeded team, they beat the #1 seeded team, Cork Bar 2, to win the playoffs.
            <br />
            Congratulations Vernon Summers, Ben Davis, Billy Wilkins, Jack Hughes, Ricky Banks, and Ethan Wallace.
            <br />
            <br />
        <asp:Image runat="server" ID="imgPlayoffs" ImageUrl="~/Images/Spring2013Playoffs.png" />
        <br />

        <h2 class="style5">Playoff Payouts</h2>
        <span class="style1">
            <b>1st: </b><span class="style3"><b>$300.00 </b></span> Cork Bar 1 (Vernon Summers)
            <br />
            <b>2nd: </b><span class="style3"><b>$200.00</b></span>  Cork Bar 2 (Mike Ketterman)
        </span>
        
        <hr />

         <h2>
        <b>CONGRATULATIONS to Cork Bar 2!</b>
        </h2>
            They won the spring 2013 regular season!  
            <br />
            Congratulations Mike Ketterman, Shawn Englerth, Mike Foard, Mike Vitak, and Roxy Martin.

        <h2>Regular Season Payouts (<span class="style4">100% PAYOUT</span>)</h2>
        <span class="style1">
            <b>1st: </b><span class="style3"><b>$935.00</b></span> Cork Bar 2 (Mike Ketterman)  
            <br />
            <b>2nd: </b><span class="style3"><b>$685.00</b></span> Cork Bar 1 (Vernon Summers) 
            <br />
            <b>3rd: </b><span class="style3"><b>$455.00</b></span> Cork Bar 4 (Gary Meyer)
         </span>
        
        <br />
        
        <h2>Bonus Money Paid Out</h2>
        <span class="style1">
            Break & Runs x 13 @ $5 each = <span class="style3"><b>$65.00</b></span>
            <br />
            8-on-the-Break x 7 @ $5 each = <span class="style3"><b>$35.00</b></span>
            <br />
            <b>Total Bonus Money = <span class="style3">$100.00</span> </b>
            <br />
        </span>
        
        <br />
        
        <hr />       
        
            <table>
                <tr>
                    <td style="text-align: center">
                        Click Team Name for Roster
                        <br />
                        <span style="font-family: Arial; font-size: 10pt;"><asp:Label ID="lblLastUpdated" runat="server" /></span>
                        <uc2:Standings ID="standings" runat="server" LeagueID="7" />
                    </td>
                </tr>
            </table>
            <br />
            <hr />
            <table>
                <tr>
                    <td>
                        <uc1:Schedule ID="schedule" runat="server" LeagueID="7" ShowPoints="true" ShowCurrentWeekPDFs="true" />
                    </td>
                </tr>
            </table>
</div>

</asp:Content>

