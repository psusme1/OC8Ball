<%@ Control Language="C#" AutoEventWireup="true" CodeFile="PlayerCumulativeStats.ascx.cs" Inherits="UserControls_PlayerCumulativeStats" %>

<div align="center">
    <b>Legend</b>
    <table width="600px" style="margin-left: 50px; font-size: 8pt;">
                <tr>
                    <td>
                        MW (matches won)
                    </td>
                    <td>
                        ML (matches lost)
                    </td>
                    <td>
                        MW% (percentage of matches won)
                    </td>
                    <td>
                        B&R (break and runs)
                    </td>
                </tr>
                <tr>
                    <td>
                        GW (games won)
                    </td>
                    <td>
                        GL (games lost)
                    </td>
                    <td>
                        GW% (percentage of games won)
                    </td>
                    <td>
                        8BK (eight on the break)
                    </td>
                </tr>
                <tr>
                    <td>
                        S8 (scratch on eight)
                    </td>
                    <td>
                        E8 (made the eight early)
                    </td>
                    <td>
                        SHO (shutouts)
                    </td>
                    <td>
                        MP (matches played)
                    </td>
                </tr>
                 <tr>
                    <td colspan="2">
                        AvgW (average rated player you beat)
                    </td>
                    <td colspan="1">
                        AvgL (average rated player you lose to)
                    </td>
                    <td>
                        GP (games played)
                    </td>
                </tr>
            </table>
            <br />
            </div>

<asp:Panel ID="pnlOther" runat="server">

    <div align="center" style="color: white; height: 65px; padding-top: 10px; border: 1px solid black; background-color: rgba(93,123,157,0.65);">
    <b>SELECT PLAYER TO VIEW:</b>
        <br /><asp:DropDownList runat="server" ID="ddlPlayers" AutoPostBack="true" OnSelectedIndexChanged="OnSelectedIndexChanged_ddlPlayers"></asp:DropDownList>
    </div>

    <br />
    
    <div align="center">
    <b>Regular Season Stats</b>
    <br />
<asp:DataGrid ID="dgPlayerMatchHistoryReg" runat="server" Width="600px" 
    CellPadding="2" ForeColor="#333333" GridLines="Horizontal" BorderColor="Black" 
    BorderWidth="1px" >
    <AlternatingItemStyle BackColor="White" ForeColor="#284775" Font-Bold="False" 
        Font-Italic="False" Font-Overline="False" Font-Size="X-Small" 
        Font-Strikeout="False" Font-Underline="False" HorizontalAlign="Center" />
    <EditItemStyle BackColor="#999999" Font-Bold="False" Font-Italic="False" 
        Font-Overline="False" Font-Size="Smaller" Font-Strikeout="False" 
        Font-Underline="False" />
    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" HorizontalAlign="Center" 
        ForeColor="White" Font-Italic="False" Font-Overline="False" Font-Size="X-Small" 
        Font-Strikeout="False" Font-Underline="False" />
    <ItemStyle BackColor="#F7F6F3" ForeColor="#333333" Font-Bold="False" 
        Font-Italic="False" Font-Overline="False" Font-Size="X-Small" 
        Font-Strikeout="False" Font-Underline="False" HorizontalAlign="Center" />
    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
    <SelectedItemStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
</asp:DataGrid>
</div>

<div align="center">
    <b>Playoff Stats</b>
    <br />
    <asp:DataGrid ID="dgPlayerMatchHistoryPoffs" runat="server" Width="600px"
        CellPadding="2" ForeColor="#333333" GridLines="Horizontal" BorderColor="Black"
        BorderWidth="1px">
        <AlternatingItemStyle BackColor="White" ForeColor="#284775" Font-Bold="False"
            Font-Italic="False" Font-Overline="False" Font-Size="X-Small"
            Font-Strikeout="False" Font-Underline="False" HorizontalAlign="Center" />
        <EditItemStyle BackColor="#999999" Font-Bold="False" Font-Italic="False"
            Font-Overline="False" Font-Size="Smaller" Font-Strikeout="False"
            Font-Underline="False" />
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" HorizontalAlign="Center"
            ForeColor="White" Font-Italic="False" Font-Overline="False" Font-Size="X-Small"
            Font-Strikeout="False" Font-Underline="False" />
        <ItemStyle BackColor="#F7F6F3" ForeColor="#333333" Font-Bold="False"
            Font-Italic="False" Font-Overline="False" Font-Size="X-Small"
            Font-Strikeout="False" Font-Underline="False" HorizontalAlign="Center" />
        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
        <SelectedItemStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
    </asp:DataGrid>
</div>
</asp:Panel>

