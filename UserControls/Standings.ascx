<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Standings.ascx.cs" Inherits="UserControls_Standings" %>

<div align="center">
<asp:Label ID="lblTitle" Font-Size="18pt" Font-Bold="true" runat="server" />
</div>
<asp:DataGrid ID="dgStandings" runat="server"  AutoGenerateColumns="false" Width="265px" SkinID="DataGrid" OnItemDataBound="dgStandings_OnItemDataBound">
    <Columns>
        <asp:BoundColumn DataField="TeamId" Visible="false" />
        <asp:TemplateColumn>
            <ItemTemplate>
                <asp:Hyperlink ID="hyplTeam" NavigateUrl='<%# DataBinder.Eval(Container, "DataItem.URL") %>' Text='<%# DataBinder.Eval(Container, "DataItem.TeamName") %>' runat="server" />
            </ItemTemplate>
            <HeaderTemplate>
                Team Name
            </HeaderTemplate>
        </asp:TemplateColumn>
        <asp:BoundColumn DataField="Points" HeaderText="Pts" ItemStyle-Width="55px" ItemStyle-HorizontalAlign="Center" HeaderStyle-HorizontalAlign="Center"  />
        <asp:BoundColumn DataField="PointsBack" HeaderText="Back" ItemStyle-Width="60px" ItemStyle-HorizontalAlign="Center" HeaderStyle-HorizontalAlign="Center" />
    </Columns>
</asp:DataGrid>
