<%@ Page Title="Spring 2014 - Tuesday Night Pool League - Ocean City, MD" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Spring2014.aspx.cs" Inherits="Spring2014" %>

<%@ Register src="~/UserControls/Schedule.ascx" tagname="Schedule" tagprefix="uc1" %>
<%@ Register src="~/UserControls/Standings.ascx" tagname="Standings" tagprefix="uc2" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderHead" Runat="Server">
</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

 <div align="center">
       <h1>
        Spring 2014 Tuesday Night oc8ball League
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
                    <b><asp:HyperLink NavigateUrl="~/Docs/RulesSP14.pdf" Text="Printable Rules" Target="_blank" ID="hypRules" runat="server" Font-Size="14pt" /></b>
                    <br />
                    <b><asp:HyperLink NavigateUrl="~/Docs/webscoresheet.pdf" Text="Printable Score Sheet" Target="_blank" ID="HyperLink1" runat="server" Font-Size="14pt" /></b>
                    <br />
                    <b><asp:HyperLink NavigateUrl="~/Docs/RostersSP14.pdf" Text="Printable Rosters" Target="_blank" ID="HyperLink2" runat="server" Font-Size="14pt" /></b>
                    <br />
                    <b><asp:HyperLink NavigateUrl="~/Docs/Notes.pdf" Text="Current League Notes" Target="_blank" ID="HyperLinkCLN" runat="server" Font-Size="14pt" /></b>
                    <br />
                    <b><asp:HyperLink NavigateUrl="~/Docs/ScheduleSP14.pdf" Text="Printable Schedule" Target="_blank" ID="HyperLink4" runat="server" Font-Size="14pt" /></b>
                    <br />
                    <span style="font-size: 8pt;">Print using "Landscape" orientation under "print" in your PFD viewer to print score sheet correctly.</span>
                </span>
            </b>
        </h3>

     <hr />
        
        <h2 class="style6">PLAYOFFS</h2>

       <h2>
        <b>CONGRATULATIONS to Cork Bar 1!</b>
        </h2>
            They won the Spring 2014 playoffs!  As the #1 seeded team, they beat the #2 seeded team, Cork Bar 4, to win the playoffs.
            <br />
            Congratulations Vernon Summers, Ben Davis, Billy Wilkins, Jack Hughes, Ryan Summers, Nick Pfieffer, and Ronnie Brandt.
            <br />
            <br />
        <asp:Image runat="server" ID="imgPlayoffs" ImageUrl="~/Images/SP2014_Playoffs2.gif" />
        <br />

        <h2 class="style5">Playoff Payouts</h2>
        <span class="style1">
            <b>1st: </b><span class="style3"><b>$300.00 </b></span>
            <br />
            <b>2nd: </b><span class="style3"><b>$200.00</b></span>
        </span>
   

        <hr />

         <h2>
        <b>CONGRATULATIONS to Cork Bar 1!</b>
        </h2>
            They won the Spring 2014 regular season!  
            <br />
            Congratulations Vernon Summers, Ben Davis, Billy Wilkins, Jack Hughes, Ryan Summers, Ronnie Brandt, and Nick Pfieffer.

        <h2>Regular Season Payouts (<span class="style4">100% PAYOUT</span>)</h2>
        <span class="style1">
            <b>1st: </b><span class="style3"><b>$900.00</b></span> Cork Bar 2 (Mike Ketterman)  
            <br />
            <b>2nd: </b><span class="style3"><b>$700.00</b></span> Cork Bar 1 (Vernon Summers) 
            <br />
            <b>3rd: </b><span class="style3"><b>$500.00</b></span> Cork Bar 4 (Gary Meyer)
            <br />
            <b>4th - 8th: </b><span class="style3"><b>$60.00 each</b></span>
         </span>
        
        <br />
        
        <h2>Bonus Money Paid Out</h2>
        <span class="style1">
            Break & Runs x 16 @ $5 each = <span class="style3"><b>$80.00</b></span>
            <br />
            8-on-the-Break x 5 @ $5 each = <span class="style3"><b>$25.00</b></span>
            <br />
            <b>Total Bonus Money = <span class="style3">$105.00</span> </b>
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
                        <uc2:Standings ID="standings" runat="server" LeagueID="9" />
                    </td>
                </tr>
            </table>
            <br />
            <hr />
            <table>
                <tr>
                    <td>
                        <uc1:Schedule ID="schedule" runat="server" LeagueID="9" ShowPoints="true" ShowCurrentWeekPDFs="true" />
                    </td>
                </tr>
            </table>
</div>

</asp:Content>

