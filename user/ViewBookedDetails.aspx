﻿<%@ Page Title="" Language="C#" MasterPageFile="~/user/UserMasterPage.master" AutoEventWireup="true" CodeFile="ViewBookedDetails.aspx.cs" Inherits="user_ViewBookedDetails" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <style type="text/css">

        .Star
        {
            background-image: url(../images/Star.gif);
            height: 17px;
            width: 17px;
        }
        .WaitingStar
        {
            background-image: url(../images/WaitingStar.gif);
            height: 17px;
            width: 17px;
        }
        .FilledStar
        {
            background-image: url(../images/FilledStar.gif);
            height: 17px;
            width: 17px;
        }
    </style>
    <table style="width:100%;">
        <tr>
            <td colspan="3">
                <asp:Label ID="Label1" runat="server" Font-Bold="False" Font-Size="Large" 
                    ForeColor="#006666" Text="Package Details"></asp:Label>
            </td>
        </tr>
        <tr valign="top">
            <td>
                <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" 
                    CellPadding="4" DataKeyNames="id" DataSourceID="SqlDataSource1" 
                    ForeColor="#333333" GridLines="None" Height="50px" Width="275px">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <CommandRowStyle BackColor="#E2DED6" Font-Bold="True" />
                    <EditRowStyle BackColor="#999999" />
                    <FieldHeaderStyle BackColor="#E9ECF1" Font-Bold="True" />
                    <Fields>
                        <asp:BoundField DataField="id" HeaderText="id" ReadOnly="True" 
                            SortExpression="id" />
                        <asp:BoundField DataField="pname" HeaderText="pname" SortExpression="pname" />
                        <asp:BoundField DataField="season" HeaderText="season" 
                            SortExpression="season" />
                        <asp:BoundField DataField="theme" HeaderText="theme" SortExpression="theme" />
                        <asp:BoundField DataField="duration" HeaderText="duration" 
                            SortExpression="duration" />
                        <asp:BoundField DataField="location" HeaderText="location" 
                            SortExpression="location" />
                        <asp:BoundField DataField="details" HeaderText="details" 
                            SortExpression="details" />
                        <asp:BoundField DataField="subpack" HeaderText="subpack" 
                            SortExpression="subpack" />
                        <asp:BoundField DataField="cost" HeaderText="cost" SortExpression="cost" />
                        <asp:BoundField DataField="photo" HeaderText="photo" SortExpression="photo" 
                            Visible="False" />
                        <asp:BoundField DataField="username" HeaderText="username" 
                            SortExpression="username" />
                    </Fields>
                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                </asp:DetailsView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:TRAVEL_RECConnectionString %>" 
                    SelectCommand="SELECT * FROM [Packages]"></asp:SqlDataSource>
            </td>
            <td>
                <asp:Image ID="Image2" runat="server" Height="300px" Width="300px" 
                    BorderColor="#FFCC00" BorderStyle="Solid" BorderWidth="1px" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="2">
                <hr color="Orange" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label2" runat="server" Font-Bold="False" Font-Size="Large" 
                    ForeColor="#990000" Text="Rating"></asp:Label>
            </td>
            <td>
                <cc1:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
                </cc1:ToolkitScriptManager>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label3" runat="server" Font-Bold="True" ForeColor="#3366CC" 
                      Text="Location"></asp:Label>
            </td>
            <td>
                <cc1:Rating ID="Rating1" AutoPostBack="true" OnChanged="OnRatingChanged" runat="server"
        StarCssClass="Star" WaitingStarCssClass="WaitingStar" EmptyStarCssClass="Star"
        FilledStarCssClass="FilledStar">
                </cc1:Rating>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label4" runat="server" Font-Bold="True" ForeColor="#3366CC" 
                    Text="Cost"></asp:Label>
            </td>
            <td>
                <cc1:Rating ID="Rating2" runat="server" AutoPostBack="true" 
                    EmptyStarCssClass="Star" FilledStarCssClass="FilledStar" 
                    OnChanged="OnRatingChanged" StarCssClass="Star" 
                    WaitingStarCssClass="WaitingStar">
                </cc1:Rating>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label5" runat="server" Font-Bold="True" ForeColor="#3366CC" 
                    Text="Service"></asp:Label>
            </td>
            <td>
                <cc1:Rating ID="Rating3" runat="server" AutoPostBack="true" 
                    EmptyStarCssClass="Star" FilledStarCssClass="FilledStar" 
                    OnChanged="OnRatingChanged" StarCssClass="Star" 
                    WaitingStarCssClass="WaitingStar">
                </cc1:Rating>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblmsg" runat="server" Text="test" Visible="False"></asp:Label>
            </td>
            <td>
                <asp:HiddenField ID="hfStatus" runat="server" />
                <asp:HiddenField ID="hfusername" runat="server" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                <asp:SqlDataSource ID="SqlDataInsertBook" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:TRAVEL_RECConnectionString %>" 
                    DeleteCommand="DELETE FROM [Booking] WHERE [id] = @id" 
                    InsertCommand="INSERT INTO [Booking] ([username], [pid]) VALUES (@username, @pid)" 
                    SelectCommand="SELECT * FROM [Booking]" 
                    UpdateCommand="UPDATE [Booking] SET [username] = @username, [pid] = @pid WHERE [id] = @id">
                    <DeleteParameters>
                        <asp:Parameter Name="id" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:SessionParameter Name="username" SessionField="userid" Type="String" />
                        <asp:QueryStringParameter Name="pid" QueryStringField="id" Type="Int32" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="username" Type="String" />
                        <asp:Parameter Name="pid" Type="Int32" />
                        <asp:Parameter Name="id" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
                <asp:Button ID="btnFeedback" runat="server" Text="Feedback" 
                    onclick="btnFeedback_Click" class="btn-style hvr-shrink" />
            &nbsp;
                <asp:Button ID="btnCancel" runat="server" onclick="btnCancel_Click" 
                    Text="Cancel Booking" class="btn-style hvr-shrink" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

