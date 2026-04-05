<%@ Page Language="C#" Title="oc8ball - Player Match History - Ocean City, MD" MasterPageFile="~/Site.master" autoeventwireup="true" Theme="oc8ball" CodeFile="PlayerMatchHistory.aspx.cs" Inherits="Statistics_PlayerMatchHistory" %>

<%@ Register src="~/UserControls/PlayerMatchHistory.ascx" tagname="PlayerMatchHistory" tagprefix="uc1" %>
<%@ Register Src="~/UserControls/PlayerCumulativeStats.ascx" TagName="PlayerCumulStats" TagPrefix="uc2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div align="center" style="margin-bottom: -15px;">
        <h1>
            Player Cumulative Stats
        </h1>
   
        <hr />
            <table>
                <tr>
                    <td>
                        <uc2:PlayerCumulStats runat="server" Id="pcsPlayerCumulative" />
                    </td>
                </tr>
            </table>
    </div>

    <div align="center">
        <h1>
            Player Match History
        </h1>
        <hr />
            <table>
                <tr>
                    <td>
                        <uc1:PlayerMatchHistory runat="server" Id="pmhPlayerMatchHistory" />
                    </td>
                </tr>
            </table>
    </div>

</asp:Content>

