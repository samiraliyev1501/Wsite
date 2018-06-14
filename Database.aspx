<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Database.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="page">   
        <div class="pageHeadArea" style="background-color:mediumslateblue; color:white">
            <i class="fa fa-database" style="font-size:35px; float:left;margin-right:10px;margin-left:10px;"></i>
            Database
        </div>
        <div>
            <div class="DBlist">
                <div class="DBlistHText">Database</div>
                <div class="DBlistArea">
                    <asp:ListView ID="DBList" runat="server">
                        <ItemTemplate>
                            <div class="DBlistSlot">
                                <asp:Label ID="Label1" runat="server" Text='<%#Eval("ID") %>' CssClass="DBlistSlotText"></asp:Label>
                                <asp:Label ID="DBName" runat="server" Text='<%#Eval("Name") %>' CssClass="DBlistSlotText"></asp:Label>
                                <a href="Database.aspx" class="DBlistSlotBtns">Bax</a>
                                <a href="Database.aspx?d_id=<%#Eval("ID") %>&d_is=sil" class="DBlistSlotBtns">Sil</a>
                                <a href="Database.aspx" class="DBlistSlotBtns">Dəyiş</a>
                            </div>
                        </ItemTemplate>
                    </asp:ListView>
                </div>   
                <asp:Label ID="Msg" runat="server" CssClass="message" Text=""></asp:Label>
            </div>
            <div class="DBMenu">
                <div style="margin:20px; float:left;">
                    <div class="DBText">DB adı</div>
                    <asp:TextBox ID="DBName" runat="server" CssClass="DBTBox"></asp:TextBox>
                </div>
            </div>
            <div class="DBBtnPanel">
                <asp:Button ID="DeleteDB" runat="server" CssClass="DBBPBtns" Text="DB sil -" OnClick="DeleteDB_Click"/>
                <asp:Button ID="NewDB" runat="server" CssClass="DBBPBtns" Text="Yeni DB +" OnClick="NewDB_Click"/>
                <div>
                    <asp:TextBox ID="SearchDB" runat="server" CssClass="DBBPSearch" TextMode="Search"></asp:TextBox>
                    <asp:Button ID="DBSBtn" runat="server" CssClass="DBBPSearchBtn" Text="Axtar" />
                </div>
                <div>
                    <asp:TextBox ID="SearchDBid" runat="server" CssClass="DBBPSearch" Width="100px" TextMode="Number"></asp:TextBox>
                    <asp:Button ID="DBSIdBtn" runat="server" CssClass="DBBPSearchBtn" Text="ID axtar" />
                </div>
            </div>
        </div>
    </div>
</asp:Content>

