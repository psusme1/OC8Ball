<%@ Page Title="Fall 2014 - Tuesday Night Pool League - Ocean City, MD" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Fall2014.aspx.cs" Inherits="Fall2014" %>

<%@ Register src="~/UserControls/Schedule.ascx" tagname="Schedule" tagprefix="uc1" %>
<%@ Register src="~/UserControls/Standings.ascx" tagname="Standings" tagprefix="uc2" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderHead" Runat="Server">
</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

 <div align="center">
       <h1>
        Fall 2014 Tuesday Night oc8ball League
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
                    <b><asp:HyperLink NavigateUrl="~/Docs/RulesFA14.pdf" Text="Printable Rules" Target="_blank" ID="hypRules" runat="server" Font-Size="14pt" /></b>
                    <br />
                    <b><asp:HyperLink NavigateUrl="~/Docs/webscoresheet.pdf" Text="Printable Score Sheet" Target="_blank" ID="HyperLink1" runat="server" Font-Size="14pt" /></b>
                    <br />
                    <b><asp:HyperLink NavigateUrl="~/Docs/RostersFA14.pdf" Text="Printable Rosters" Target="_blank" ID="HyperLink2" runat="server" Font-Size="14pt" /></b>
                    <br />
                    <b><asp:HyperLink NavigateUrl="~/Docs/Notes.pdf" Text="Current League Notes" Target="_blank" ID="HyperLinkCLN" runat="server" Font-Size="14pt" /></b>
                    <br />
                    <b><asp:HyperLink NavigateUrl="~/Docs/ScheduleFA14.pdf" Text="Printable Schedule" Target="_blank" ID="HyperLink4" runat="server" Font-Size="14pt" /></b>
                    <br />
                    <span style="font-size: 8pt;">Print using "Landscape" orientation under "print" in your PFD viewer to print score sheet correctly.</span>
                </span>
            </b>
        </h3>

     <h2>
         <b>CONGRATULATIONS to Cork Bar 4!</b>
     </h2>
     They won the oc8ball Fall 2014 playoffs!  
     <br />As the #6 seeded team, they beat the #7 seeded team, Trader Lee's, to win the playoffs.
            <br />
     Congratulations Jerry Haller, Gary Meyer, Scott Dietz, Richard Joseph, John Harrison,
     <br />James Long, Tim Mai, Kevin Engel, and Bart Braica.
     
     <h2>Playoff Brackets</h2>
     <asp:Image runat="server" ID="imgPlayoffs" ImageUrl="~/Images/PlayoffsFA14_2.JPG" />
     <br />

     <h2 class="style5">Playoff Payouts</h2>
     <span class="style1">
         <b>1st: </b><span class="style3"><b>$300.00 </b></span>
            <br />
         <b>2nd: </b><span class="style3"><b>$150.00</b></span>
     </span>

     <hr />

     <h2>
         <b>CONGRATULATIONS to Cork Bar 2!</b>
     </h2>
     They won the Fall 2014 regular season!  
            <br />
     Congratulations Mike Ketterman, Mike "Squirrel" Foard, Mike Vitak, Roxy Martin, Rob Hoffman, and Rafael Reyes

        <h2>Regular Season Payouts (<span class="style4">99% PAYOUT*</span>)</h2>
     <span class="style1">
         <b>1st: </b><span class="style3"><b>$725.00</b></span> Cork Bar 2 (M. Ketterman)  
            <br />
         <b>2nd: </b><span class="style3"><b>$525.00</b></span> Cork Bar 1 (V. Summers)
         <br />
         <b>3rd: </b><span class="style3"><b>$320.00</b></span> Cork Bar 5 (A. Jones)
     </span>

     <br />

     <h2>Bonus Money Paid Out</h2>
     <span class="style1">Break & Runs x 10 @ $5 each = <span class="style3"><b>$50.00</b></span>
         <br />
         8-on-the-Break x 1 @ $5 each = <span class="style3"><b>$5.00</b></span>
         <br />
         <b>Total Bonus Money = <span class="style3">$55.00</span> </b>
         <br />
     </span>

     <h2><span class="style4">*Bank of Ocean City oc8ball Account</span></h2>
     <span class="style1">Account Balance 12/10/14:<span class="style3"><b>$50.27</b></span>
     </span>

     <br />

        <hr />       
        
            <table>
                <tr>
                    <td style="text-align: center">
                        Click Team Name for Roster
                        <br />
                        <span style="font-family: Arial; font-size: 10pt;"><asp:Label ID="lblLastUpdated" runat="server" /></span>
                        <uc2:Standings ID="standings" runat="server" LeagueID="10" />
                    </td>
                </tr>
            </table>
            <br />
            <hr />
            <table>
                <tr>
                    <td>
                        <uc1:Schedule ID="schedule" runat="server" LeagueID="10" ShowPoints="true" ShowCurrentWeekPDFs="true" />
                    </td>
                </tr>
            </table>
</div>

</asp:Content>

