<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Schedule.ascx.cs" EnableTheming="true" Inherits="Schedule" %>

<div align="center">
<asp:Label ID="lblTitle" Text="Schedule" Font-Size="18pt" Font-Bold="true" runat="server" />
</div>
<asp:DataList ID="dlSchedule" OnItemDataBound="dlSchedule_OnItemDataBound" EnableTheming="true" runat="server" CellSpacing="20" RepeatColumns="2" RepeatDirection="Horizontal" Width="310px" >
    <ItemTemplate>
    
    <table width="360px">
        <tr>
            <td style="text-align: center; width: 410px;" >
                <asp:Image runat="server" ID="imgWeekNum" Width="75px" Height="75px" />
                <br />
                <asp:Label Text='<%# DataBinder.Eval(Container.DataItem, "NumberOfWeeks") %>' ID="lblWeekNum" runat="server" Visible="false" />
                <asp:Label Font-Bold="True" ID="lblDate" runat="server" />
            </td>
        </tr>
        <tr>
            <td style="text-align: center; width: 410px;" >
                <asp:DataGrid ID="dgSchedule" runat="server" Width="410px" SkinID="DataGrid" OnItemDataBound="dgSchedule_OnItemDataBound" >
                    <Columns>
                       
                        <asp:BoundColumn DataField="Date" Visible="false" /> 
                       
                        <asp:TemplateColumn>
                            <ItemTemplate>
                                <asp:Hyperlink ID="hyplTeamA" NavigateUrl='<%# DataBinder.Eval(Container, "DataItem.AwayURL") %>' Text='<%# DataBinder.Eval(Container, "DataItem.AwayTeam") %>' runat="server" />
                            </ItemTemplate>
                            <HeaderTemplate>
                                AWAY
                            </HeaderTemplate>
                            <ItemStyle Width="120px" />
                        </asp:TemplateColumn>


                        <asp:BoundColumn DataField="A" HeaderText="Pts" ItemStyle-Width="35px" />
                        
                         <asp:TemplateColumn>
                            <ItemTemplate>
                                <asp:Hyperlink ID="hyplTeamH" NavigateUrl='<%# DataBinder.Eval(Container, "DataItem.HomeURL") %>' Text='<%# DataBinder.Eval(Container, "DataItem.HomeTeam") %>' runat="server" />
                            </ItemTemplate>
                            <HeaderTemplate>
                                HOME
                            </HeaderTemplate>
                            <ItemStyle Width="120px" />
                        </asp:TemplateColumn>


                        <asp:BoundColumn DataField="H" HeaderText="Pts" ItemStyle-Width="35px"  />
                        
                        <asp:TemplateColumn>
                            <ItemStyle Width="100px" />
                            <HeaderStyle Width="100px" />
                            <HeaderTemplate>
                                Score Sheet
                            </HeaderTemplate>
                            <ItemTemplate>
                                <asp:HyperLink ID="hyplScoreSheet" Text="View" runat="server" ></asp:HyperLink>
                            </ItemTemplate>
                        </asp:TemplateColumn>
                    </Columns>
                </asp:DataGrid>
            </td>
        </tr>
    </table>

    </ItemTemplate>
    
</asp:DataList>
