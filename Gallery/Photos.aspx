<%@ Page Title="Ocean City Pool Leagues - Photo Gallery" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Photos.aspx.cs" Inherits="Photos" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <div>
    <br />
    <h2><u>Select a Gallery From The List Below</u></h2>
    <table width="100%">
        <tr>
            <td class="content">
                <asp:HyperLink NavigateUrl="~/Gallery/Oct242011CorkBar.aspx" Text="Cork Bar (10/24/2011)" ID="hyplOct242011CorkBar" runat="server" />
                <br />
                <br />
                <asp:HyperLink NavigateUrl="~/Gallery/Oct31SteerInn.aspx" Text="Steer Inn Tavern (10/31/2011)" ID="hyplOct312011SteerInn" runat="server" />
                <br />
                <br />
                <asp:HyperLink NavigateUrl="~/Gallery/Nov142011SteerInn.aspx" Text="Steer Inn Tavern (11/14/2011)" ID="hyplNov142011SteerInn" runat="server" />
                <br />
                <br />
                <asp:HyperLink NavigateUrl="~/Gallery/Feb072012CorkBar.aspx" Text="Cork Bar (02/07/2012)" ID="hyplFeb072012CorkBar" runat="server" />
                 <br />
                <br />
                <asp:HyperLink NavigateUrl="~/Gallery/Feb262013CorkBar.aspx" Text="Cork Bar (02/26/2013)" ID="hyplFeb262013CorkBar" runat="server" />
                 <br />
                <br />
                <asp:HyperLink NavigateUrl="~/Gallery/Mar192013Pickles.aspx" Text="Pickles Pub (03/19/2013)" ID="hyplMar192013Pickles" runat="server" />
                 <br />
                <br />
                <asp:HyperLink NavigateUrl="~/Gallery/Mar262013CorkBar.aspx" Text="Cork Bar (03/26/2013)" ID="hyplMar262013CorkBar" runat="server" />
            </td>
        </tr>
    </table>

    </div>

</asp:Content>

