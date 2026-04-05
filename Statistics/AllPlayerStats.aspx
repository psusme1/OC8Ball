<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="AllPlayerStats.aspx.cs" Inherits="Statistics_AllPlayerStats" %>

<%@ Register Src="~/UserControls/PlayerCumulativeStats.ascx" TagName="PlayerCumulStats" TagPrefix="uc2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div align="center">
        <h1>
            All Players Cumulative Stats
            <br />
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

</asp:Content>