<div align="center">
    <b>Overall Stats</b>
    <br />
    <asp:DataGrid ID="dgPlayerMatchHistory" runat="server" Width="600px"
        CellPadding="2" ForeColor="#333333" GridLines="Horizontal" BorderColor="Black"
        BorderWidth="1px">
        <AlternatingItemStyle BackColor="White" ForeColor="#284775" Font-Bold="False"
            Font-Italic="False" Font-Overline="False" Font-Size="X-Small"
            Font-Strikeout="False" Font-Underline="False" HorizontalAlign="Center" />
        <EditItemStyle BackColor="#999999" Font-Bold="False" Font-Italic="False"
            Font-Overline="False" Font-Size="Smaller" Font-Strikeout="False"
            Font-Underline="False" />
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" HorizontalAlign="Center"
            ForeColor="White" Font-Italic="False" Font-Overline="False" Font-Size="X-Small"
            Font-Strikeout="False" Font-Underline="False" />
        <ItemStyle BackColor="#F7F6F3" ForeColor="#333333" Font-Bold="False"
            Font-Italic="False" Font-Overline="False" Font-Size="X-Small"
            Font-Strikeout="False" Font-Underline="False" HorizontalAlign="Center" />
        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
        <SelectedItemStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
    </asp:DataGrid>
</div>

<br />

<div align="center">
    <b>Player Stats by Rating</b>
    <br />
    <asp:DataGrid ID="dgPlayerRatingStats" runat="server" Width="600px"
        CellPadding="2" ForeColor="#333333" GridLines="Horizontal" BorderColor="Black"
        BorderWidth="1px">
        <AlternatingItemStyle BackColor="White" ForeColor="#284775" Font-Bold="False"
            Font-Italic="False" Font-Overline="False" Font-Size="X-Small"
            Font-Strikeout="False" Font-Underline="False" HorizontalAlign="Center" />
        <EditItemStyle BackColor="#999999" Font-Bold="False" Font-Italic="False"
            Font-Overline="False" Font-Size="Smaller" Font-Strikeout="False"
            Font-Underline="False" />
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" HorizontalAlign="Center"
            ForeColor="White" Font-Italic="False" Font-Overline="False" Font-Size="X-Small"
            Font-Strikeout="False" Font-Underline="False" />
        <ItemStyle BackColor="#F7F6F3" ForeColor="#333333" Font-Bold="False"
            Font-Italic="False" Font-Overline="False" Font-Size="X-Small"
            Font-Strikeout="False" Font-Underline="False" HorizontalAlign="Center" />
        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
        <SelectedItemStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
    </asp:DataGrid>
</div>
<br />
<div align="center">
    <b>Player Stats by League</b>
    <br />
        <asp:DataGrid ID="dgPlayerByLeagueStats" runat="server" Width="600px"
        CellPadding="2" ForeColor="#333333" GridLines="Horizontal" BorderColor="Black"
        BorderWidth="1px">
        <AlternatingItemStyle BackColor="White" ForeColor="#284775" Font-Bold="False"
            Font-Italic="False" Font-Overline="False" Font-Size="X-Small"
            Font-Strikeout="False" Font-Underline="False" HorizontalAlign="Center" />
        <EditItemStyle BackColor="#999999" Font-Bold="False" Font-Italic="False"
            Font-Overline="False" Font-Size="Smaller" Font-Strikeout="False"
            Font-Underline="False" />
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" HorizontalAlign="Center"
            ForeColor="White" Font-Italic="False" Font-Overline="False" Font-Size="X-Small"
            Font-Strikeout="False" Font-Underline="False" />
        <ItemStyle BackColor="#F7F6F3" ForeColor="#333333" Font-Bold="False"
            Font-Italic="False" Font-Overline="False" Font-Size="X-Small"
            Font-Strikeout="False" Font-Underline="False" HorizontalAlign="Center" />
        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
        <SelectedItemStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
    </asp:DataGrid>
</div>
<br />
<div align="center">
    <b>Player Stats vs. Other Rated Players</b>
    <br />
    <asp:DataGrid ID="dgPlayerVsOtherRatings" runat="server" Width="450px"
        CellPadding="2" ForeColor="#333333" GridLines="Horizontal" BorderColor="Black"
        BorderWidth="1px">
        <AlternatingItemStyle BackColor="White" ForeColor="#284775" Font-Bold="False"
            Font-Italic="False" Font-Overline="False" Font-Size="X-Small"
            Font-Strikeout="False" Font-Underline="False" HorizontalAlign="Center" />
        <EditItemStyle BackColor="#999999" Font-Bold="False" Font-Italic="False"
            Font-Overline="False" Font-Size="Smaller" Font-Strikeout="False"
            Font-Underline="False" />
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" HorizontalAlign="Center"
            ForeColor="White" Font-Italic="False" Font-Overline="False" Font-Size="X-Small"
            Font-Strikeout="False" Font-Underline="False" />
        <ItemStyle BackColor="#F7F6F3" ForeColor="#333333" Font-Bold="False"
            Font-Italic="False" Font-Overline="False" Font-Size="X-Small"
            Font-Strikeout="False" Font-Underline="False" HorizontalAlign="Center" />
        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
        <SelectedItemStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
    </asp:DataGrid>
</div>


