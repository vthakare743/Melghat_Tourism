﻿<%@ Page Title="" Language="C#" MasterPageFile="~/user/UserMasterPage.master" AutoEventWireup="true" CodeFile="SearchCost.aspx.cs" Inherits="user_SearchCost" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width:100%;">
        <tr class="tbl-header">
            <td class="inner-head">
    <asp:Image ID="Image2" runat="server" Height="20px" 
           ImageUrl="~/web_img/blinking.gif" Width="36px" />
    <asp:Label ID="Label1" runat="server" Text="Recommanded Package By Cost"></asp:Label>
                </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                        <asp:Panel ID="Panel1" runat="server" Height="500px" ScrollBars="Both" 
                            Width="95%">
                            <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource1" 
                        AutoGenerateColumns="False" CellPadding="4" DataKeyNames="id" 
                        ForeColor="#333333" GridLines="None" Width="100%">
                                <AlternatingRowStyle BackColor="White" />
                                <Columns>
                                    <asp:BoundField DataField="id" HeaderText="id" ReadOnly="True" 
                            SortExpression="id" />
                                    <asp:BoundField DataField="pname" HeaderText="pname" SortExpression="pname" />
                                    <asp:BoundField DataField="duration" HeaderText="duration" 
                                    SortExpression="duration" />
                                    <asp:BoundField DataField="location" HeaderText="location" 
                            SortExpression="location" />
                                    <asp:BoundField DataField="cost" HeaderText="cost" 
                            SortExpression="cost" />
                                    <asp:BoundField DataField="photo" HeaderText="photo" SortExpression="photo" 
                                    Visible="False" />
                                    <asp:BoundField DataField="username" HeaderText="username" 
                                    SortExpression="username" Visible="False" />
                                    <asp:TemplateField>
                                        <ItemTemplate>
                                            <img src='../Admin/package_photos/<%#Eval("photo") %>' width="150px" height="150px" />
                                            <br />
                                            <a href='ViewDetails.aspx?id=<%#Eval("id") %>' >View Details </a>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                </Columns>
                                <EditRowStyle BackColor="#7C6F57" />
                                <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                                <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                                <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                                <RowStyle BackColor="#E3EAEB" />
                                <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                                <SortedAscendingCellStyle BackColor="#F8FAFA" />
                                <SortedAscendingHeaderStyle BackColor="#246B61" />
                                <SortedDescendingCellStyle BackColor="#D4DFE1" />
                                <SortedDescendingHeaderStyle BackColor="#15524A" />
                            </asp:GridView>
                        </asp:Panel>
    
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
           ConnectionString="<%$ ConnectionStrings:TRAVEL_RECConnectionString %>" 
           
            
                    SelectCommand="SELECT [id], [pname], [duration], [location], [cost], [photo], [username] FROM [Packages] ORDER BY [cost]">
    </asp:SqlDataSource>

            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

