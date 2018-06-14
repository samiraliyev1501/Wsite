<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="page">   
        <div class="pageHeadArea" style="background-color:gold; color:dimgray">
            <i class="fa fa-home" style="font-size:35px; float:left;margin-right:10px;margin-left:10px;"></i>
            Ana səhifə
        </div>
        <div style="display:block;width:98%; height:250px; margin-top:20px;margin-left:1%; margin-bottom:40px; display:flex">
            <div class="pageslot" style="background-color:limegreen">
                <div class="slottoparea">
                    <div class="slotSphare"><i class="fa fa-columns" style="font-size:60px;color:limegreen; padding:20px 22px 20px 22px;"></i></div>
                    <a href="Pages.aspx"><div class="slotText">Səhifə sayı</div></a>
                    <asp:Label ID="PN" runat="server" Text="0" CssClass="slotTxtNumber"></asp:Label>
                </div> 
            </div>
            <div class="pageslot" style="background-color:darkorange">
                <div class="slottoparea">
                    <div class="slotSphare"><i class="fa fa-users" style="font-size:60px;color:darkorange; padding:20px"></i></div>
                    <a href="Users.aspx"><div class="slotText">Şəxslər</div></a>
                    <asp:Label ID="UN" runat="server" Text="0" CssClass="slotTxtNumber"></asp:Label>
                </div>                
            </div>
            <div class="pageslot" style="background-color:mediumslateblue">
                <div class="slottoparea">
                    <div class="slotSphare"><i class="fa fa-database" style="font-size:60px;color:mediumslateblue; padding:20px 24px 20px 24px"></i></div>
                    <a href="Database.aspx"><div class="slotText">Database sayı</div></a>
                    <asp:Label ID="DN" runat="server" Text="" CssClass="slotTxtNumber"></asp:Label>
                </div>                
            </div>
        </div>
    </div>
</asp:Content>

