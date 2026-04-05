<%@ Control Language="C#" AutoEventWireup="true" CodeFile="TeamSchedule.ascx.cs" Inherits="UserControls_TeamSchedule" %>

<asp:DataGrid ID="dgSchedule" runat="server" AutoGenerateColumns="false" SkinID="DataGrid" Width="615px" OnItemDataBound="dgSchedule_OnItemDataBound">
    <Columns>

        <asp:BoundColumn DataField="Week" Visible="True" HeaderText="" ItemStyle-Width="50" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center" />
        <asp:BoundColumn DataField="Date" Visible="True" DataFormatString="{0:MM/dd}" ItemStyle-Width="75" HeaderText="Date" HeaderStyle-HorizontalAlign="Left" ItemStyle-HorizontalAlign="Left" />

        <asp:TemplateColumn>
            <ItemStyle HorizontalAlign="Center" Width="5px" CssClass="riggedMiddleCol" />
            <HeaderStyle HorizontalAlign="Center" CssClass="riggedMiddleCol" />
            <HeaderTemplate>
            </HeaderTemplate>
            <ItemTemplate>
            </ItemTemplate>
        </asp:TemplateColumn>

        <asp:TemplateColumn>
            <ItemStyle HorizontalAlign="Center" />
            <HeaderStyle HorizontalAlign="Center" />
            <HeaderTemplate>
                &nbsp;&nbsp;&nbsp;
            </HeaderTemplate>
            <ItemTemplate>
                &nbsp;&nbsp;&nbsp;
            </ItemTemplate>
        </asp:TemplateColumn>

        <asp:BoundColumn DataField="AwayTeam" Visible="True" HeaderText="Away" ItemStyle-Width="120" />
        <asp:BoundColumn DataField="A" Visible="True" HeaderText="PTS" ItemStyle-Width="20" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center" />

        <asp:TemplateColumn>
            <ItemStyle HorizontalAlign="Center" />
            <HeaderStyle HorizontalAlign="Center" />
            <HeaderTemplate>
                &nbsp;&nbsp;&nbsp;
            </HeaderTemplate>
            <ItemTemplate>
                &nbsp;&nbsp;&nbsp;
            </ItemTemplate>
        </asp:TemplateColumn>
        
        <asp:TemplateColumn>
            <ItemStyle HorizontalAlign="Center" Width="5px" CssClass="riggedMiddleCol" />
            <HeaderStyle HorizontalAlign="Center" CssClass="riggedMiddleCol" />
            <HeaderTemplate>
            </HeaderTemplate>
            <ItemTemplate>
            </ItemTemplate>
        </asp:TemplateColumn>

        <asp:TemplateColumn>
            <ItemStyle HorizontalAlign="Center" />
            <HeaderStyle HorizontalAlign="Center" />
            <HeaderTemplate>
                &nbsp;&nbsp;&nbsp;
            </HeaderTemplate>
            <ItemTemplate>
                &nbsp;&nbsp;&nbsp;
            </ItemTemplate>
        </asp:TemplateColumn>

        <asp:BoundColumn DataField="HomeTeam" Visible="True" HeaderText="Home" ItemStyle-Width="120" />
        <asp:BoundColumn DataField="H" Visible="True" HeaderText="PTS" ItemStyle-Width="20" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center" />

        <asp:TemplateColumn>
            <ItemStyle HorizontalAlign="Center" />
            <HeaderStyle HorizontalAlign="Center" />
            <HeaderTemplate>
                &nbsp;&nbsp;&nbsp;
            </HeaderTemplate>
            <ItemTemplate>
                &nbsp;&nbsp;&nbsp;
            </ItemTemplate>
        </asp:TemplateColumn>

        <asp:TemplateColumn>
            <ItemStyle HorizontalAlign="Center" Width="5px" CssClass="riggedMiddleCol" />
            <HeaderStyle HorizontalAlign="Center" CssClass="riggedMiddleCol" />
            <HeaderTemplate>
            </HeaderTemplate>
            <ItemTemplate>
            </ItemTemplate>
        </asp:TemplateColumn>


        <asp:TemplateColumn>
            <ItemStyle HorizontalAlign="Center" />
            <HeaderStyle HorizontalAlign="Center" Width="100px" />
            <HeaderTemplate>
                Score Sheet
            </HeaderTemplate>
            <ItemTemplate>
                <asp:HyperLink ID="hyplScoreSheet" Text="View" runat="server"></asp:HyperLink>
            </ItemTemplate>
        </asp:TemplateColumn>
    </Columns>

</asp:DataGrid>
