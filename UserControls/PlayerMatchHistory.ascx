<%@ Control Language="C#" AutoEventWireup="true" CodeFile="PlayerMatchHistory.ascx.cs" Inherits="UserControls_PlayerMatchHistory" %>

<p style="padding-bottom: 10px; margin-top: -5px;">
<asp:Label ID="lblShooterName" runat="server" Font-size="14pt" Font-Bold="true" ForeColor="Black" Visible="true" />
</p>
</b> <span style="font-size: x-small;">*gold rows in table below indicate playoff match</span>
<asp:DataGrid ID="dgPlayerMatchHistory" runat="server" Width="100%" 
    CellPadding="4" ForeColor="#333333" GridLines="Horizontal" 
    OnItemDataBound="DataGridDataBound" BorderColor="Black" BorderWidth="1px" >
    <AlternatingItemStyle BackColor="White" ForeColor="#284775" Font-Bold="False" 
        Font-Italic="False" Font-Overline="False" Font-Size="X-Small" 
        Font-Strikeout="False" Font-Underline="False" HorizontalAlign="Center" />
    <EditItemStyle BackColor="#999999" />
    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" 
        Font-Italic="False" Font-Overline="False" Font-Size="X-Small" 
        Font-Strikeout="False" Font-Underline="False" />
    <ItemStyle BackColor="#F7F6F3" ForeColor="#333333" Font-Bold="False" 
        Font-Italic="False" Font-Overline="False" Font-Size="X-Small" 
        Font-Strikeout="False" Font-Underline="False" HorizontalAlign="Center" />
    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
    <SelectedItemStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
</asp:DataGrid>