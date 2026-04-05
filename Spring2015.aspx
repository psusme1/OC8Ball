<%@ Page Title="Spring 2015 - Tuesday Night Pool League - Ocean City, MD" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Spring2015.aspx.cs" Inherits="Spring2015" %>

<%@ Register src="~/UserControls/Schedule.ascx" tagname="Schedule" tagprefix="uc1" %>
<%@ Register src="~/UserControls/Standings.ascx" tagname="Standings" tagprefix="uc2" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderHead" Runat="Server">
</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

 <div align="center">
       <h1>
        Spring 2015 Tuesday Night oc8ball League
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
                    <b><asp:HyperLink NavigateUrl="~/Docs/RostersSP15.pdf" Text="Printable Rosters" Target="_blank" ID="HyperLink2" runat="server" Font-Size="14pt" /></b>
                    <br />
                    <b><asp:HyperLink NavigateUrl="~/Docs/Notes.pdf" Text="Current League Notes" Target="_blank" ID="HyperLinkCLN" runat="server" Font-Size="14pt" /></b>
                    <br />
                    <b><asp:HyperLink NavigateUrl="~/Docs/ScheduleSP15.pdf" Text="Printable Schedule" Target="_blank" ID="HyperLink4" runat="server" Font-Size="14pt" /></b>
                    <br />
                    <span style="font-size: 8pt;">Print using "Landscape" orientation under "print" in your PFD viewer to print score sheet correctly.</span>
                </span>
            </b>
        </h3>
    
     <h2>Playoff Brackets</h2>
     <asp:Image runat="server" ID="imgPlayoffs" ImageUrl="~/Images/PlayoffsSP15_1.JPG" Width="494px" Height="447px" />
<br />

     <h2 class="style5">Playoff Payouts</h2>
     <span class="style1">
         <b>1st: </b><span class="style3"><b>$300.00 </b></span>
            <br />
         <b>2nd: </b><span class="style3"><b>$200.00</b></span>
     </span>

     <hr />

     <h2>
         <b>CONGRATULATIONS to Pit & Pub 2!</b>
     </h2>
     They won the Spring 2015 regular season!  
            <br />
     Congratulations Garrett Geyer, Ronnie Zhao, Jay Graybill, Mike Lott, Shane Lowe, Ken Clark, Steve Masten, & Joe Anderson


        <h2>Regular Season Payouts (<span class="style4">96% PAYOUT*</span>)</h2>
     <span class="style1">
         <b>1st: </b><span class="style3"><b>$1040.00</b></span> Pit & Pub 2 (G. Geyer)  
            <br />
         <b>2nd: </b><span class="style3"><b>$810.00</b></span> Cork Bar 3 (H. Banks)
         <br />
         <b>3rd: </b><span class="style3"><b>$560.00</b></span> Harborside (J. Long)
     </span>

     <br />

     <h2>Bonus Money Paid Out</h2>
     <span class="style1">Break & Runs x 16 @ $5 each = <span class="style3"><b>$80.00</b></span>
         <br />
         8-on-the-Break x 10 @ $5 each = <span class="style3"><b>$50.00</b></span>
         <br />
         <b>Total Bonus Money = <span class="style3">$130.00</span> </b>
         <br />
     </span>

     <br />

     <h2>Important Dates & Info</h2>
     
     <br />
         **You must shoot 5 regular season matches to qualify for the playoffs.
     <br />
         **All shooters must call their shots (pocket only).  You do not have to call kisses, caroms, rails, etc..
     <br />
         **League start time is 7 PM.  Please have matches underway no later than 7:10 PM!!!  Thank you!
     <br />
     
     <hr />       
            <table>
                <tr>
                    <td style="text-align: center">
                        Click Team Name for Roster
                        <br />
                        <span style="font-family: Arial; font-size: 10pt;"><asp:Label ID="lblLastUpdated" runat="server" /></span>
                        <uc2:Standings ID="standings" runat="server" LeagueID="11" />
                    </td>
                </tr>
            </table>
            <br />
            <hr />
            <table>
                <tr>
                    <td>
                        <uc1:Schedule ID="schedule" runat="server" LeagueID="11" ShowPoints="true" ShowCurrentWeekPDFs="true" />
                    </td>
                </tr>
            </table>
</div>

</asp:Content>

