<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Roster.ascx.cs" Inherits="UserControls_Roster" %>

<p style="padding-bottom: 10px;">
<asp:Label ID="lblTeamName" runat="server" Font-size="18pt" Font-Bold="true" />
<br />
<asp:Label ID="lblLeagueName" runat="server" Font-size="12pt" Font-Bold="true" />
</p>

<asp:DataGrid ID="dgRoster" runat="server" SkinID="DataGrid" Width="350px" OnItemDataBound="dgRoster_OnItemDataBound" >
    <Columns>
        <asp:BoundColumn DataField="ShooterId" HeaderText="ID" Visible="true" ItemStyle-Width="50px" ItemStyle-HorizontalAlign="Center" HeaderStyle-HorizontalAlign="Center" />
         <asp:BoundColumn DataField="Weeks" HeaderText="WKS" ItemStyle-Width="40px" ItemStyle-HorizontalAlign="Center" HeaderStyle-HorizontalAlign="Center" >
            <HeaderStyle HorizontalAlign="Center"></HeaderStyle>
            <ItemStyle HorizontalAlign="Center" Width="60px"></ItemStyle>
        </asp:BoundColumn>
        <asp:TemplateColumn HeaderText="NAME">
            <ItemTemplate>
                <asp:HyperLink runat="server" ID="hyplShooter" Text='<%# DataBinder.Eval(Container, "DataItem.ShooterName") %>' NavigateUrl='<%# "~/Statistics/PlayerMatchHistory.aspx?id=" + DataBinder.Eval(Container, "DataItem.ShooterId").ToString() %>' />
            </ItemTemplate>
        </asp:TemplateColumn>
        <asp:BoundColumn DataField="Rating" HeaderText="RATE" ItemStyle-Width="40px" ItemStyle-HorizontalAlign="Center" HeaderStyle-HorizontalAlign="Center" >
            <HeaderStyle HorizontalAlign="Center"></HeaderStyle>
            <ItemStyle HorizontalAlign="Center" Width="60px"></ItemStyle>
        </asp:BoundColumn>

    </Columns>

</asp:DataGrid>

