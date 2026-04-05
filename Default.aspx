<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table width="100%">
        <tr>
            <td class="content">
                <span style="font-size: 22pt; font-weight: bold;"> Welcome to www.oc8ball.com!</span>
            </td>
        </tr>
        <tr>
            <td class="content">
                <b>The web site where the local pool scene is covered!</b>
                <br />
                <br />
                <%--<p>
                    <b>Winter / Spring 2015 Leagues starts January 13<sup>th</sup>.  Here are the important dates.</b>
                    <br />
                    <br />
                    <b>Tuesday, Jan 6<sup>th</sup>: </b> Deadline to enter team into fall league.
                    <br />
                    <b>Sunday, Jan 11<sup>th</sup> </b> Pre-season meeting @ Pickles @ 7 PM
                    <br />
                    <b>Tuesday, Jan 13<sup>th</sup>: </b> First week of matches begins.  Leagues starts at 7 PM.
                </p>
                <br />
                <br />--%>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Image runat="server" ID="imgFront" ImageUrl="~/Images/balls/superpro400.jpg" />
            </td>
        </tr>
    </table>

</asp:Content>

