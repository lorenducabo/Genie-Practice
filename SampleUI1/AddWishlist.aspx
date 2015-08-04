<%@ Page Title="" Language="C#" MasterPageFile="~/User.master" AutoEventWireup="true" CodeFile="AddWishlist.aspx.cs" Inherits="AddWishlist" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" Runat="Server">
    Add a Wishlist
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="content" Runat="Server">
     <form id="Form1" runat="server" class="form-horizontal">

         <h2>Please fill in the details needed.</h2>
         <br />

         <div class="col-lg-6">

             <div class="form-group">
                <label class="control-label col-lg-5">Wishlist Name</label>
                <div class="col-lg-7">
            
                    <asp:Textbox ID="txtName" runat="server" class="form-control" />
                </div>
            </div>

             <div class="form-group">
                <label class="control-label col-lg-5">Description</label>
                <div class="col-lg-7">
            
                    <asp:Textbox ID="txtDesc" runat="server" class="form-control" />
                </div>
            </div>

         </div>

         <div class="form-group">
             <div class="col-lg-offset-4 col-lg-8">
             <asp:LinkButton ID="btnAddWishlist" runat="server" class="btn btn-success" Text="Add a Wishlist" 
                 OnClick="btnAddWishlist_Click">
                 <i class="fa fa-plus"></i> Add a Wishlist
                 </asp:LinkButton>
                 </div>
                 
         </div>

         </form>
</asp:Content>

